-- EXERCICIS. VISTES (BD futbol)
use lliga1213;

-- 1. Crear una vista:

-- a) Crea la vista jug_sue amb el dorsal, nom i lloc 
-- dels jugadors de l’equip de codi ‘sue’ 
-- (no existeix en la taula de jugadors però dóna igual). 
-- No li poses la clàusula del check option.
create view jug_sue as
select dorsal, nom, lloc
from jugadors
where equip = "sue";

-- b) Comprova el contingut de la vista jug_sue. 
-- Caldrà fer un select sobre la vista.
-- Voràs que no té res, ja que no hi ha jugadors d’eixe equip.
select * from jug_sue;

-- 2. Comprovació del funcionament de la vista.
-- a) Inserix l’equip tav (Tavernes C.F.) i el sue (Sueca United) 
-- en la taula d’equips.
insert into equips(codi, nomcurt) values
("tav", "Tavernes, C.F."),
("sue", "Sueca United");

-- b) Inserix en la taula de jugadors dos nous davanters: 
-- Pep, del Tavernes C.F. i Pau, Sueca United.
insert into jugadors (equip, dorsal, lloc, nom) values
("sue", 100, "porter", "Pau"),
("tav", 100, "porter", "Pep");

-- c) Comprova el contingut de la vista jug_sue. 
-- Voràs que ara la vista “sí que té” un jugador (Pau). 
-- Realment “no el té” però a través de la vista estem mirant els
-- jugadors de la taula de jugadors que són del Sueca United.
select * from jug_sue;


-- d) Fes que el jugador del Tavernes C.F. ara el fitxe 
-- el Sueca United (si cal, canviar-litambé el dorsal). 
-- Caldrà fer un update.
update jugadors
set equip = "sue",
    dorsal = 101
where equip = "tav"
  and dorsal = 100;

-- e) Torna a comprovar el contingut de la vista jug_sue. 
-- Ara estarem veient dos jugadors (Pau i Pep).
select * from jug_sue;

-- f) Esborra a Pep de la taula jugadors. 
-- Cal fer delete sobre la taula.
delete from jugadors
where equip = "sue" 
  and nom = "Pep";


-- g) Esborra a Pau a través de la vista jug_sue. 
-- Cal fer delete sobre la vista.

delete from jug_sue
where nom = "Pau";

-- h) Comprova el contingut de la vista jug_sue. 
-- Ja no deu estar ningú dels dos.
select * from jug_sue;

-- Comprova que tampoc estan en la taula jugadors.
select * from jugadors
where nom = "Pau";

-- i) Intenta inserir a Pau a través de la vista jug_sue. 
-- Et donarà error perquè en l’insert no li posem el codi de l’equip i, 
-- per tant, quan s’intente inserir en la taula de jugadors 
-- no admetrà un null en el camp del equip. 
-- Però si no fóra per això, sí que es permet inserir a través d’una vista.
insert into jug_sue (dorsal, nom)
values (105, "Pau");

-- 3. Eliminar una vista:
-- a) Elimina la vista anterior (jug_sue). 
-- No que esborres els seus registres, sinó que la destruïsques. 
-- Caldrà fer un drop de la vista. Això no afecta a la taula 
-- sobre la qual estava definida.
drop view jug_sue;

-- 4. Crear una vista amb el check option:
-- a) Crea la vista equipets amb el codi, nomcurt i pressupost 
-- de tots els equips que tinguen un pressupost inferior a 30 milions d’euros.
-- Fes-ho amb el check option.
create view equipets as
select codi, nomcurt, pressupost
from equips
where pressupost < 30
with check option;

-- b) Insereix a través de la vista equipets estos equips, en 2 inserts:
-- - Equip “gan”, “C.F. Gandia”, amb 0 milions d’euros de pressupost.
insert into equipets
values ("gan", "C.F. Gandia", 0);

-- - Equip “and”, “Andorra C.F”, amb 31 milions d’euros de pressupost. 
-- Ha de donar error per no complir la condició del check option.
insert into equipets values
("and", "Andorra C.F", 31);


-- c) Esborra a través de la vista equipets els equips 
-- de més de 40 m. de pressupost. 
-- No donarà error però no esborrarà cap equip, degut al check option.
delete from equipets
where pressupost > 40;
-- Comprovem que no ho ha esborrat:
select * from equips where pressupost > 40;


-- d) A través de la vista equipets fes que el nou pressupost 
-- del C.F. Gandia ara siga de 31 m. 
-- Donarà error per no complir el check option.
update equipets
set pressupost = 31
where codi = "gan";


-- 5. Crear una vista no actualitzable:
-- a) Crea la vista equips_nombrosos amb el codi de l’equip,
-- el nom curt, el nom de la ciutat i la quantitat de jugadors de cadascun. 
-- Però només amb aquells equips que tinguen més de 30 jugadors en plantilla. 
-- Els noms de les columnes seran: codi, nom, ciutat, plantilla.
create view equips_nombrosos as
select e.codi, e.nomcurt as nom, 
       c.nom as ciutat, count(*) as plantilla
from equips e, ciutats c, jugadors j
where e.ciutat = c.codi
and e.codi = j.equip
group by e.codi, e.nomcurt, c.nom
having count(*) > 30;

-- b) En la vista equips_nombrosos modifica el nom de l’equip 
-- del Betis (codi “bet”): ara es dirà “Betis”. 
update en
set codi = "Betis"
where codi = "bet";

-- Donarà un error dient que la vista no és actualitzable. 
-- No ho és perquè com té group by (i multitaula), no es pot “traduir” 
-- eixe update sobre la vista a un update sobre taules. 
-- El mateix passaria si intentem fer inserts o deletes sobre eixa vista.
