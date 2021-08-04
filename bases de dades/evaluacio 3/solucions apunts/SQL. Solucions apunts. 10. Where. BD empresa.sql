-- EXERCICIS. WHERE (BD empresa)

use empresa;

-- 1) Mostra nom i comissió d'aquells empleats que NO tinguen comissió 
-- (pensa ue pot haver empleats amb comissió 0 i empleats amb comissió NULL).
select nom, comissio
from empleats
where comissio=0 or comissio is null;

-- 2) Mostra nom i comissió dels empleats que siguen del departament 2 
-- amb una comsisió superior al 10%.
select nom, comissio
from empleats
where dept=2 and comissio>10;

-- 3) Mostra nom i comissió dels empleats que tenen una comissió entre el 20 i el 50%.
select nom, comissio
from empleats
where comissio between 20 and 50;  -- where comissio >=20 and comissio <=50;

-- 4) Mostra el nom dels empleats dels departaments 2, 5, i 6. 
-- Mostra també el departament de cadsacun.
select nom, dept
from empleats
where dept in (2, 5, 6); -- where dept=2 or dept=5 or dept=6 or dept=8;

-- 5) Mostra totes les dades dels empleats que el nom comence per A, 
-- que acaben amb E i que la tercera lletra del seu nom siga una I.
select *
from empleats
where nom like 'A_I%E';



