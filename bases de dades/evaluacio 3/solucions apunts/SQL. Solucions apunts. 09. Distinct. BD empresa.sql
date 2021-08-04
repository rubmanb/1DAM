-- EXERCICIS. DISTINCT (BD empresa)

use empresa;

-- 1)	Mostra els departaments que tenen algun empleat. 
-- En la taula dept estan tots els departaments però potser 
-- algun no té empleats. Per tant, ho hauràs de traure 
-- a partir de la taula emp. 
-- Que no apareguin repetits els departaments.

select distinct dept
	from empleats;

-- 2) Mostra els diferents pobles (sense repetir) 
-- on hi ha departaments.

select distinct poble
	from dept;

-- 3) Mostra les parelles de comissió i departament (de la taula d'empleats) 
-- sense que apareguen parelles repetides.

select distinct comissio, dept
	from empleats;


