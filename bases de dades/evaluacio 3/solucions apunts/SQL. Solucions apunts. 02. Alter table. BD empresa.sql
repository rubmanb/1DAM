-- EXERCICIS. ALTER TABLE (BD empresa)

-- 1) Per a practicar l’alter table primer crearem 
-- una nova BD amb un parell de taules. 
-- Crea la base de dades de nom empresa amb les taules següents:

create database empresa;

use empresa;

create table emp (
  num int,
  nom varchar(10) not null,
  cap int,
  comissio int,
  dept int not null
) engine = InnoDB;

create table dept (
  codi int primary key,
  nom varchar(15) not null unique,
  poble varchar(20)
) engine = InnoDB;


-- 2)	Fes que el camp num de la taula emp siga 
-- la clau principal.
alter table emp
  add primary key(num);

-- 3)	Afegeix una nova columna anomenada salari a la taula emp, 
-- de tipus enter i amb la condició de no poder prendre valors nuls. 
alter table emp
  add column salari int not null;

-- 4)	Incorpora la condició de que la columna dept de la taula 
-- emp es clau aliena respecte a la taula dept (camp codi). 
-- Fes que quan s’esborre un departament, també s’esborren 
-- els empleats associats a eixe departament.
alter table emp
  add foreign key (dept) references dept(codi)
    on delete cascade;

-- 5)	Fes que la columna cap de la taula emp siga clau aliena, 
-- referenciant a la seua pròpia taula. 
alter table emp
  add foreign key (cap) references emp(num);

-- 6) Intenta eliminar la columna cap de la taula emp.
alter table emp
  drop column cap;
-- No deixa esborrar la columna pq 'cap' té una clau aliena

-- 7) Elimina la condició de que la columna codi de dept es clau primària.
alter table dept
  drop primary key;
-- No deixa pq hi ha una clau aliena en altra taula que apunta a 'dept'
-- i, per tant, necessita que 'dept' tinga clau primària 