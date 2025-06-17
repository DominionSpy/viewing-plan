package org.dominionspy.viewingplan.views.planner;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.dominionspy.viewingplan.domain.Episode;
import org.dominionspy.viewingplan.domain.EpisodeService;
import org.dominionspy.viewingplan.domain.Settings;
import org.dominionspy.viewingplan.domain.SettingsService;
import org.dominionspy.viewingplan.domain.Tag;

import com.vaadin.flow.component.Unit;
import com.vaadin.flow.component.checkbox.CheckboxGroup;
import com.vaadin.flow.component.combobox.MultiSelectComboBox;
import com.vaadin.flow.component.grid.Grid;
import com.vaadin.flow.component.grid.GridVariant;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Span;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.component.radiobutton.RadioButtonGroup;
import com.vaadin.flow.data.provider.Query;
import com.vaadin.flow.data.renderer.ComponentRenderer;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.PreserveOnRefresh;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.auth.AnonymousAllowed;

import static org.dominionspy.viewingplan.domain.Episode.TAG_BEST;
import static org.dominionspy.viewingplan.domain.Episode.TAG_ESSENTIAL;

@PageTitle("Planner")
@Route(value = "")
@PreserveOnRefresh
@AnonymousAllowed
public class PlannerView extends VerticalLayout {

    private static final String GENERAL_ALL = "All";
    private static final String GENERAL_BEST = "Best and Essential";
    private static final String GENERAL_ESSENTIAL = "Just Essential";
    private static final String GENERAL_NONE = "None";

    private static final String[] TAG_COLORS = new String[] {
            "red", "green", "yellow", "blue", "orange",
            "purple", "cyan", "magenta", "lime", "pink",
            "teal", "lavender", "brown", "beige", "maroon",
            "mint", "olive", "coral", "navy", "grey"
    };

    private final transient EpisodeService episodeService;

    public PlannerView(EpisodeService episodeService) {
        this.episodeService = episodeService;

        List<Settings> settings = SettingsService.getSettings();

        CheckboxGroup<String> seriesGroup = new CheckboxGroup<>();
        seriesGroup.setLabel("Series");
        List<String> series = episodeService.getSeries();
        seriesGroup.setItems(series);
        seriesGroup.setValue(settings.stream()
                .map(Settings::series)
                .collect(Collectors.toSet()));
        add(seriesGroup);

        series.forEach(s -> {
            VerticalLayout layout = createSeries(s);
            layout.setVisible(seriesGroup.getValue().contains(s));
            seriesGroup.addValueChangeListener(event -> layout.setVisible(event.getValue().contains(s)));
            add(layout);
        });
    }

    private VerticalLayout createSeries(String series) {
        Settings settings = SettingsService.getSettingsBySeries(series);

        VerticalLayout seriesLayout = new VerticalLayout();
        seriesLayout.setPadding(false);
        seriesLayout.setSpacing(false);
        seriesLayout.setWidth(100, Unit.PERCENTAGE);
        seriesLayout.add(new H2(series));

        RadioButtonGroup<String> generalGroup = new RadioButtonGroup<>();
        generalGroup.setItems(GENERAL_ALL, GENERAL_BEST, GENERAL_ESSENTIAL, GENERAL_NONE);
        generalGroup.setValue(settings != null ? settings.general() : GENERAL_ESSENTIAL);
        seriesLayout.add(generalGroup);

        List<String> seriesTags = episodeService.getTagsBySeries(series);
        MultiSelectComboBox<String> tagSelect = new MultiSelectComboBox<>();
        tagSelect.setVisible(!seriesTags.isEmpty() && !generalGroup.getValue().equals(GENERAL_ALL));
        tagSelect.setLabel("Tags");
        tagSelect.setAutoExpand(MultiSelectComboBox.AutoExpandMode.BOTH);
        tagSelect.setClassNameGenerator(this::getTagColor);
        tagSelect.setItems(seriesTags);
        tagSelect.setValue(settings != null ? settings.tags() : Set.of());
        seriesLayout.add(tagSelect);

        HorizontalLayout seasonsLayout = new HorizontalLayout();
        seasonsLayout.setWidthFull();
        episodeService.getSeasonsBySeries(series).forEach(season -> {
            Grid<Episode> seasonGrid = new Grid<>(Episode.class, false);
            seasonGrid.setEmptyStateText("No episodes");
            seasonGrid.addThemeVariants(GridVariant.LUMO_COMPACT);
            seasonGrid.setAllRowsVisible(true);
            seasonGrid.addColumn(Episode::getNumber).setHeader("#").setWidth("2.2rem").setFlexGrow(0);
            seasonGrid.addColumn(new ComponentRenderer<>(episode1 -> {
                        Div content = new Div();
                        content.add(new Span(episode1.getTitle()));

                        List<Tag> tags = episode1.getTags();
                        if (tags != null) {
                            HorizontalLayout layout = new HorizontalLayout();
                            layout.setSpacing(false);
                            tags.forEach(tag -> {
                                String tagName = tag.getName();
                                Span tagSpan = new Span(tagName);
                                tagSpan.setVisible(tagName.equals(TAG_ESSENTIAL) ||
                                        tagName.equals(TAG_BEST) || tagSelect.getSelectedItems().contains(tagName));
                                tagSpan.addClassNames("badge", getTagColor(tagName));
                                layout.add(tagSpan);
                            });
                            content.add(layout);
                        }
                        return content;
                    }))
                    .setHeader("Title").setAutoWidth(true);
            seasonGrid.setItems(query -> {
                if (generalGroup.getValue().equals(GENERAL_ALL)) {
                    return episodeService
                            .getEpisodesBySeason(series, season)
                            .stream()
                            .skip(query.getOffset())
                            .limit(query.getLimit());
                }
                Set<String> combinedTags = new HashSet<>(tagSelect.getSelectedItems());
                if (generalGroup.getValue().equals(GENERAL_BEST)) {
                    combinedTags.add(TAG_BEST);
                    combinedTags.add(TAG_ESSENTIAL);
                } else if (generalGroup.getValue().equals(GENERAL_ESSENTIAL)) {
                    combinedTags.add(TAG_ESSENTIAL);
                }
                return episodeService
                        .getEpisodesBySeasonAndTags(series, season, combinedTags)
                        .stream()
                        .skip(query.getOffset())
                        .limit(query.getLimit());
            });

            generalGroup.addValueChangeListener(event -> {
                seasonGrid.getDataProvider().refreshAll();
                tagSelect.setVisible(tagSelect.getDataProvider().size(new Query<>()) > 0 &&
                        !generalGroup.getValue().equals(GENERAL_ALL));
            });
            tagSelect.addValueChangeListener(event -> seasonGrid.getDataProvider().refreshAll());

            VerticalLayout seasonLayout = new VerticalLayout();
            seasonLayout.setPadding(false);
            seasonLayout.setSpacing(false);
            seasonLayout.add(new H3(season));
            seasonLayout.add(seasonGrid);
            seasonsLayout.add(seasonLayout);
        });
        seriesLayout.add(seasonsLayout);

        return seriesLayout;
    }

    private String getTagColor(String tag) {
        if (tag.equals(TAG_ESSENTIAL)) {
            return "white";
        }
        if (tag.equals(TAG_BEST)) {
            return "black";
        }
        int index = episodeService.getTags().stream()
                .filter(t -> !t.equals(TAG_ESSENTIAL) && !t.equals(TAG_BEST))
                .toList()
                .indexOf(tag) % TAG_COLORS.length;
        return TAG_COLORS[index];
    }
}

