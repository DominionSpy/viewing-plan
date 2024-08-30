package org.dominionspy.viewingplan.domain;

import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ClassPathResource;

public class EpisodeService {

    public static Episode[] getItems() {
        ObjectMapper mapper = new ObjectMapper();
        try {
            InputStream stream = new ClassPathResource("data/episodes.json")
                    .getInputStream();
            return mapper.readValue(stream, Episode[].class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new Episode[0];
    }

    public static List<String> getSeries() {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .map(Episode::series)
                .distinct()
                .toList();
    }

    public static List<String> getTags() {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .map(Episode::tags)
                .filter(Objects::nonNull)
                .flatMap(List::stream)
                .distinct()
                .sorted()
                .toList();
    }

    public static List<String> getTagsBySeries(String series) {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .filter(episode -> episode.series().equals(series))
                .map(Episode::tags)
                .filter(Objects::nonNull)
                .flatMap(List::stream)
                .distinct()
                .filter(tag -> !Objects.equals(tag, Episode.TAG_ESSENTIAL) && !Objects.equals(tag, Episode.TAG_BEST))
                .sorted()
                .toList();
    }

    public static List<String> getSeasonsBySeries(String series) {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .filter(episode -> episode.series().equals(series))
                .map(Episode::season)
                .distinct()
                .toList();
    }

    public static List<Episode> getEpisodesBySeason(String series, String season) {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .filter(episode -> episode.series().equals(series) && episode.season().equals(season))
                .toList();
    }

    public static List<Episode> getEpisodesBySeasonAndTags(String series, String season, Set<String> tags) {
        List<Episode> episodes = Arrays.asList(getItems());
        return episodes.stream()
                .filter(episode -> episode.series().equals(series) && episode.season().equals(season) &&
                        episode.tags() != null && !Collections.disjoint(episode.tags(), tags))
                .toList();
    }
}
