package org.dominionspy.viewingplan.views.planner;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import jakarta.annotation.security.PermitAll;
import org.dominionspy.viewingplan.domain.Episode;
import org.dominionspy.viewingplan.domain.EpisodeService;
import org.dominionspy.viewingplan.domain.Settings;
import org.dominionspy.viewingplan.domain.SettingsService;

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
import com.vaadin.flow.router.RouteAlias;

import static org.dominionspy.viewingplan.domain.Episode.TAG_BEST;
import static org.dominionspy.viewingplan.domain.Episode.TAG_ESSENTIAL;

@PageTitle("Planner")
@Route(value = "")
@RouteAlias(value = "")
@PreserveOnRefresh
@PermitAll
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

    private static String getTagColor(String tag) {
        if (tag.equals(TAG_ESSENTIAL)) {
            return "white";
        }
        if (tag.equals(TAG_BEST)) {
            return "black";
        }
        int index = EpisodeService.getTags().stream()
                .filter(t -> !t.equals(TAG_ESSENTIAL) && !t.equals(TAG_BEST))
                .toList()
                .indexOf(tag) % TAG_COLORS.length;
        return TAG_COLORS[index];
    }

    public PlannerView() {
        List<Settings> settings = SettingsService.getSettings();

        CheckboxGroup<String> seriesGroup = new CheckboxGroup<>();
        seriesGroup.setLabel("Series");
        List<String> series = EpisodeService.getSeries();
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

        List<String> seriesTags = EpisodeService.getTagsBySeries(series);
        MultiSelectComboBox<String> tagSelect = new MultiSelectComboBox<>();
        tagSelect.setVisible(!seriesTags.isEmpty() && !generalGroup.getValue().equals(GENERAL_ALL));
        tagSelect.setLabel("Tags");
        tagSelect.setAutoExpand(MultiSelectComboBox.AutoExpandMode.BOTH);
        tagSelect.setClassNameGenerator(PlannerView::getTagColor);
        tagSelect.setItems(seriesTags);
        tagSelect.setValue(settings != null ? settings.tags() : Set.of());
        seriesLayout.add(tagSelect);

        HorizontalLayout seasonsLayout = new HorizontalLayout();
        seasonsLayout.setWidthFull();
        EpisodeService.getSeasonsBySeries(series).forEach(season -> {
            Grid<Episode> seasonGrid = new Grid<>(Episode.class, false);
            seasonGrid.addThemeVariants(GridVariant.LUMO_COMPACT);
            seasonGrid.setAllRowsVisible(true);
            seasonGrid.addColumn(Episode::episode).setHeader("#").setWidth("2.2rem").setFlexGrow(0);
            seasonGrid.addColumn(new ComponentRenderer<>(episode -> {
                        Div content = new Div();
                        content.add(new Span(episode.title()));

                        List<String> tags = episode.tags();
                        if (tags != null) {
                            HorizontalLayout layout = new HorizontalLayout();
                            layout.setSpacing(false);
                            tags.forEach(tag -> {
                                Span tagSpan = new Span(tag);
                                tagSpan.setVisible(tag.equals(TAG_ESSENTIAL) ||
                                        tag.equals(TAG_BEST) || tagSelect.getSelectedItems().contains(tag));
                                tagSpan.addClassNames("badge", getTagColor(tag));
                                layout.add(tagSpan);
                            });
                            content.add(layout);
                        }
                        return content;
                    }))
                    .setHeader("Title").setAutoWidth(true);
            seasonGrid.setItems(query -> {
                if (generalGroup.getValue().equals(GENERAL_ALL)) {
                    return EpisodeService
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
                return EpisodeService
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
}
