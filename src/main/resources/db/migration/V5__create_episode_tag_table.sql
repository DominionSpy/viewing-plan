-- Version: 5
-- Many-to-many join between episodes and tags
CREATE TABLE episode_tag (
     episode_id INTEGER NOT NULL
         REFERENCES episode(id)
             ON DELETE CASCADE,
     tag_id     INTEGER NOT NULL
         REFERENCES tag(id)
             ON DELETE CASCADE,
     PRIMARY KEY (episode_id, tag_id)
);
