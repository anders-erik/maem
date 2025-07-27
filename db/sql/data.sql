-- DELETE FROM images *;
-- DELETE FROM common_names *;
-- DELETE FROM species *;


-- Aptenodytes
INSERT INTO species (col_id, latin_name) VALUES ('FYD9',  'Aptenodytes forsteri');
INSERT INTO species (col_id, latin_name) VALUES ('67QCM', 'Aptenodytes patagonicus');
-- Pygoscelis
INSERT INTO species (col_id, latin_name) VALUES ('4QPKQ', 'Pygoscelis adeliae');
INSERT INTO species (col_id, latin_name) VALUES ('4QPKS', 'Pygoscelis antarcticus');
INSERT INTO species (col_id, latin_name) VALUES ('78R2P', 'Pygoscelis papua');
-- Eudyptes
INSERT INTO species (col_id, latin_name) VALUES ('3C39W', 'Eudyptes chrysolophus'); -- macaroni
INSERT INTO species (col_id, latin_name) VALUES ('6GWJ3', 'Eudyptes schlegeli'); -- royal
INSERT INTO species (col_id, latin_name) VALUES ('3C39Z', 'Eudyptes moseleyi'); -- northern rockhopper
INSERT INTO species (col_id, latin_name) VALUES ('3C39Y', 'Eudyptes filholi'); -- eastern rockhopper
INSERT INTO species (col_id, latin_name) VALUES ('3C39V', 'Eudyptes chrysocome'); -- western rockhopper
INSERT INTO species (col_id, latin_name) VALUES ('6GWJ2', 'Eudyptes pachyrhynchus'); -- Fiordland penguin
INSERT INTO species (col_id, latin_name) VALUES ('6H8J2', 'Eudyptes robustus'); -- Snares penguin
INSERT INTO species (col_id, latin_name) VALUES ('6H8J3', 'Eudyptes sclateri'); -- Erect-crested penguin
-- Spheniscus
INSERT INTO species (col_id, latin_name) VALUES ('6YXJD', 'Spheniscus demersus'); -- African penguin
INSERT INTO species (col_id, latin_name) VALUES ('4YV8G', 'Spheniscus magellanicus'); -- Magellanic penguin
INSERT INTO species (col_id, latin_name) VALUES ('4YV8H', 'Spheniscus mendiculus'); -- Galapagos penguin
INSERT INTO species (col_id, latin_name) VALUES ('4YV8F', 'Spheniscus humboldti'); -- Humboldt penguin
-- Megadyptes
INSERT INTO species (col_id, latin_name) VALUES ('3YTL7', 'Megadyptes antipodes'); -- Yellow-eyed penguin
-- Eudyptula
INSERT INTO species (col_id, latin_name) VALUES ('6H8KC', 'Eudyptula minor'); -- Little penguin


