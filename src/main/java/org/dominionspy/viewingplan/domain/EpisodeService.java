package org.dominionspy.viewingplan.domain;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class EpisodeService {

    private final EpisodeRepo episodeRepo;
    private final SeriesRepo seriesRepo;
    private final TagRepo tagRepo;

    public EpisodeService(EpisodeRepo episodeRepo, SeriesRepo seriesRepo,
            TagRepo tagRepo) {
        this.episodeRepo = episodeRepo;
        this.seriesRepo = seriesRepo;
        this.tagRepo = tagRepo;
    }

    public List<Episode> getAllEpisodes() {
        return episodeRepo.findAll();
    }

    public Episode getEpisodeById(Long id) {
        return episodeRepo.findById(id).orElse(null);
    }

    public List<String> getSeries() {
        return seriesRepo.findAll().stream()
                .map(Series::getName)
                .toList();
    }

    public List<String> getTags() {
        return tagRepo.findAll().stream()
                .map(Tag::getName)
                .sorted()
                .toList();
    }

    public List<String> getTagsBySeries(String series) {
        return seriesRepo.findByName(series).getSeasons().stream()
                .map(Season::getEpisodes)
                .flatMap(List::stream)
                .map(Episode::getTags)
                .filter(Objects::nonNull)
                .flatMap(List::stream)
                .map(Tag::getName)
                .distinct()
                .filter(tag -> !Objects.equals(tag, Episode.TAG_ESSENTIAL))
                .filter(tag -> !Objects.equals(tag, Episode.TAG_BEST))
                .sorted()
                .toList();
    }

    public List<String> getSeasonsBySeries(String series) {
        return seriesRepo.findByName(series).getSeasons().stream()
            .map(Season::getName)
            .toList();
    }

    public List<Episode> getEpisodesBySeason(String series, String season) {
        return seriesRepo.findByName(series).getSeasons().stream()
                .filter(s -> s.getName().equals(season))
                .map(Season::getEpisodes)
                .flatMap(List::stream)
                .sorted(Comparator.comparing(Episode::getNumber))
                .toList();
    }

    public List<Episode> getEpisodesBySeasonAndTags(String series, String season, Set<String> tags) {
        return seriesRepo.findByName(series).getSeasons().stream()
                .filter(s -> s.getName().equals(season))
                .map(Season::getEpisodes)
                .flatMap(List::stream)
                .filter(e -> e.getTags() != null)
                .filter(e -> !Collections.disjoint(e.getTags().stream().map(Tag::getName).toList(), tags))
                .sorted(Comparator.comparing(Episode::getNumber))
                .toList();
    }
}
