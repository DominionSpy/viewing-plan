-- Version: 19
-- Add Essential and Best tags for Discovery and Strange New Worlds episodes

INSERT INTO episode_tag (episode_id, tag_id) VALUES
    -- Discovery Season 1
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 15), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Discovery Season 2
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 14), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Discovery Season 3
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 11), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Discovery Season 4
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 12), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Discovery Season 5
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Strange New Worlds Season 1
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Strange New Worlds Season 2
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Essential')),

    -- Strange New Worlds Season 3 (partial season)
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Essential')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Best')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Essential'))

ON CONFLICT (episode_id, tag_id) DO NOTHING;
