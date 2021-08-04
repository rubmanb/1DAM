-- EXERCICIS. GROUP BY (BD futbol);

use lliga1213;

-- 1.	Mostra de cada equip: el codi, sou màxim, mínim, 
-- la suma de tots els sous, quants jugadors hi ha, 
-- de quants jugadors es coneix el sou, 
-- la mitjana de sous entre els que sabem el sou 
-- i la mitjana de sous entre tots els jugadors.
select equip,  max(sou), min(sou), sum(sou), count(*), count(sou), 
avg(sou), sum(sou)/count(*)
from jugadors
group by 1;

-- 2.	Mostra quants jugadors té cada equip en cada posició.
select equip, lloc, count(*)
from jugadors 
group by 1, 2;
 
-- 3.	Gols marcats en total en cada jornada.
select jornada, sum(golsc+golsf)
from partits
group by 1;

-- 4.	Mitja de gols per partit en cada jornada.
select jornada, avg(golsc+golsf)
from partits
group by 1;

-- 5.	Gols marcats pel pitxitxi de cada equip. És a dir: cal mostrar el codi de l’equip i els gols marcats pel seu màxim golejador.
select equip, max(gols)
from golejadors
group by equip;

-- 6.	Gols marcats en total per cada equip en casa
select equipc, sum(golsc)
from partits
group by 1;

-- 7.	Gols que ha rebut en total cada equip com a visitant.
select equipf, sum(golsc)
from partits
group by 1;

-- 8.	Quants partits ha guanyat cada equip jugant en casa.
select equipc, count(*) as "guanyats a casa"
from partits
where golsc>golsf
group by equipc;

