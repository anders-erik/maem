-- PostgreSQL schema for species, common names, and images

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    latin_name TEXT NOT NULL UNIQUE
);

CREATE TABLE common_names (
    id SERIAL PRIMARY KEY,
    species_id INTEGER NOT NULL REFERENCES species(id) ON DELETE CASCADE,
    language TEXT NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE images (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    species_id INTEGER NOT NULL REFERENCES species(id) ON DELETE CASCADE,
    image_path TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index for faster lookup of common names by species
CREATE INDEX idx_common_names_species_id ON common_names(species_id);
-- Index for faster lookup of images by species
CREATE INDEX idx_images_species_id ON images(species_id);


-- Sample data
INSERT INTO species (latin_name) VALUES ('Pygoscelis adeliae');
INSERT INTO species (latin_name) VALUES ('Aptenodytes forsteri');

-- Assume species IDs 1 and 2 for the above
INSERT INTO common_names (species_id, language, name) VALUES (1, 'english', 'Adélie Penguin');
INSERT INTO common_names (species_id, language, name) VALUES (1, 'danish', 'Adeliepingvin');
INSERT INTO common_names (species_id, language, name) VALUES (2, 'english', 'Emperor Penguin');
INSERT INTO common_names (species_id, language, name) VALUES (2, 'french', 'Manchot empereur');

-- Images (use placeholder paths)
INSERT INTO images (id, species_id, image_path) VALUES (gen_random_uuid(), 1, '/tmp/adelie1.jpg');
INSERT INTO images (id, species_id, image_path) VALUES (gen_random_uuid(), 2, '/tmp/emperor1.jpg');
