-- Version: 20
-- Add character and theme tags for Enterprise, Discovery, and Strange New Worlds episodes

INSERT INTO episode_tag (episode_id, tag_id) VALUES
    -- Enterprise Season 1 character and theme tags
    -- "Broken Bow" - Enterprise pilot focuses on Archer and Vulcans
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Archer')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "The Andorian Incident" - First major Andorian episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Andorians')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "Cold Front" - Early Temporal Cold War episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 11), (SELECT id FROM tag WHERE name = 'Temporal Cold War')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 11), (SELECT id FROM tag WHERE name = 'Suliban')),

    -- "Shuttlepod One" - Tucker and Reed focused episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 16), (SELECT id FROM tag WHERE name = 'Tucker')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 16), (SELECT id FROM tag WHERE name = 'Reed')),

    -- "Detained" - Suliban focused episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 21), (SELECT id FROM tag WHERE name = 'Suliban')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 21), (SELECT id FROM tag WHERE name = 'Mayweather')),

    -- "Shockwave" - Temporal Cold War season finale
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 26), (SELECT id FROM tag WHERE name = 'Temporal Cold War')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 1' AND ep.number = 26), (SELECT id FROM tag WHERE name = 'Time Travel')),

-- Enterprise Season 2 character and theme tags
    -- "Carbon Creek" - T'Pol and Vulcan focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'T''Pol')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "Future Tense" - Temporal Cold War
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 16), (SELECT id FROM tag WHERE name = 'Temporal Cold War')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 16), (SELECT id FROM tag WHERE name = 'Time Travel')),

    -- "The Seventh" - T'Pol focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'T''Pol')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "Stigma" - Phlox and T'Pol focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 14), (SELECT id FROM tag WHERE name = 'Phlox')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 2' AND ep.number = 14), (SELECT id FROM tag WHERE name = 'T''Pol')),

-- Enterprise Season 3 Xindi arc
    -- "The Xindi" - Start of the Xindi arc
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Xindi')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Archer')),

    -- "Azati Prime" - Major Xindi arc episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 18), (SELECT id FROM tag WHERE name = 'Xindi')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 18), (SELECT id FROM tag WHERE name = 'Time Travel')),

    -- "Damage" - Tucker focused in Xindi arc
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 19), (SELECT id FROM tag WHERE name = 'Tucker')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 19), (SELECT id FROM tag WHERE name = 'Xindi')),

    -- "Zero Hour" - Xindi arc conclusion
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 24), (SELECT id FROM tag WHERE name = 'Xindi')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 3' AND ep.number = 24), (SELECT id FROM tag WHERE name = 'Temporal Cold War')),

-- Enterprise Season 4 notable episodes
    -- "Home" - T'Pol and Vulcan episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'T''Pol')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "The Forge" - Vulcan arc
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Vulcan')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'T''Pol')),

    -- "In a Mirror, Darkly" - Mirror universe
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 18), (SELECT id FROM tag WHERE name = 'Mirror')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 19), (SELECT id FROM tag WHERE name = 'Mirror')),

    -- "These Are the Voyages" - Series finale
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 22), (SELECT id FROM tag WHERE name = 'Enterprise Origins')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Enterprise' AND s.name = 'Season 4' AND ep.number = 22), (SELECT id FROM tag WHERE name = 'Archer')),

-- Discovery Season 1 character and theme tags
    -- "The Vulcan Hello" / "Battle at the Binary Stars" - Burnham origin
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Burnham')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Burnham')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Georgiou')),

    -- "Context is for Kings" - Spore drive introduction
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Spore Drive')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Stamets')),

    -- "The Butcher's Knife Cares Not for the Lamb's Cry" - Tardigrade episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Tardigrades')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Spore Drive')),

    -- "Vaulting Ambition" - Mirror universe reveal
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 12), (SELECT id FROM tag WHERE name = 'Mirror')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 12), (SELECT id FROM tag WHERE name = 'Georgiou')),

    -- "Will You Take My Hand?" - Season finale
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 15), (SELECT id FROM tag WHERE name = 'L''Rell')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 1' AND ep.number = 15), (SELECT id FROM tag WHERE name = 'Section 31')),

-- Discovery Season 2 character and theme tags
    -- "Brother" - Pike introduction
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Pike')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Red Angel')),

    -- "Saints of Imperfection" - Mycelial network focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Mycelial Network')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Stamets')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Culber')),

    -- "If Memory Serves" - Spock focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'Spock')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'Pike')),

    -- "Project Daedalus" - Section 31 focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Section 31')),

    -- "The Red Angel" - Red Angel reveal
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Red Angel')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Time Travel')),

    -- "Such Sweet Sorrow" - Season finale, time jump setup
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Time Travel')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 2' AND ep.number = 14), (SELECT id FROM tag WHERE name = 'Time Jump')),

