-- EXERCICIS. DELETE I UPDATE (BD cultius)

use cultius;


-- 1)	 Esborra la província de Madrid

SET SQL_SAFE_UPDATES=0; -- Per a desactivar el mode de seguretat

delete from provincies
where nom = 'Madrid';

-- 2)	Augmenta un 10% la població de totes les províncies
update provincies
set hab = hab * 1.1;

-- 3)	Modifica la comarca RB fent que el nom comence per “La”. 
-- Utilitza l’operador CONCAT (Consulta la sintaxi a Internet).
update comarques
set nom = concat("La ", nom)
where cod = 'RB';

-- 4) Guarda les dades de les provincies al fitxer 
-- “provincies.txt” del directori sobre el qual tens permisos. 

SHOW VARIABLES LIKE "secure_file_priv";
-- Suposem que ens mostra '/tmp'. En este cas, faríem:

select *
into outfile '/tmp/comarques.txt' 
from comarques;


-- 5) Esborra el contingut de la taula comarques 
-- i torna a carregar les dades a partir del fitxer que 
-- has creat a l’exercici anterior.
delete from comarques;

load data infile '/tmp/comarques.txt'
into table comarques;