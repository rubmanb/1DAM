drop database if exists compres;

create database compres;

use compres;


create table families(
fam char(3),
des varchar(20),
primary key(fam)) engine=innodb;

create table poblacions(
pob int,
nom varchar(30),
primary key(pob)) engine=innodb;

create table articles(
art varchar(20),
des varchar(50),
preu float(10,2),
fam char(3),
primary key(art),
foreign key(fam) references families(fam)
on update cascade 
on delete set null) engine=innodb;

create table pro(
pro int,
dni varchar(9),
nom varchar(50),
pob int,
primary key(pro),
foreign key(pob) references poblacions(pob)
on update cascade) engine=innodb;

create table proveir(
art varchar(20),
pro int,
preu float(10,2),
primary key(art,pro),
foreign key(art) references articles(art)
on update cascade,
foreign key(pro) references pro(pro)
on update cascade) engine=innodb;

insert into poblacions values(46410, "Sueca");
insert into poblacions values(46419, "Mareny de Barraquertes");
insert into poblacions values(46420, "El Perelló");
insert into poblacions values(46760, "Tavernes de la Valldigna");

insert into families values("arr", "Arròs");
insert into families values("tar", "Taronges");
insert into families values("lli", "Llimes");
insert into families values("caq", "Caquis");

insert into pro values(1, "11111111", "Copsemar", 46410);
insert into pro values(6, "66666666", "Coop. valenciana del camp Unió Cristiana", 464410);
insert into pro values(2, "22222222", "Cooperativa Agropecuària Mareny de Barraquetes", 46419);
insert into pro values(3, "33333333", "Unipro", 46420);
insert into pro values(4, "44444444", "Sant Isidre, S.A.", 46420);
insert into pro values(5, "55555555", "Coperelló", 46420);
insert into pro values(7, "77777777", "Coop. agrícola de Tavernes de la Valldigna", 46760);

insert into articles values("bom", "Arròs bomba", 2.00, "arr");
insert into articles values("jse", "J Sendra", 2.50, "arr");
insert into articles values("gle", "Arròs gleva", 1.90, "arr");
insert into articles values("alb", "Arròs Albufera", 1.80, "arr");

insert into articles values("ina", "Navelina", 2.80, "tar");
insert into articles values("lat", "Navel Lane Late", 3.00, "tar");
insert into articles values("san", "Sanguinelli", 1.50, "tar");

insert into articles values("per", "Persimon", 1.50, "caq");
insert into articles values("vir", "Caqui de Virgínia", 1.50, "caq");

insert into proveir values("bom", 1, 1.2);
insert into proveir values("bom", 2, 1.5);
insert into proveir values("bom", 3, 1.4);
insert into proveir values("bom", 4, 1.2);

insert into proveir values("jse", 1, 1.8);
insert into proveir values("jse", 2, 1.7);

insert into proveir values("gle", 1, 1.2);

insert into proveir values("alb", 1, 1.1);

insert into proveir values("ina", 2, 0.9);
insert into proveir values("ina", 4, 0.8);

insert into proveir values("lat", 3, 1.0);
insert into proveir values("lat", 4, 0.9);

insert into proveir values("san", 2, 0.6);
insert into proveir values("san", 3, 0.7);
insert into proveir values("san", 5, 0.7);

insert into proveir values("per", 3, 0.6);
insert into proveir values("per", 5, 0.5);
insert into proveir values("per", 6, 0.4);

insert into proveir values("vir", 6, 0.5);





