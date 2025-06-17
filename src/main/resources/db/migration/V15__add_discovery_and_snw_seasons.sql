-- Version: 15
-- Add seasons for Discovery and Strange New Worlds

-- Add Discovery seasons
INSERT INTO season (series_id, name, air_date) VALUES
    ((SELECT id FROM series WHERE name = 'Discovery'), 'Season 1', '2017-09-24'),
    ((SELECT id FROM series WHERE name = 'Discovery'), 'Season 2', '2019-01-17'),
    ((SELECT id FROM series WHERE name = 'Discovery'), 'Season 3', '2020-10-15'),
    ((SELECT id FROM series WHERE name = 'Discovery'), 'Season 4', '2021-11-18'),
    ((SELECT id FROM series WHERE name = 'Discovery'), 'Season 5', '2024-04-04');

-- Add Strange New Worlds seasons
INSERT INTO season (series_id, name, air_date) VALUES
    ((SELECT id FROM series WHERE name = 'Strange New Worlds'), 'Season 1', '2022-05-05'),
    ((SELECT id FROM series WHERE name = 'Strange New Worlds'), 'Season 2', '2023-06-15'),
    ((SELECT id FROM series WHERE name = 'Strange New Worlds'), 'Season 3', '2024-05-30');
