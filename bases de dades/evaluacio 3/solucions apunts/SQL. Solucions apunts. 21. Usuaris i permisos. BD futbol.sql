-- EXERCICIS. USUARIS I PERMISOS (BD futbol)

use lliga1213;

-- 1.	Crea els usuaris entrenador, jugador, aficionat, prova i prova2, 
-- que tinguen com a clau la mateixa que el nom d’usuari
-- drop user entrenador@localhost, jugador@localhost, aficionat@localhost, 
-- prova@localhost, prova2@localhost;
create user 
  entrenador@localhost  identified by 'entrenador',
  jugador@localhost  identified by 'jugador',
  aficionat@localhost  identified by 'aficionat',
  prova@localhost  identified by 'prova',
  prova2@localhost  identified by 'prova2';

-- select * from mysql.user order by user;

-- 2.	Canvia el password de l’entrenador i posa-li: mister. 
-- No està als apunts. Consulta a Internet com fer-ho.
grant usage on * to entrenador identified by 'mister';
-- O bé:
set password for entrenador = 'mister';

-- 3.	Esborra l’usuari prova2.
drop user prova2;

-- 4.	Dóna permís a l’usuari entrenador per a vore 
-- totes les dades de la bd, de forma que l’entrenador 
-- també puga donar eixos permisos a qui vullga.
grant select
  on *
  to entrenador
  with grant option;

-- 5.	Mostra els permisos de l’usuari entrenador.
show grants for entrenador;

-- 6.	Dóna permís a l’usuari aficionat per a vore les dades de la vista classif2.
grant select
  on classif2
  to aficionat;

-- 7.	Dóna permís de lectura a prova sobre la taula equips 
-- per a vore totes les dades llevat del pressupost. 

-- Nota: no faig el grant select en general (sense especificar columes)
-- ja que, si no, després no podré llevar-li el permís de vore el pressupost.
grant select(codi, nomcurt, nomllarg, ciutat, entrenador, estadi, 
			marca, patrocinador, pressupost)
  on equips
  to prova;
  
revoke select(pressupost)
  on equips 
  from prova;

  
-- 8.	Dóna permís a l’entrenador per a modificar el lloc i el nom dels jugadors
grant update(lloc, nom)
  on jugadors
  to entrenador;

-- 9.	Dóna permís a l’entrenador per a esborrar jugadors, golejadors i porters. 
grant delete on jugadors to entrenador;
grant delete on golejadors to entrenador;
grant delete on porters to entrenador;


-- 10.	Lleva tots els permisos a l’usuari prova.
revoke all, grant option
  from prova;

-- 11.	Dóna permís per a modificar totes les dades de la taula equips 
-- a l’usuari prova però només per a fer-ho des del mateix ordinador 
-- on està guardada la base de dades.
grant update
  on equips
  to prova@localhost; 
  -- Nota: primer haurem de dir-li password


-- 12.	Dóna permís a prova per a vore només les dades dels partits 
-- del barça. Esta té truc. 
create view partits_bar as
  select * 
  from partits 
  where equipc="bar" or equipf="bar";
  
grant select
  on partits_bar
  to prova;