-- Discovery Season 3 character and theme tags
    -- "That Hope Is You" - 32nd century arrival
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Time Jump')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Burnham')),

    -- "People of Earth" - Discovery reunites with Earth
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Federation Rebirth')),

    -- "Forget Me Not" - Adira focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Adira')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Gray')),

    -- "Unification III" - Vulcan and Romulan unification
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Vulcan')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Burnham')),

    -- "Terra Firma" - Mirror universe and Georgiou focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Mirror')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Georgiou')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Mirror')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Georgiou')),

    -- "That Hope is You, Part 2" - Season finale
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Federation Rebirth')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 3' AND ep.number = 13), (SELECT id FROM tag WHERE name = 'Saru')),

-- Discovery Season 4 character and theme tags
    -- Select key episodes with major character focus
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Tilly')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Starfleet Academy')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Book')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 12), (SELECT id FROM tag WHERE name = 'Burnham')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 4' AND ep.number = 12), (SELECT id FROM tag WHERE name = 'Culber')),

-- Discovery Season 5 character and theme tags
    -- Important episodes from Season 5
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Mirror')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Burnham')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Burnham')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Discovery' AND s.name = 'Season 5' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Section 31')),

-- Strange New Worlds Season 1 character and theme tags
    -- "Strange New Worlds" - Pike focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Pike')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Enterprise Origins')),

    -- "Children of the Comet" - Uhura focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Uhura')),

    -- "Ghosts of Illyria" - M'Benga and Una focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'M''Benga')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Una')),

    -- "Memento Mori" - La'an and Gorn focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'La''an')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Gorn')),

    -- "Spock Amok" - Spock and T'Pring focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Spock')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "The Serene Squall" - Spock focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Spock')),

    -- "The Elysian Kingdom" - M'Benga focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'M''Benga')),

    -- "All Those Who Wander" - Gorn horror episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Gorn')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Hemmer')),

    -- "A Quality of Mercy" - Pike and alternate timeline
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Pike')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Time Travel')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 1' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Spock')),

-- Strange New Worlds Season 2 character and theme tags
    -- "The Broken Circle" - Season premiere
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Pike')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'La''an')),

    -- "Ad Astra per Aspera" - Una trial episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Una')),

    -- "Tomorrow and Tomorrow and Tomorrow" - La'an and time travel
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'La''an')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Time Travel')),

    -- "Among the Lotus Eaters" - Pike focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Pike')),

    -- "Charades" - Spock focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Spock')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 5), (SELECT id FROM tag WHERE name = 'Chapel')),

    -- "Lost in Translation" - Uhura focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 6), (SELECT id FROM tag WHERE name = 'Uhura')),

    -- "Those Old Scientists" - Crossover with Lower Decks
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 7), (SELECT id FROM tag WHERE name = 'Time Travel')),

    -- "Under the Cloak of War" - Chapel and medical focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 8), (SELECT id FROM tag WHERE name = 'Chapel')),

    -- "Subspace Rhapsody" - Musical episode
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 9), (SELECT id FROM tag WHERE name = 'Musical')),

    -- "Hegemony" - Gorn focused season finale
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Gorn')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 2' AND ep.number = 10), (SELECT id FROM tag WHERE name = 'Pike')),

-- Strange New Worlds Season 3 character and theme tags (partial season)
    -- "The Lost Colony" - Season premiere
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 1), (SELECT id FROM tag WHERE name = 'Pike')),

    -- "Frontier Medicine" - Chapel focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 2), (SELECT id FROM tag WHERE name = 'Chapel')),

    -- "Legacy" - Spock and Vulcan focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Spock')),
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 3), (SELECT id FROM tag WHERE name = 'Vulcan')),

    -- "The Traitor Within" - Ortegas focused
    ((SELECT ep.id FROM episode ep JOIN season s ON ep.season_id = s.id JOIN series sr ON s.series_id = sr.id WHERE sr.name = 'Strange New Worlds' AND s.name = 'Season 3' AND ep.number = 4), (SELECT id FROM tag WHERE name = 'Ortegas'))

-- Add ON CONFLICT clause to prevent duplicate entries
ON CONFLICT (episode_id, tag_id) DO NOTHING;
