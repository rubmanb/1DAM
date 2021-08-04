-- EXERCICIS. FUNCIONS INTERNES (BD empresa)

/*
1)	Per a fer els següents exercicis de funcions, 
primer afig la data de naixement (d_naix) a cada empleat 
(amb ALTER TABLE). 
Després, posa dates dse naixement als empleats existents 
(amb diferents UPDATE).
*/
use empresa;

-- Si la BD no tenia dades, li'n posem ara:
insert into dept(codi, nom) values
(1, 'Informàtica'),
(2, 'Màrqueting');

insert into emp(num, nom, dept, salari) values
(1, 'Pep', 1, 1000),
(2, 'Pepa', 1, 1100),
(3, 'Pepet', 2, 900);

-- Afegim la columna per a la data de naixement dels empleats:
alter table emp
add column d_naix date;

-- Modifiquem els empleats per a posar-los data de naixement:
update emp 
set d_naix = '1950-12-20'
where num = 1;

update emp 
set d_naix = '1966-11-21'
where num = 2;

/*
2)	Mostra totes les dades de la taula d’empleats i, a més, 
de cadascun d’ells:
 a.	la longitud del seu nom 
 b.	la comissió en tant per 1 (en la taula està com a percentatge)
 c.	el dia de la setmana en què nasqueren
 d.	la data de naixement expressat amb format: 19 del 3 del 1970
*/
select *, char_length(nom), comissio/100, dayname(d_naix), 
	   concat(day(d_naix), " del ", 
			  month(d_naix), " del ", 
			  year(d_naix)
			 )
from emp;

/*
3) Mostra els noms dels departaments en minúscula i en majúscula.
*/
select lower(nom), upper(nom)
from dept;
