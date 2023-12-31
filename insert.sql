INSERT INTO Films (numF, titre, genre, annee, duree, budget)
VALUES
  (1, 'Inception', 'Science-Fiction', 2010, 148, 160000000),
  (2, 'The Shawshank Redemption', 'Drama', 1994, 142, 25000000),
  (3, 'Avatar', 'Action', 2009, 162, 237000000),
  (4, 'Pulp Fiction', 'Crime', 1994, 154, 8000000),
  (5, 'Jurassic Park', 'Adventure', 1993, 127, 63000000),
  (6, 'La guerre des étoiles : Un nouvel espoir', 'Science-Fiction', 1977, 121, 11000000),
  (7, 'Les Misérables', 'Drama', 1997, 185, 1200000),
  (8, 'La guerre des étoiles : L empire contre-attaque', 'Science-Fiction', 1980, 124, 18000000),
  (9, 'Le Seigneur des anneaux : La Communauté de l anneau', 'Fantasy', 2001, 178, 93000000),
  (10, 'Le Seigneur des anneaux : Les Deux Tours', 'Fantasy', 2002, 179, 94000000),
  (11, 'Le Seigneur des anneaux : Le Retour du roi', 'Fantasy', 2003, 201, 94000000),
  (12, 'Barbie', 'Aventure', 2023, 115, 145000000),
  (13, 'Oppenheimer', 'Biographie', 2023, 180, 100000000),
  (14, 'Le Cinquième Élément', 'Science-Fiction', 1997, 126, 93000000);
  

INSERT INTO Recompenses (numRecomp, categorie, festival)
VALUES
  (1, 'Meilleur Film', 'Festival du Cinéma'),
  (2, 'Meilleur Acteur', 'Oscars'),
  (3, 'Meilleur Réalisateur', 'Cannes'),
  (4, 'Meilleur Scénario', 'BAFTA'),
  (5, 'Meilleure Musique Originale', 'Golden Globes'),
  (6, 'Meilleur Film', 'Cannes');

INSERT INTO Acteurs (numAct, nomAct, prenomAct, dateNaissAct, nationaliteAct, taille, specialite)
VALUES
  (1, 'DiCaprio', 'Leonardo', '1974-11-11', 'Américaine', 183, 'Narration'),
  (2, 'Freeman', 'Morgan', '1937-06-01', 'Américaine', 188, 'Narration'),
  (3, 'Weaver', 'Sigourney', '1949-10-08', 'Américaine', 182, 'Science Fiction'),
  (4, 'Travolta', 'John', '1954-02-18', 'Américaine', 188, 'Dancing'),
  (5, 'Neill', 'Sam', '1947-09-14', 'Néo-zélandaise', 183, 'Comique'),
  (6, 'Harrison', 'Ford', '1942-07-13', 'Américaine', 185, 'Aventure'),
  (7, 'Thénardier', 'Sacha', '1981-01-25', 'Française', 175, 'Dramatique'),
  (8, 'Robert', 'Hossein', '1927-12-30', 'Française', 175, 'réalisateur/second rôle'),
  (9, 'Jejouedans', 'Laguerredesatoiles', '1987-12-26', 'Française', 190, 'etrela'),
  (10, 'Gosling', 'Ryan', '1980-11-12', 'Canadienne', 184, 'Acteur Principal'),
  (11, 'Murphy', 'Cillian', '1976-05-25', 'Irlandaise', 175, 'Acteur Principal'),
  (12, 'Willis', 'Bruce', '1955-03-19', 'Américaine', 183, 'Action'),
  (13, 'Wood', 'Elijah', '1985-05-20', 'Américaine', 155, 'Acteur Principal'),
  (14, 'Bloom', 'Orlando', '1840-06-30' , 'Américaine', 180, 'seconde rôle');

INSERT INTO Realisateurs (numReal, nomReal, prenomReal, dateNaissReal, nationaliteReal)
VALUES
  (1, 'Nolan', 'Christopher', '1970-07-30', 'Britannique'),
  (2, 'Darabont', 'Frank', '1959-01-28', 'Américaine'),
  (3, 'Cameron', 'James', '1954-08-16', 'Canadienne'),
  (4, 'Tarantino', 'Quentin', '1963-03-27', 'Américaine'),
  (5, 'Spielberg', 'Steven', '1946-12-18', 'Américaine'),
  (6, 'Lucas', 'George', '1944-05-14', 'Américaine'),
  (7, 'Robert', 'Hossein', '1927-12-30', 'française'),
  (8, 'Jackson', 'Peter', '1961-10-31', 'Néo-Zélandais'),
  (10, 'Nolan', 'Christopher', '1970-07-30', 'Britinique'),
  (11, 'Gerwin', 'Greta', '1983-08-04', 'Américaine'),
  (12, 'Besson', 'Luc', '1959-03-18', 'Française');


