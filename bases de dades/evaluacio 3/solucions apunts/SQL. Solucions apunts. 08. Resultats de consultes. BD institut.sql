-- EXERCICIS SOBRE ELS RESULTATS DE CONSULTES (BD institut)

-- 1) Crea la BD institut.
create database institut;

-- 2) Crea en ella la taula alumnes amb els camps codi (enter), nom i estudis (4 caràcters).
use institut;
create table alumnes (
codi int primary key,
nom  varchar(40),
estudis char(4)
) engine = InnoDB;
 
-- 3) Introdueix 3 alumnes amb estudis de PQPI, 3 d’ESO i 3 de DAM.
insert into alumnes values
(1, "Pep", "PQPI"),
(2, "Pepa", "PQPI"),
(3, "Pepet", "PQPI"),
(4, "Joan", "ESO"),
(5, "Joana", "ESO"),
(6, "Joanet", "ESO"),
(7, "Maria", "DAM"),
(8, "Mario", "DAM"),
(9, "Marieta", "DAM");


-- 4) A partir d’eixa taula, crea la taula a_dam amb els alumnes de DAM (codi i nom)
-- (amb la sentència de crear taula a partir d’una select).
create table a_dam as
	select codi, nom
		from alumnes
		where estudis = "DAM";


-- 5) Crea la taula a_eso amb codi (enter) i nom
create table a_eso (
  codi int primary key,
  nom varchar(40)
) engine = InnoDB;

-- 6) Introdueix 3 alumnes d’ESO en a_eso (amb codis que no estiguin en taula d’alumnes).
insert into a_eso values
(10, "Toni"),
(11, "Tonet"),
(12, "Tonica");


-- 7) Copia els alumnes d’ESO de la taula alumnes a la taula a_eso 
-- (amb la sentència d’inserció de files a partir d’una select).
insert into a_eso 
	select codi, nom
		from alumnes
		where estudis = "ESO";

-- 8) Esborra de la taula alumnes els d’ESO i DAM.
delete from alumnes
where estudis in ("ESO", "DAM");


-- 9) La taula alumnes ara s'ha de dir a_pqpi 
alter table alumnes
	rename to a_pqpi;

-- 10) Elimina el camp estudis de la taula a_pqpi
alter table a_pqpi
	drop column estudis;
  



