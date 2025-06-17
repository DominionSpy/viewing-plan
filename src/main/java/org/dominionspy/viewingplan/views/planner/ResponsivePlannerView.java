package org.dominionspy.viewingplan.views.planner;

import org.dominionspy.viewingplan.domain.EpisodeService;

import com.vaadin.flow.component.dashboard.Dashboard;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.PreserveOnRefresh;
import com.vaadin.flow.router.Route;
import com.vaadin.flow.server.auth.AnonymousAllowed;
import com.vaadin.flow.theme.lumo.Lumo;

@PageTitle("Responsive Planner")
@Route(value = "responsive")
@PreserveOnRefresh
@AnonymousAllowed
public class ResponsivePlannerView extends Div {

    public ResponsivePlannerView(EpisodeService episodeService) {
        super.getElement().setAttribute("theme", Lumo.DARK);

        Dashboard dashboard = new Dashboard();
        dashboard.setWidthFull();
        dashboard.setHeight("100vh");
        dashboard.setMaximumColumnCount(5);
        dashboard.setMinimumColumnWidth("200px");

        // Get series with their codes from the database
        episodeService.getSeriesWithCodes().forEach((seriesName, code) ->
                dashboard.add(new SeriesWidget(seriesName, "images/" + code + "-title.jpg")));

        add(dashboard);
    }
}
