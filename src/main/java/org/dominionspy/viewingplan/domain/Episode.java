package org.dominionspy.viewingplan.domain;

import java.util.List;

public record Episode(String series, String season, String episode, String title, List<String> tags) {

    public static String TAG_ESSENTIAL = "Essential";
    public static String TAG_BEST = "Best";
}
