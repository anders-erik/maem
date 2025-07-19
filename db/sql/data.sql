-- DELETE FROM images *;
-- DELETE FROM common_names *;
-- DELETE FROM species *;


-- Sample data
INSERT INTO species (col_id, latin_name) VALUES ('FYD9', 'Aptenodytes forsteri');
INSERT INTO species (col_id, latin_name) VALUES ('67QCM', 'Aptenodytes patagonicus');

-- Assume species IDs 1 and 2 for the above
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'english', 'Emperor Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'french', 'Manchot empereur');
INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'english', 'King Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'french', 'Manchot royal');

-- Images (use placeholder paths)
INSERT INTO images (id, species_col_id, path) VALUES ('a87f07a7-8aef-4d27-a7e9-3cfeb1c4f8a8', 'FYD9', '/data/image/1-aptenodytes-forsteri.png');
INSERT INTO images (id, species_col_id, path) VALUES ('c9929b21-d109-46f6-9a8e-9c757678e454', '67QCM', '/data/image/2-aptenodytes-patagonicus.png');
-- INSERT INTO images (id, species_col_id, path) VALUES (gen_random_uuid(), '67QCM', '/data/image/2-aptenodytes-patagonicus.png');
