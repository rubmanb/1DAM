-- EXERCICIS. FUNCIONS D'AGREGAT (BD futbol)

use lliga1213;
-- 1.	Mostra tota l’estadística d’aquells golejadors que han 
-- marcat algun penal.
select *
from golejadors
where penals>0;

-- 2.	De cada partit mostra la jornada, els gols de cada equip, 
-- el total de gols, la possessió de l’equip de casa 
-- i la de l’equip de fora. Posa noms coherents a les columnes
select jornada as "JORNADA", 
	golsc as "GOLS CASA", golsf as "GOLS FORA", 
    golsc + golsf as "GOLS PARTIT", 
    possessioc as "POSSESSIÓ CASA", 
    100 - possessioc as "POSSESSIÓ FORA"
from partits;

-- 3.	Gols marcats pel pitxitxi (només els gols; el nom del jugador no).
select max(gols)
from golejadors;

-- 4.	Mitja de gols per partit en tota la lliga.
select avg(golsc + golsf)
from partits;

-- O bé:
select sum(golsc + golsf) / count(golsc)
from partits;

-- Esta NO seria correcta perquè divideix entre el total
-- de partits INCLOENT ELS NO JUGATS (els de golsc = NULL):
select sum(golsc + golsf) / count(*)
from partits;

-- 5.	Mostra els següents sous: el més car, el més barat 
-- i la mitjana.
select max(sou), min(sou), avg(sou)
from jugadors;

-- 6.	Total de gols marcats en tota la lliga. 
-- a) Total de gols marcats en tots els partits:
select sum(golsc) + sum(golsf)
from partits;

-- O bé:
select sum(golsc + golsf)
from partits;

-- b) Total de gols marcats per tots els golejadors
select sum(gols)
from golejadors;

-- 7.	Mostra quants partits i hi ha, quants s’han jugat 
-- i quants no s’han jugat,
select count(*) as "PARTITS",
	   count(golsc) as "JUGATS",
       count(*) - count(golsc) as "NO JUGATS"
from partits;

-- 8.	Mostra la diferència entre el major pressupost i el menor
select max(pressupost) - min(pressupost)
from equips;

-- 9. Mostra la data més antiga i la més recent de les jornades.
select min(data), max(data)
from jornades;

select * from jornades
order by data;