-- Aptenodytes
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'english', 'Emperor Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'svenska', 'Kejsarpingvin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'español', 'pingüino emperador');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'françois', 'Manchot empereur');
INSERT INTO common_names (species_col_id, language, name) VALUES ('FYD9', 'deutsch', 'Kaiserpinguin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'english', 'King Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('67QCM', 'svenska', 'Kungspingvin');

-- Pygoscelis
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKQ', 'english', 'Adélie Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKQ', 'svenska', 'Adéliepingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKS', 'english', 'Chinstrap Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4QPKS', 'svenska', 'Hakremspingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('78R2P', 'english', 'Gentoo Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('78R2P', 'svenska', 'Åsnepingvin');

-- Eudyptes
INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39W', 'english', 'Macaroni Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39W', 'svenska', 'Macaronipingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('6GWJ3', 'english', 'Royal Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6GWJ3', 'svenska', 'Vitkindad pingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39Z', 'english', 'Northern Rockhopper Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39Z', 'svenska', 'Nordlig klipphopparpingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39Y', 'english', 'Eastern Rockhopper Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39Y', 'svenska', 'Östlig klipphopparpingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39V', 'english', 'Western Rockhopper Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('3C39V', 'svenska', 'Västlig klipphopparpingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('6GWJ2', 'english', 'Fiordland Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6GWJ2', 'svenska', 'Fjordpingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8J2', 'english', 'Snares Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8J2', 'svenska', 'Snarespingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8J3', 'english', 'Erect-crested Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8J3', 'svenska', 'Tofspingvin');

-- Spheniscus
INSERT INTO common_names (species_col_id, language, name) VALUES ('6YXJD', 'english', 'African Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6YXJD', 'svenska', 'Sydafrikansk pingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8G', 'english', 'Magellanic Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8G', 'svenska', 'Magellanpingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8H', 'english', 'Galapagos Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8H', 'svenska', 'Galapagospingvin');

INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8F', 'english', 'Humboldt Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('4YV8F', 'svenska', 'Humboldtpingvin');

-- Megadyptes
INSERT INTO common_names (species_col_id, language, name) VALUES ('3YTL7', 'english', 'Yellow-eyed Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('3YTL7', 'svenska', 'Gulögd pingvin');

-- Eudyptula
INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8KC', 'english', 'Little Penguin');
INSERT INTO common_names (species_col_id, language, name) VALUES ('6H8KC', 'svenska', 'Dvärgpingvin');




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

-- Eudyptes
-- Eudyptes chrysolophus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('d65b7f66-2e61-4f9b-b4a8-353c201af1ee', '3C39W', '/data/image/14-eudyptes-chrysolophus.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/201195731');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('fe1c5104-26aa-4cd2-877f-f64d75dc4941', '3C39W', '/data/image/15-eudyptes-chrysolophus.png', 'steve b', 'CC0', 'https://www.inaturalist.org/observations/251350931');
-- Eudyptes schlegeli
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('88da130a-4052-43cc-8677-68098a1159ad', '6GWJ3', '/data/image/16-eudyptes-schlegeli.png', 'Mark Fraser', 'CC0', 'https://www.inaturalist.org/observations/219067958');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('5cd2d363-2f6b-46ed-b4be-e170a63e2658', '6GWJ3', '/data/image/17-eudyptes-schlegeli.png', 'Mark Fraser', 'CC0', 'https://www.inaturalist.org/observations/219067958');
-- Eudyptes moseleyi
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found)
    VALUES ('99023f67-fdac-40ba-9a8c-af1cdecbac9e', '3C39Z', '/data/image/18-eudyptes-moseleyi.png', 'Brian Gratwicke', 'CC BY', 'https://www.inaturalist.org/observations/68915');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found)
    VALUES ('629655b6-6552-4941-bf52-3dafd193c172', '3C39Z', '/data/image/19-eudyptes-moseleyi.png', 'Flavien Saboureau', 'CC BY', 'https://www.inaturalist.org/observations/210075262');
-- Eudyptes filholi
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('6c097041-7ae8-42dc-ad69-bfd7928153a6', '3C39Y', '/data/image/20-eudyptes-filholi.png', 'Mark Fraser', 'CC0', 'https://www.inaturalist.org/observations/219078598');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('a171a5c5-ed06-4c7b-8b3b-e45095859eeb', '3C39Y', '/data/image/21-eudyptes-filholi.png', 'Ellen Rykers', 'CC0', 'https://www.inaturalist.org/observations/18573185');
-- Eudyptes chrysocome
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('67079fb6-bc7b-41a0-81ec-aab821a30562', '3C39V', '/data/image/22-eudyptes-chrysocome.png', 'Flavien Saboureau', 'CC BY', 'https://www.inaturalist.org/observations/208554668');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('27738a00-4784-48f2-87d8-69bc73b0912f', '3C39V', '/data/image/23-eudyptes-chrysocome.png', 'NINA WENÓLI', 'CC0', 'https://www.inaturalist.org/observations/78643541');
-- Eudyptes pachyrhynchus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('2f5bb735-e964-406d-8680-f9f468e6f6d1', '6GWJ2', '/data/image/24-eudyptes-pachyrhynchus.png', 'John Barkla', 'CC0', 'https://www.inaturalist.org/observations/3736158');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('0ca4f14d-5d54-462b-9772-3841b119e9f1', '6GWJ2', '/data/image/25-eudyptes-pachyrhynchus.png', 'Roy Lowry', 'CC BY', 'https://www.inaturalist.org/observations/44636266');
-- Eudyptes robustus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('47424171-5268-45aa-b1d0-3087b43ac72e', '6H8J2', '/data/image/26-eudyptes-robustus.png', 'Saryu Mae', 'CC BY', 'https://www.inaturalist.org/observations/264548696');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('79731bb5-4013-4743-849c-d3b1c3b83094', '6H8J2', '/data/image/27-eudyptes-robustus.png', 'Julia Palmer', 'CC BY', 'https://www.inaturalist.org/observations/257665598');
-- Eudyptes sclateri
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('8197c142-5d78-4890-bb34-5aac89b92270', '6H8J3', '/data/image/28-eudyptes-sclateri.png', 'Mark Fraser', 'CC0', 'https://www.inaturalist.org/observations/219066650');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('47da76b0-39a5-4576-ab2d-16173ce63840', '6H8J3', '/data/image/29-eudyptes-sclateri.png', 'Cara-Lisa Schloots ', 'CC BY', 'https://www.inaturalist.org/observations/40676106');

-- Spheniscus
-- Spheniscus demersus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('7829dcf1-7861-43f9-9a10-011c6ffe7374', '6YXJD', '/data/image/30-spheniscus-demersus.png', 'Dario Taraborelli', 'CC0', 'https://www.inaturalist.org/observations/261750582');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('b6201186-660d-4e45-8b18-e3ff4eb47340', '6YXJD', '/data/image/31-spheniscus-demersus.png', 'bdhimes', 'CC0', 'https://www.inaturalist.org/observations/146521884');
-- Spheniscus magellanicus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('2accd483-4779-4056-8c23-f585d7798b85', '4YV8G', '/data/image/32-spheniscus-magellanicus.png', 'Hugo Hulsberg', 'CC0', 'https://www.inaturalist.org/observations/161399969');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('50a0fbec-091a-44f0-9682-89809af42fa1', '4YV8G', '/data/image/33-spheniscus-magellanicus.png', 'Federico Muñoz', 'CC0', 'https://www.inaturalist.org/observations/188928688');
-- Spheniscus mendiculus
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('4cc4b238-89c3-450c-9050-166f1aadda1a', '4YV8H', '/data/image/34-spheniscus-mendiculus.png', 'Jean-Paul Boerekamps', 'CC0', 'https://www.inaturalist.org/observations/68799078');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('c10a764d-a931-4e63-adb5-eac82204b625', '4YV8H', '/data/image/35-spheniscus-mendiculus.png', 'Cristina Olivares Collado', 'CC0', 'https://www.inaturalist.org/observations/254114485');
-- Spheniscus humboldti
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('c535def0-c38f-4915-8593-876c7ac6b0d8', '4YV8F', '/data/image/36-spheniscus-humboldti.png', 'Ken Kneidel', 'CC0', 'https://www.inaturalist.org/observations/70707142');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('95e903f3-1df3-4081-bc86-b04aaf334ddc', '4YV8F', '/data/image/37-spheniscus-humboldti.png', 'Tim', 'CC BY', 'https://www.inaturalist.org/observations/192428188');

-- Megadyptes
-- Megadyptes antipodes
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('9ea27b91-3193-4e25-be8e-cc348f7f51d2', '3YTL7', '/data/image/38-megadyptes-antipodes.png', 'Wouter Koch', 'CC0', 'https://www.inaturalist.org/observations/16093360');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found)
    VALUES ('b29e9f64-dfcf-473d-838d-c29a161eb74d', '3YTL7', '/data/image/39-megadyptes-antipodes.png', 'n_armstrong', 'CC0', 'https://www.inaturalist.org/observations/69246064');

-- Eudyptula
-- Eudyptula minor
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('6b3b9dc7-c867-4254-aa38-2c1bc46a52b5', '6H8KC', '/data/image/40-eudyptula-minor.png', 'bobhunter2', 'CC0', 'https://www.inaturalist.org/observations/187808455');
INSERT INTO images (id, species_col_id, path, copyright_owner, cc, url_found) 
    VALUES ('e0fab21c-58a2-46f9-ba4a-d6a743025a2f', '6H8KC', '/data/image/41-eudyptula-minor.png', 'Simone Luccini ', 'CC BY', 'https://www.inaturalist.org/observations/223209710');


-- INSERT INTO images (id, species_col_id, path) VALUES (gen_random_uuid(), '67QCM', '/data/image/2-aptenodytes-patagonicus.png');
