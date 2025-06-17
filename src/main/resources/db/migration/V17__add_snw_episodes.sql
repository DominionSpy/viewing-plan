-- Version: 17
-- Add episodes for Star Trek: Strange New Worlds

-- Season 1 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 1, 'Strange New Worlds'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 2, 'Children of the Comet'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 3, 'Ghosts of Illyria'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 4, 'Memento Mori'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 5, 'Spock Amok'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 6, 'Lift Us Where Suffering Cannot Reach'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 7, 'The Serene Squall'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 8, 'The Elysian Kingdom'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 9, 'All Those Who Wander'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 1'), 10, 'A Quality of Mercy');

-- Season 2 Episodes
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 1, 'The Broken Circle'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 2, 'Ad Astra per Aspera'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 3, 'Tomorrow and Tomorrow and Tomorrow'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 4, 'Among the Lotus Eaters'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 5, 'Charades'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 6, 'Lost in Translation'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 7, 'Those Old Scientists'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 8, 'Under the Cloak of War'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 9, 'Subspace Rhapsody'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 2'), 10, 'Hegemony');

-- Season 3 Episodes (as of June 2025, episodes 1-4 have aired)
INSERT INTO episode (season_id, number, title) VALUES
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 3'), 1, 'The Lost Colony'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 3'), 2, 'Frontier Medicine'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 3'), 3, 'Legacy'),
    ((SELECT s.id FROM season s JOIN series se ON s.series_id = se.id WHERE se.name = 'Strange New Worlds' AND s.name = 'Season 3'), 4, 'The Traitor Within');
