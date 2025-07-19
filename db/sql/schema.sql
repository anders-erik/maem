-- PostgreSQL schema for species, common names, and images

CREATE TABLE IF NOT EXISTS species (
    id SERIAL PRIMARY KEY,
    col_id TEXT NOT NULL UNIQUE,
    latin_name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS common_names (
    id SERIAL PRIMARY KEY,
    species_col_id TEXT NOT NULL REFERENCES species(col_id) ON DELETE CASCADE,
    language TEXT NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS images (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    species_col_id TEXT NOT NULL REFERENCES species(col_id) ON DELETE CASCADE,
    path TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index for faster lookup of common names by species
CREATE INDEX IF NOT EXISTS idx_common_names_species_col_id ON common_names(species_col_id);
-- Index for faster lookup of images by species
CREATE INDEX IF NOT EXISTS idx_images_species_col_id ON images(species_col_id);
