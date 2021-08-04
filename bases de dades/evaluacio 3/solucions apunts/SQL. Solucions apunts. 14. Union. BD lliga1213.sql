-- EXERCICIS. UNION (BD futbol)

use lliga1213;

-- 1.	Mostra la quiniela de la primera jornada (equip casa, equip fora, 1x2). 
-- Este exercici ja es va fer però amb la funció IF. Ara fes-lo sense usar eixa funció. 
-- I ordenat pel codi de l’equip que juga en casa.
select equipc, equipf, '1'
from partits
where jornada = 1
  and golsc > golsf
union
select equipc, equipf, 'x'
from partits
where jornada = 1
  and golsc = golsf
union
select equipc, equipf, '2'
from partits
where jornada = 1
  and golsc < golsf
order by 1;



-- 2.	Quants uns, quantes x i quants 2 en la primera jornada
select "1" as "RESULTAT", count(*) as "QUANTITAT" 
  from partits 
  where golsc>golsf and jornada=1

union

select "x" , count(*) 
  from partits 
  where golsc=golsf and jornada=1

union

select "2" , count(*) 
  from partits 
  where golsc<golsf and jornada=1;





-- 3.	Quants uns, quantes x i quants 2 en cada jornada 
-- (ordenat per la jornada):
select jornada as “JORNADA”, "1" as "RESULTAT", count(*) as "QUANTITAT" 
  from partits 
  where golsc>golsf
  group by jornada

union

select jornada, "x" , count(*) 
  from partits 
  where golsc=golsf
  group by jornada

union

select jornada, "2" , count(*) 
  from partits 
  where golsc<golsf
  group by jornada
  
order by 1;



-- 4.	Quants partits li queda per jugar a cada equip en casa 
-- i quants fora? Mostra la informació ordenada per equip. 
-- Dins de cada equip, primer els de casa
select equipc as equip, count(*) as partits, 'casa' as lloc
from partits
where golsc is null
group by 1
union
select equipf, count(*), 'fora'
from partits
where golsf is null
group by 1
order by 1, 3;

-- 5.	Quants partits ha guanyat/empatat/perdut cada equip 
-- jugant en casa/fora:

-- Solució 1a:
select  equipc EQUIP, count(*)PARTITS, "guanyats a casa" RESULTAT
from  partits where golsc>golsf group by equipc
union
select  equipc, count(*), "empatats a casa" 
from  partits where golsc=golsf group by equipc
union
select  equipc, count(*), "perduts a casa" 
from  partits where golsc<golsf group by equipc
union
select  equipf, count(*), "guanyats fora" 
from  partits where golsc<golsf group by equipf
union
select  equipf, count(*), "empatats fora" 
from partits where golsc=golsf group by equipf
union
select  equipf, count(*), "perduts fora" 
from partits where golsc>golsf group by equipf
order by 1;
-- Nota: En eixa solució no ixen les línies on la quantitat 
-- de partits és 0. 
-- Per a posar-hi remei, caldria afegir altres sentències 
-- però amb subconsultes (ja ho vorem):
-- ...
-- union 
-- select codi, 0, "guanyats a casa"
-- from equips
-- where codi not in (select equipc from partits where golsc>golsf)
-- union
-- ...


-- Solució 2a:
-- També es podrien posar les dades de cada equip en columnes en compte de files
-- però és amb subconsultes que tampoc hem vist. Seria aixì:

SELECT nomcurt, 
		(select count(*) 
		from partits
		where partits.equipc= equips.codi
          and golsc > golsf) as "gua_casa",

		(select count(*) 
		from partits
		where partits.equipc= equips.codi
          and golsc = golsf) as "emp_casa",

		(select count(*)
		from partits
		where partits.equipc= equips.codi
          and golsc < golsf) as "perd_casa",

		(select count(*) 
		from partits
		where partits.equipf= equips.codi
          and golsc < golsf) as "gua_fora",

		(select count(*) 
		from partits
		where partits.equipf= equips.codi
          and golsc = golsf) as "emp_fora",

		(select count(*)
		from partits
		where partits.equipf= equips.codi
          and golsc > golsf) as "perd_fora"

FROM equips;
 


