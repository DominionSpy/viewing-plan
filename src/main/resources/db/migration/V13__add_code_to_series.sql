-- Version: 13
-- Add code column to the series table and populate with the three-character codes

-- Add the code column to the series table
ALTER TABLE series ADD COLUMN code VARCHAR(10);

-- Update the codes for each series
UPDATE series SET code = 'tos' WHERE name = 'The Original Series';
UPDATE series SET code = 'tng' WHERE name = 'The Next Generation';
UPDATE series SET code = 'ds9' WHERE name = 'Deep Space Nine';
UPDATE series SET code = 'voy' WHERE name = 'Voyager';
UPDATE series SET code = 'ent' WHERE name = 'Enterprise';