INSERT INTO Cinemas (numCine, nomCine, adrCine, villeCine, telCine, compagnie)
VALUES
  (1, 'Netflux', '123 Rue Principale', 'Nouille Orc', '123-456-7890', 'Nootflox'),
  (2, 'Cinémoa', '456 Avenue Centrale', 'Taumatawhakatangihangakoauauotamateaturipukakapiki-maungahoronukupokaiwhenuakitnatahu', '987-654-3210', 'CinéDuNom'),
  (3, 'Cinécity', '789 Rue Étoilée', 'Nouméa', '555-555-5555', 'Cinécity'),
  (4, 'VenezRegarder', '101 Old Street', 'Ouegoa', '111-222-3333', 'Nollywood'),
  (5, 'UnlimitedMovies', '555 Action Avenue', 'Bloxcity', '777-888-9999', 'Fox'),
  (6, 'jepasserien', 'nulpar', 'somewhereovertherainbow', '118712', 'boring_compagnie'),
  (7, "LeCineDeN-Y", "3rd street of the communist", "New-York", "212-421-3600", "Fox"),
  (8, "PrimedCINECITY", "Primedroad", "Primed-City", "122-378-4890", "RobuxForLife");

  
INSERT INTO Salles (numS, tailleEcran, nbrPlaces, audio, numCine)
VALUES
  (1, 20, 150, 'Dolby Digital', 1),
  (2, 80, 200, 'DTS', 2),
  (3, 180, 100, 'Stereo', 3),
  (4, 40, 250, 'Dolby Atmos', 4),
  (5, 20, 180, 'Surround', 5);

INSERT INTO Joue_dans (numF, numAct, rôle, salaireAct)
VALUES
  (1, 1, 'Cobb', 2000000),
  (2, 2, 'Red', 3500000),
  (3, 3, 'Neytiri', 3000000),
  (4, 4, 'Vincent Vega', 1800000),
  (5, 5, 'Dr. Alan Grant', 2200000),
  (6, 6, 'Han Solo', 2500000),
  (7, 7, 'Gavroche', 100000),
  (7, 8, 'figurant', 200000),
  (6, 9, 'ilestlaaumoins', 200000),
  (9, 13, 'Frodon', 200000),
  (10, 13, 'Frodon', 205500),
  (10, 14, 'Legolas', 400000),
  (11, 13, 'Frodon', 500000),
  (12, 10, 'Ken', 2300000),
  (13, 11, 'Oppenheimer', 24000000),
  (14, 12, 'Korben Dallas', 10000000);

INSERT INTO Film_a_recu (numF, numRecomp, annee)
VALUES
  (1, 1, 2010),
  (2, 2, 1995),
  (3, 3, 2010),
  (4, 4, 1995),
  (5, 5, 1994),
  (6, 1, 1978),
  (7, 1, 1997),
  (7, 2, 1997),
  (7, 3, 1997),
  (12, 6, 2023);

INSERT INTO Acteur_a_recu (numRecomp, numAct, annee)
VALUES
  (1, 1, 2010),
  (2, 2, 1995),
  (3, 3, 2010),
  (4, 4, 1995),
  (5, 5, 1994),
  (1, 6, 1980),
  (1, 7, 2023);

INSERT INTO Realise_par (numF, numReal, salaireReal)
VALUES
  (1, 1, 5000000),
  (2, 2, 3000000),
  (3, 3, 8000000),
  (4, 4, 4000000),
  (5, 5, 6000000),
  (6, 6, 7000000),
  (7, 7, 6000000),
  (8, 6, 2000000),
  (9, 8, 10000000),
  (10, 8, 10000000),
  (11, 8, 10000000),
  (12, 11, 89000000),
  (13, 10, 89000001),
  (14, 12, 7000000);


INSERT INTO Passe_dans (numF, numS, numCine, dateDeb, dateFin, horaires, prix, typeSceance)
VALUES
  (1, 1, 1, '2023-08-25', '2023-08-31', '18:00:00', 1500, '2D'),
  (2, 2, 2, '2023-08-26', '2023-09-01', '19:15:00', 1200, '2D'),
  (3, 3, 3, '2023-08-27', '2023-09-02', '20:00:00', 1200, '3D'),
  (4, 4, 4, '2023-08-28', '2023-09-03', '17:30:00', 1350, '2D'),
  (5, 5, 5, '2023-08-29', '2023-09-04', '16:45:00', 8435, '4D'),
  (6, 6, 6, '2023-09-01', '2023-09-07', '16:00:30', 1800, '3D'),
  (9, 4, 7, '2023-02-14', '2023-04-22', '17:00:00', 2000, '3D'),
  (12, 3, 8, '2023-02-14', '2023-04-22', '17:00:00', 2000, '3D');
