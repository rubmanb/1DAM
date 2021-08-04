-- EXERCICIS. WHERE (BD futbol)

use lliga1213;

-- 1) Partits que ha perdut el Barça (codi ‘bar’) jugant a casa.

select *
from partits
where equipc = "bar"
 and golsc < golsf;



-- 2) Partits que ha perdut el Barça jugant fora.
select *
from partits
where equipf = "bar"
 and golsf < golsc;


-- 3) Quantitat de partits que ha perdut el Barça.

select count(*)
from partits
where ( equipc="bar" and golsc<golsf )  -- Barça jugant en casa va perdre
  or ( equipf="bar" and golsf<golsc ); -- Barça jugant fora va perdre


-- 4) Partits on s’han marcat més de 5 gols.
select *
from partits
where (golsc + golsf) > 5;


-- 5) Quines jornades es jugaren en febrer.
select *
from jornades
where month(data) = 2;

-- 6) Quants partits encara no ha jugat el València.
select count(*)
from partits
where (equipc="val" and golsc is null)
   or (equipf="val" and golsf is null);

-- O bé, millor:
select count(*)
from partits
where (equipc="val" or equipf="val")
  and golsc is null;

-- O bé:
select count(*)
from partits
where "val" in (equipc, equipf)
  and golsc is null;


-- 7) Partits on el Madrid (codi ‘rma’) ha rebut 3 gols o més.
select *
from partits
where (equipc = "rma" and golsf>=3)
   or (equipf = "rma" and golsc>=3);


-- 8) Partits on el Madrid ha perdut per més d’un gol de diferència.

select *
from partits
where (equipc = "rma" and golsf-golsc >1)
   or (equipf = "rma" and golsc-golsf >1);


-- 9) Partits on un equip ha tingut més del 60% de possessió.
select *
from partits
where possessioc>60        -- L'equip de casa tenia més del 60%
   or (100-possessioc>60); -- L'equip de fora tenia més del 60;

-- O bé:
select *
from partits
where possessioc>60 or possessioc<40;

-- O bé:
select *
from partits
where possessioc not between 40 and 60;

-- 10) Partits on un equip ha tingut més del 60% de possessió i ha perdut el partit.;
select *
from partits
where (possessioc>60 and golsc<golsf)
   or (100-possessioc>60 and golsf<golsc);

-- 11)	 Quantitat total dels sous dels jugadors que cobren més de 10 milions d’euros.
select sum(sou)
from jugadors
where sou > 10000000;


-- 12)	Mostra la quiniela de la primera jornada (equip casa, 
-- equip fora, 1x2). Hauràs d’utilitzar una select condicional. 
-- Busca en Internet.
select equipc, equipf, if (golsc>golsf, '1', if(golsc=golsf, 'x', '2'))
from partits
where jornada=1;


