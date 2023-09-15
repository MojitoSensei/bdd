/*1*/
UPDATE films
SET titre = 'FastAndFurious'
WHERE numF = 3;

/*3*/
update joue_dans
set numF = 5
where numAct = 6;

/*4*/
update films
set genre = 'Action'
where numF = 6;

/*5*/
update films
set genre = 'Action'
where numF = 6;

/*6*/
update Realise_par
set numReal = 7
where numF = 8;

/*7*/
update Passe_dans
set numCine = 5
where numF = 1;

/*8*/
update joue_dans
set numF = 5
where numAct = 7;
update Acteurs 
set specialite = 'comique'
where numAct = 7;

/*9*/
update films
set duree = 1111
where numF = 12;

/*10*/
update Joue_dans
set rôle = 'Gavroche'
where numAct = 1;
update Joue_dans
set numF = 7
where numAct =1;
delete from Joue_dans
where numAct = 7;
update Films
set annee = 2024
where numF = 7;

/*11*/
update film_a_recu
set numF = 1
where numF= 2;
update film_a_recu
set numF = 1
where numF= 3;

/*12*/
update films
set duree = 1111
where numF = 12;

/*13*/
update Realisateurs
set nomReal = 'Freeman'
where numReal = 2;
update Realisateurs
set prenomReal = 'Morgan'
where numReal = 2;
update Realisateurs
set dateNaissReal = '1937-06-01'
where numReal = 2;

/*14*/
delete from passe_dans
where numCine = 5
and numS = 5
and numF = 5;

/*15*/
update Joue_dans
set salaireAct = 5800580
where numAct = 9;

/*16*/
update Joue_dans
set salaireAct = 5800580
where numAct = 9;

/*17*/
update films
set annee = 1998
where numF = 3;

/*18*/
update salles
set tailleEcran = 1250
where numCine = 4;

/*19*/
update passe_dans
set numF = 12
where numF = 9
and numCine = 7
and numS = 4;

/*20*/
update cinemas
set villeCine = 'New-York'
where numCine = 5;
update salles
set nbrPlaces = 500
where numS = 5;
update salles
set tailleEcran = 100
where numS = 5;
update Passe_dans
set numF = 10
where numF = 5
and numCine = 5
and numS = 5;

/*21*/
update films
set annee = 1980
where numF = 13;
update films
set annee = 1980
where numF = 14;

/*22*/
update Joue_dans
set salaireAct = 1215485269
where numF = 12
and numAct = 10;

/*23*/
update Acteurs
set nomAct = 'PeppaPig'
where numAct = 10;

/*24*/
update Joue_dans 
set numF = 14
where numF = 12
and numAct = 10;

/*25*/
update Joue_dans
set salaireAct = 585858
where numAct = 13
and numF = 10;

/*26*/
delete from film_a_recu
where numF = 5;

/*27*/
update passe_dans
set prix = 6000
where numF = 9
and numS = 4 
and numCine = 7;

/*2 ce delete vas supprimer le film numero 5 que d'autres update utilisent, pour éviter tout problèmes d'update il doit etre éxécuté séparément des autres / un nouvel insert de la base de données est nécessaire après son éxécution */
delete
from realise_par
where numF = 5;
delete
from film_a_recu  
where numF = 5;
delete
from joue_dans 
where numF = 5;
delete 
from films 
where numF = 5;
