-- EXERCICIS. HAVING (BD futbol)

use lliga1213;

-- 1.	Comprova si hi ha algun nom de jugador repetit. 
-- És a dir: cal mostrar el nom del jugador i quantes voltes 
-- apareix però només per a aquells jugadors que tinguen 
-- el nom repetit.
select nom, count(*) voltes_repetit
from jugadors
group by 1
having voltes_repetit>1;

 
-- 2.	Jornades en les quals s’han marcat més de 35 gols.
select jornada, sum(golsc+golsf)
from partits
group by jornada
having sum(golsc+golsf) > 35;


-- 3.	Volem saber la mitja de possessió del baló de cada equip 
-- jugant a casa d'aquells equips on la seua mínima possessió jugant en casa és major de 40;
-- Ordenat de major a menor possessió. 
-- La mitja de la possessió ha d'eixir sense decimals.
select equipc, round(avg(possessioc))
from partits
group by equipc
having min(possessioc) > 40
order by 2 desc;


