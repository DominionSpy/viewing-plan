-- Version: 16
-- Add episodes for Star Trek: Discovery

-- Season 1 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 1, 'The Vulcan Hello'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 2, 'Battle at the Binary Stars'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 3, 'Context Is for Kings'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 4, 'The Butcher''s Knife Cares Not for the Lamb''s Cry'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 5, 'Choose Your Pain'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 6, 'Lethe'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 7, 'Magic to Make the Sanest Man Go Mad'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 8, 'Si Vis Pacem, Para Bellum'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 9, 'Into the Forest I Go'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 10, 'Despite Yourself'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 11, 'The Wolf Inside'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 12, 'Vaulting Ambition'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 13, 'What''s Past Is Prologue'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 14, 'The War Without, The War Within'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 1'), 15, 'Will You Take My Hand?');

-- Season 2 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 1, 'Brother'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 2, 'New Eden'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 3, 'Point of Light'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 4, 'An Obol for Charon'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 5, 'Saints of Imperfection'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 6, 'The Sound of Thunder'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 7, 'Light and Shadows'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 8, 'If Memory Serves'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 9, 'Project Daedalus'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 10, 'The Red Angel'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 11, 'Perpetual Infinity'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 12, 'Through the Valley of Shadows'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 13, 'Such Sweet Sorrow'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 2'), 14, 'Such Sweet Sorrow, Part 2');

-- Season 3 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 1, 'That Hope Is You, Part 1'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 2, 'Far From Home'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 3, 'People of Earth'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 4, 'Forget Me Not'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 5, 'Die Trying'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 6, 'Scavengers'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 7, 'Unification III'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 8, 'The Sanctuary'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 9, 'Terra Firma, Part 1'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 10, 'Terra Firma, Part 2'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 11, 'Su''Kal'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 12, 'There Is a Tide...'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 3'), 13, 'That Hope Is You, Part 2');

-- Season 4 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 1, 'Kobayashi Maru'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 2, 'Anomaly'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 3, 'Choose to Live'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 4, 'All Is Possible'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 5, 'The Examples'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 6, 'Stormy Weather'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 7, '...But to Connect'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 8, 'All In'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 9, 'Rubicon'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 10, 'The Galactic Barrier'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 11, 'Rosetta'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 12, 'Species Ten-C'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 4'), 13, 'Coming Home');

-- Season 5 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 1, 'Red Directive'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 2, 'Under the Twin Suns'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 3, 'Jinaal'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 4, 'Face the Strange'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 5, 'Mirrors'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 6, 'Whistlespeak'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 7, 'Erigah'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 8, 'Labyrinths'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 9, 'Lagrange Point'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Discovery' AND s.name = 'Season 5'), 10, 'The Emissary');
