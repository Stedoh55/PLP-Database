-- Creating the Books Database
CREATE TABLE Books(
BookID INT NOT NULL,
Title VARCHAR(150) NOT NULL,
Author VARCHAR(150) NOT NULL,
Genre VARcHAR(150) NOT NULL,
PublicationYear INT NOT nULL);

-- Adding Details to the Books Database
INSERT INTO Books
(BookID, Title, Author, Genre, PublicationYear)
VALUES
(101, 'Chronicles of Etheria:The Enchanted Kingdom', 'Imogen Nightshade', 'Fantasy',2021 ),
(102, 'Quantum Echoes:Adventures in Parallel Realms', 'Orion Starlight', 'Science Fiction', 2020),
(103, 'Whispers of the Nightwood:A Gothic Mistery', 'Raven Darkwood', 'Mystery', 2019),
(104, 'The Last Alchemist''s Legacy', 'Merlin Evergreen', 'Fantasy', 2021),
(105, 'Echoes of Eternity:Tales from the Celesrtial Realm', 'Aurora Skyfall', 'Mythology', 2023),
(106, 'Infinite Worlds:Journeys Beyond the Veil', 'Nova Stardus', 'Science Fiction', 2020),
(107, 'Serpent''s Kiss: A Trilling Urban Fantasy', 'Lily Shadowcaster', 'Urban Fantasy', 2021),
(108, 'The Clockwork Chronicles: Secrets of the Stream Age', 'Victor ironheart', 'Mythology', 2021),
(109, 'Songs of the Siren: Legends of the Deep', 'Raven Darkwood', 'Romance', 2019),
(110, 'The Forgotten Kingdom: A Quest for the Lost MAgic', 'Ember Wildheart', 'Adventure', 2022);

-- Retrieving all the Data Contents
SELECT * FROM books;

-- Finding Distinct Genres in the Database
SELECT DISTINCT Genre
FROM Books;

-- Alias 'Author' as book Author in Query Request
SELECT Author AS BookAuthor FROM Books;

