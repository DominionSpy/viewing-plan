-- Version: 11
-- Add air_date column to the series table and populate with correct premiere dates

-- Add the air_date column to the series table
ALTER TABLE series ADD COLUMN air_date DATE;

-- Update the air dates for each series
UPDATE series SET air_date = '1966-09-08' WHERE name = 'The Original Series';
UPDATE series SET air_date = '1987-09-28' WHERE name = 'The Next Generation';
UPDATE series SET air_date = '1993-01-03' WHERE name = 'Deep Space Nine';
UPDATE series SET air_date = '1995-01-16' WHERE name = 'Voyager';
UPDATE series SET air_date = '2001-09-26' WHERE name = 'Enterprise';
