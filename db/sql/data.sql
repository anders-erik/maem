-- DELETE FROM images *;
-- DELETE FROM common_names *;
-- DELETE FROM species *;


-- All penguin species
INSERT INTO species (col_id, latin_name) VALUES ('FYD9', 'Aptenodytes forsteri');
INSERT INTO species (col_id, latin_name) VALUES ('67QCM', 'Aptenodytes patagonicus');
INSERT INTO species (col_id, latin_name) VALUES ('4QPKQ', 'Pygoscelis adeliae');
INSERT INTO species (col_id, latin_name) VALUES ('4QPKS', 'Pygoscelis antarcticus');
INSERT INTO species (col_id, latin_name) VALUES ('78R2P', 'Pygoscelis papua');

-- Assume species IDs 1 and 2 for the above
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'english', 'Emperor Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'svenska', 'Kejsarpingvin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'english', 'King Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'svenska', 'Kungspingvin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKQ', 'english', 'Adélie Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKQ', 'svenska', 'Adéliepingvin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKS', 'english', 'Chinstrap Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKS', 'svenska', 'Hakremspingvin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('78R2P', 'english', 'Gentoo Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('78R2P', 'svenska', 'Åsnepingvin');


-- Aptenodytes
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('a87f07a7-8aef-4d27-a7e9-3cfeb1c4f8a8', 'FYD9', '/data/image/1-aptenodytes-forsteri.png', 'William .A Link', 'Public Domain', 'https://www.inaturalist.org/photos/106925391');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('c9929b21-d109-46f6-9a8e-9c757678e454', '67QCM', '/data/image/2-aptenodytes-patagonicus.png', 'Hugo Hulsberg', 'CC0', 'https://www.inaturalist.org/observations/161240401');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('10000d39-cb8a-4306-8758-2c6174cb3d7b', 'FYD9', '/data/image/3-aptenodytes-forsteri.png', 'steve b.', 'CC0', 'https://www.inaturalist.org/observations/200575498');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('232740b9-dafa-40c8-894c-0c8a0a6660cb', 'FYD9', '/data/image/4-aptenodytes-forsteri.png', 'steve b.', 'CC0', 'https://www.inaturalist.org/observations/200575498');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('f9bb3212-be36-4033-aff4-3fba3a51d90b', '67QCM', '/data/image/5-aptenodytes-patagonicus.png', 'Hugo Hulsberg', 'CC0', 'https://www.inaturalist.org/observations/161240401');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('10c12bc6-9cbc-4251-874c-6ca92341446d', '67QCM', '/data/image/6-aptenodytes-patagonicus.png', 'Federico Muñoz', 'CC0', 'https://www.inaturalist.org/observations/141021190');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('53393412-e7c8-4f56-984d-47169424f321', '67QCM', '/data/image/7-aptenodytes-patagonicus.png', 'Federico Muñoz', 'CC0', 'https://www.inaturalist.org/observations/141021190');

-- Pygoscelis
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('9c9e017b-ad1d-42de-8c0b-7869a0896314', '4QPKQ', '/data/image/8-pygoscelis-adeliae.png', 'Peter Shanks', 'CC0', 'https://www.inaturalist.org/observations/248960683');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('16937fe3-e8a8-4ad0-bf6c-4f1dff0449f7', '4QPKQ', '/data/image/9-pygoscelis-adeliae.png', 'Peter Shanks', 'CC0', 'https://www.inaturalist.org/observations/244735245');

INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('a705c01b-47ce-417c-adfd-f9043f7b1d80', '4QPKS', '/data/image/10-pygoscelis-antarcticus.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/252800337');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('b08cb702-9959-4b18-b05e-c9486825c1ea', '4QPKS', '/data/image/11-pygoscelis-antarcticus.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/252800337');

INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('995ae539-332c-4ff9-9e0d-b8aaa875567a', '78R2P', '/data/image/12-pygoscelis-papua.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/107779876');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('3c5d791c-bd80-4029-ad6c-027b7d77c8bf', '78R2P', '/data/image/13-pygoscelis-papua.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/107779876');

-- INSERT INTO images (id, species_col_id, path) VALUES (gen_random_uuid(), '67QCM', '/data/image/2-aptenodytes-patagonicus.png');
