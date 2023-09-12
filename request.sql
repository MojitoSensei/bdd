/* 1- Retrouver la liste de tous les films */
select titre
from films;

/* 2- donner la liste de tous les genres de films */
select distinct(genre)
from films;

/* 3. Pour chaque film de Spielberg (titre, année), donner le total des salaires des acteurs */
select titre, annee, SUM(salaireAct)
from films
NATURAL JOIN realise_par
NATURAL JOIN realisateurs
NATURAL JOIN joue_dans
WHERE nomReal = 'Spielberg'
group by numF;

/* 4. Trouver le titre et l'année des films de science-fiction dont le budget dépasse $5.000.000. */
select titre, annee
from films
where genre = 'science-fiction'
and budget > 5000000;

/* 5. Donner le nombre de films par genre. */
select genre ,count(genre) as Nombre
from films
group by genre;

/* 6. Trouver le titre des films réalisés par Georges Lucas. */
select titre
from films
natural join realise_par
natural	join realisateurs
where realisateurs.prenomReal = "George"
and realisateurs.nomReal = "Lucas";

/* 7. Trouver le titre des films qui ne passent dans aucun cinéma de la compagnie FOX. */
select titre
from films
where numF not in (
	select distinct numF
    from passe_dans
	natural join cinemas
    where compagnie = 'Fox'
);


/* 8. Quels sont les acteurs comiques (nom, prénom) qui ont joué dans un film de Spielberg. */


/* 9. Trouver le titre et l’année du film le plus long. */


/* 10. Donner le nom et prénom des acteurs qui ont joué Gavroche dans les différentes versions des ”Misérables” avec les dates correspondantes. */
select nomAct, prenomAct
from Acteurs
natural join joue_dans
natural join films
where rôle = 'Gavroche' 
and titre = 'Les Misérables';


/* 11. Donner le titre des films qui ont recu au moins trois récompenses. */
SELECT DISTINCT titre
FROM films
WHERE numF IN (
    SELECT numF
    FROM film_a_recu
    GROUP BY numF
    HAVING COUNT(numRecomp) >= 3
);


/* 12. Retrouver la liste des films dont la longueur dépasse 180 minutes. */


/* 13. Donner le nom et le prénom des réalisateurs qui ont joué dans au moins un de leurs propres films. */


/* 14. Lister les cinémas qui ont exclusivement passé des films primés. */
select nomCine
from Cinemas
natural join passe_dans
natural join film_a_recu 
where passe_dans.numF = film_a_recu.numF;


/* 15. Quel est le total des salaires des acteurs du film ”La guerre des étoiles” ? */
select sum(salaireAct)
from joue_dans
natural join films
where films.numF = joue_dans.numF
and titre like '%La guerre des étoiles%';


/* 16. Donner la moyenne des salaires des acteurs par film, avec le titre et l’année correspondant. */
SELECT AVG(salaireAct) AS moyenne_salaires, titre, annee
FROM films
NATURAL JOIN joue_dans
GROUP BY films.titre, films.annee;




/* 17. Trouver le genre des films des années 90 dont le budget moyen dépasse $200.000. */


/* 18. Lister les cinémas dont la taille moyenne de l’écran est supérieure à 40 mètres carrés. */


/* 19. Donner le nom des cinémas passant tous les films primés cette année au festival de Cannes. */
SELECT DISTINCT c.nomCine
FROM cinemas c
WHERE NOT EXISTS (
  SELECT f.numF
  FROM film_a_recu f
  WHERE f.annee = '2023' AND f.numRecomp NOT IN (
    SELECT r.numRecomp
    FROM recompenses r
    WHERE r.festival = 'Cannes'
  )
  AND NOT EXISTS (
    SELECT pd.numF
    FROM passe_dans pd
    WHERE pd.numCine = c.numCine AND pd.numF = f.numF
  )
);










/* 20. Quels sont les cinémas new-yorkais de la Fox qui passent un film de Peter Jackson avant 22 heures dans une salle d’au moins 200 places et un écran de taille supérieure à 30 mètres carrés (donner aussi le nom des films correspondant). */


/* 21. Donner le nombre de films sortis en 1980 par genre. */


/* 22. Trouver le nom et le prénom des acteurs qui, pour un film donné, ont eu un salaire plus important que le salaire du réalisateur (attention un acteur peut jouer plusieurs rˆoles). */


/* 23. Trouver les couples acteur-réalisateur (noms et prénoms) tels que l’un a dirigé l’autre sur un film et vice-versa sur un autre. */


/* 24. Trouver le nom, le prénom, le numéro des acteurs qui ont joué dans tous les films de Luc Besson. */


/* 25. Pour chaque film de Peter Jackson, trouver le nom et le prénom de l’acteur qui a eu le plus gros salaire. */


/* 26. Donner le titre des films qui ont été primés au moins une fois (en comptant aussi les récompenses des acteurs jouant dans le film). */


/* 27. Donner le prix moyen des films passant dans des salles en 3D (cf. typeSeance dans l’association passe dans). */