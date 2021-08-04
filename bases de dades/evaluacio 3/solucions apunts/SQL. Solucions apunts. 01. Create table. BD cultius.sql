/*
1)	Crea la base de dades de nom “cultius” i, dins d’ella, 
escriu les instruccions DDL necessàries per a crear les següents 
taules en la base de dades que has creat. 
Els codis seran un varchar(3). Els noms varchar(30) 
i la quantitat d’habitants (hab) serà integer.
*/

drop database if exists cultius;

create database cultius;

use cultius;

create table tipus_cultius (
  cod char(3) primary key,
  nom char(30)
) engine = InnoDB;

create table paisos (
  cod char(3) primary key,
  nom varchar(30),
  con varchar(30)
) engine = InnoDB;

create table provincies (
  cod char(3),
  pai char(3),
  nom varchar(30),
  hab integer,
  primary key (cod, pai),
  foreign key (pai) references paisos(cod)
) engine = InnoDB;

create table comarques(
  cod char(3) primary key,
  nom varchar(30),
  pro char(3) not null,
  pai char(3) not null,
 foreign key (pro, pai) references provincies(cod, pai)
       on update cascade
) engine = InnoDB;

create table cultivar (
  cul char(3),
  com char(3),
  primary key (cul, com),
  foreign key (cul) references tipus_cultius(cod)
     on update cascade
	 on delete cascade,
  foreign key (com) references comarques(cod)
) engine = InnoDB;
