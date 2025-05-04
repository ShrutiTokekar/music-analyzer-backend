-- schema.sql
-- SQL schema for Music Industry Trends Analyzer

CREATE DATABASE IF NOT EXISTS musicdb;
USE musicdb;

-- Artists table
CREATE TABLE Artists (
  artist_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  genre VARCHAR(50)
);

-- Features table (guest artists)
CREATE TABLE Features (
  feature_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Labels table
CREATE TABLE Labels (
  label_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Albums table
CREATE TABLE Albums (
  album_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  release_year YEAR,
  artist_id INT,
  label_id INT,
  FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
  FOREIGN KEY (label_id) REFERENCES Labels(label_id)
);

-- Album_Features join table
CREATE TABLE Album_Features (
  album_id INT,
  feature_id INT,
  PRIMARY KEY (album_id, feature_id),
  FOREIGN KEY (album_id) REFERENCES Albums(album_id),
  FOREIGN KEY (feature_id) REFERENCES Features(feature_id)
);

-- Sample data
INSERT INTO Artists (name, genre) VALUES 
  ('Taylor Swift', 'Pop'),
  ('Kendrick Lamar', 'Hip-Hop'),
  ('Adele', 'Soul'),
  ('Bad Bunny', 'Reggaeton'),
  ('J Balvin', 'Reggaeton'),
  ('Shakira', 'Latin Pop'),
  ('Ozuna', 'Trap'),
  ('Karol G', 'Reggaeton'),
  ('Rauw Alejandro', 'Urban'),
  ('Maluma', 'Pop Latino'),
  ('Anitta', 'Funk Carioca'),
  ('Rosalía', 'Flamenco Pop'),
  ('Luis Fonsi', 'Latin Pop'),
  ('Enrique Iglesias', 'Latin Pop'),
  ('Marc Anthony', 'Salsa'),
  ('Nicky Jam', 'Reggaeton'),
  ('Romeo Santos', 'Bachata'),
  ('Becky G', 'Reggaeton'),
  ('Don Omar', 'Reggaeton'),
  ('Daddy Yankee', 'Reggaeton'),
  ('Selena Gomez', 'Pop'),
  ('Billie Eilish', 'Alternative'),
  ('Doja Cat', 'Rap'),
  ('Post Malone', 'Hip-Hop'),
  ('SZA', 'R&B');

INSERT INTO Features (name) VALUES
  ('Travis Scott'),
  ('Drake'),
  ('Nicki Minaj'),
  ('The Weeknd'),
  ('21 Savage');

INSERT INTO Labels (name) VALUES
  ('Republic Records'),
  ('Top Dawg Entertainment'),
  ('Sony Music Latin'),
  ('Universal Music Group'),
  ('Warner Music');

INSERT INTO Albums (title, release_year, artist_id, label_id) VALUES
  ('Midnights', 2022, 1, 1),
  ('DAMN.', 2017, 2, 2),
  ('YHLQMDLG', 2020, 4, 3),
  ('Colores', 2020, 5, 3),
  ('El Dorado', 2017, 6, 3),
  ('Aura', 2018, 7, 4),
  ('KG0516', 2021, 8, 3),
  ('Saturno', 2022, 9, 3),
  ('Papi Juancho', 2020, 10, 3),
  ('Versions of Me', 2022, 11, 5),
  ('Motomami', 2022, 12, 4),
  ('Vida', 2019, 13, 4),
  ('Final (Vol.1)', 2021, 14, 4),
  ('Opus', 2019, 15, 4),
  ('Intimo', 2019, 16, 4),
  ('Golden', 2017, 17, 5),
  ('Esquemas', 2022, 18, 5),
  ('The Last Don II', 2015, 19, 4),
  ('Legendaddy', 2022, 20, 4);

INSERT INTO Album_Features (album_id, feature_id) VALUES
  (2, 1),
  (2, 2),
  (3, 2),
  (4, 3),
  (5, 4),
  (6, 5);
