/* creation du schema */
drop database if exists `cinemas`;
create database cinemas;


/* créations des tables */


create table `cinemas`.films
(
	numF int PRIMARY KEY,
    titre varchar(80),
    genre varchar(20),
    annee year,
    duree int,
    budget int
);

use `cinemas`; 
create table recompenses
(
	numRecomp int PRIMARY KEY,
    categorie varchar(50),
    festival varchar(50)
);

create table acteurs
(
	numAct int,
    nomAct varchar(30),
    prenomAct varchar(30),
    dateNaissAct date,
    nationaliteAct varchar(30),
    taille int,
    specialite varchar(50),
    primary key(numAct)
);

create table realisateurs
(
	numReal int,
    nomReal varchar(30),
    prenomReal varchar(30),
    dateNaissReal date,
    nationaliteReal varchar(30),
    primary key(numReal)
);

create table cinemas
(
	numCine int,
    nomCine varchar(30),
    adrCine varchar(30),
    villeCine varchar(300),
    telCine varchar(20),
    compagnie varchar(30),
    primary key(numCine)
);

create table salles
(
	numS int,
    tailleEcran int,
    nbrPlaces int,
    audio varchar(15),
    primary key(numS),
    numCine int,
    foreign key(numCine) references cinemas(numCine)
);


create table joue_dans
(
	numF int,
    numAct int,
    rôle varchar(30),
    salaireAct int,
    primary key(numF,numAct),
    foreign key(numF) references films(numF),
    foreign key(numAct) references acteurs(numAct)
);

create table film_a_recu
(
	numF int,
    numRecomp int,
    annee varchar(4),
    primary key(numF, numRecomp),
    foreign key(numF) references films(numF),
    foreign key(numRecomp) references recompenses(numRecomp)
);

create table acteur_a_recu
(
	numRecomp int,
    numAct int,
    annee year,
    primary key(numRecomp,numAct),
    foreign key(numRecomp) references recompenses(numRecomp),
    foreign key(numAct) references acteurs(numAct)
);

create table realise_par
(
	numF int,
    numReal int,
    salaireReal int,
    primary key(numF,numReal),
    foreign key(numF) references films(numF),
    foreign key(numReal) references realisateurs(numReal)
);

create table passe_dans
(
	numF int,
    numS int,
    numCine int,
    dateDeb date,
    dateFin date,
    horaires varchar(30),
    prix int,
    typeSceance varchar(2),
    primary key(numF,numS,numCine)
);
