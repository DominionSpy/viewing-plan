-- Version: 12
-- Add air_date column to the season table and populate with correct premiere dates

-- Add the air_date column to the season table
ALTER TABLE season ADD COLUMN air_date DATE;

-- Update air dates for The Original Series
UPDATE season SET air_date = '1966-09-08' WHERE series_id = (SELECT id FROM series WHERE name = 'The Original Series') AND name = 'Season 1';
UPDATE season SET air_date = '1967-09-15' WHERE series_id = (SELECT id FROM series WHERE name = 'The Original Series') AND name = 'Season 2';
UPDATE season SET air_date = '1968-09-20' WHERE series_id = (SELECT id FROM series WHERE name = 'The Original Series') AND name = 'Season 3';
UPDATE season SET air_date = '1979-12-07' WHERE series_id = (SELECT id FROM series WHERE name = 'The Original Series') AND name = 'Movies';

-- Update air dates for The Next Generation
UPDATE season SET air_date = '1987-09-28' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 1';
UPDATE season SET air_date = '1988-11-21' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 2';
UPDATE season SET air_date = '1989-09-25' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 3';
UPDATE season SET air_date = '1990-09-24' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 4';
UPDATE season SET air_date = '1991-09-23' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 5';
UPDATE season SET air_date = '1992-09-21' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 6';
UPDATE season SET air_date = '1993-09-20' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Season 7';
UPDATE season SET air_date = '1994-11-18' WHERE series_id = (SELECT id FROM series WHERE name = 'The Next Generation') AND name = 'Movies';

-- Update air dates for Deep Space Nine
UPDATE season SET air_date = '1993-01-03' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 1';
UPDATE season SET air_date = '1993-09-26' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 2';
UPDATE season SET air_date = '1994-09-26' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 3';
UPDATE season SET air_date = '1995-10-02' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 4';
UPDATE season SET air_date = '1996-09-30' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 5';
UPDATE season SET air_date = '1997-09-29' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 6';
UPDATE season SET air_date = '1998-09-30' WHERE series_id = (SELECT id FROM series WHERE name = 'Deep Space Nine') AND name = 'Season 7';

-- Update air dates for Voyager
UPDATE season SET air_date = '1995-01-16' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 1';
UPDATE season SET air_date = '1995-09-04' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 2';
UPDATE season SET air_date = '1996-09-04' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 3';
UPDATE season SET air_date = '1997-09-03' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 4';
UPDATE season SET air_date = '1998-10-14' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 5';
UPDATE season SET air_date = '1999-09-22' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 6';
UPDATE season SET air_date = '2000-10-04' WHERE series_id = (SELECT id FROM series WHERE name = 'Voyager') AND name = 'Season 7';

-- Update air dates for Enterprise
UPDATE season SET air_date = '2001-09-26' WHERE series_id = (SELECT id FROM series WHERE name = 'Enterprise') AND name = 'Season 1';
UPDATE season SET air_date = '2002-09-18' WHERE series_id = (SELECT id FROM series WHERE name = 'Enterprise') AND name = 'Season 2';
UPDATE season SET air_date = '2003-09-10' WHERE series_id = (SELECT id FROM series WHERE name = 'Enterprise') AND name = 'Season 3';
UPDATE season SET air_date = '2004-10-08' WHERE series_id = (SELECT id FROM series WHERE name = 'Enterprise') AND name = 'Season 4';
