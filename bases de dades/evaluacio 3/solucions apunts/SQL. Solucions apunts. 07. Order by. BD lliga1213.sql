-- EXERCICIS. ORDER BY (BD futbol)

use lliga1213;

-- 1.	Mostra el nom llarg de cada equip i el seu pressupost, 
-- ordenat pel pressupost, de menor a major.
select nomllarg, pressupost
from equips
order by pressupost;

-- 2.	De cada partit, mostra la jornada, l’equip de casa 
-- i els seus gols, Primer eixiran els que han marcat més gols.
select jornada, equipc, golsc
from partits
order by golsc desc;


-- 3.	De cada partit, mostra la jornada, l’equip de casa 
-- i els seus gols. Estarà ordenat per equip (de menor a major). 
-- Els partits de cada equip estaran ordenats de més gols a menys.
select jornada, equipc, golsc
from partits
order by equipc, golsc desc;


-- 4.	Mostra totes les dades dels partits però primer eixiran 
-- els partits que s’hagen marcat més gols. 
-- En cas d’igualtat, eixiran primer els que es marcaren 
-- més gols a casa. En cas d’igualtat eixiran ordenats 
-- pel codi de l’equip de casa (de menor a major).
-- En cas d'igualtat eixiran ordenats per la jornada.
select *
from partits
order by golsc+golsf desc, golsc desc, equipc, jornada;

