-- EXERCICIS MULTITAULA (BD lliga1213)

use lliga1213;
-- 1. De cada partit volem mostrar els codis dels equips 
-- i el nom de la ciutat on juguen.

select equipc, equipf, ciutats.nom
from partits, equips, ciutats
where partits.equipc = equips.codi
  and equips.ciutat = ciutats.codi;


-- 2. De cada partit que falta per jugar volem mostrar 
-- en quina data es disputarà, els noms curts dels equips, 
-- els noms de les ciutats respectives i el total d’habitants
-- de les dos ciutats.

select jornades.data, ec.nomcurt, ef.nomcurt,
					  cc.nom, cf.nom,
                      (cc.habitants + cf.habitants) as habitants
from jornades, partits,	equips ec, equips ef, ciutats cc, ciutats cf
where jornades.num = partits.jornada
  and partits.equipc = ec.codi and ec.ciutat = cc.codi
  and partits.equipf = ef.codi and ef.ciutat = cf.codi
  and partits.golsc is null;
  
-- 3. De cada equip: el pressupost, el que es gasta amb els jugadors 
-- i el percentatge que representa.
select equips.codi, equips.pressupost as 'pressupost (milions)', 
	   round(sum(jugadors.sou)/1000000, 2) 'sou (milions)', 
	   round((sum(jugadors.sou)/1000000)*100/equips.pressupost, 2) as '% sou sobre el pressupost'
from equips, jugadors
where equips.codi = jugadors.equip
group by equips.codi, equips.pressupost;

-- 4. Llista de jugadors on conste: nom del jugador 
-- i nom de la ciutat on juga.
select jugadors.nom, ciutats.nom
from jugadors, equips, ciutats
where jugadors.equip = equips.codi
  and equips.ciutat = ciutats.codi;
  
-- 5. Quantitat total de gols de penal marcats per equips 
-- de ciutats de menys de 200000 habitants.
select sum(penals)
from golejadors, equips, ciutats
where golejadors.equip = equips.codi
  and equips.ciutat = ciutats.codi
  and ciutats.habitants < 200000;
  
-- 6.	En quines dates s’han enfrontat el València i el Barça (sabent que els codis són 
-- “val” i “bar”). Mostra quin jugava a casa i qui fora i el resultat de gols.
select data, equipc, equipf, golsc, golsf
from partits, jornades
where partits.jornada = jornades.num
    and (      (equipc="bar" and equipf = "val")
              or (equipc="val" and equipf = "bar")     );

-- O bé:

select data, equipc, equipf, golsc, golsf
from partits, jornades
where partits.jornada = jornades.num
    and equipc in ("bar", "val") and equipf in ("bar", "val");

-- 7.	En quines dates s’han enfrontat el València i el Barça 
-- (sabent que els noms curts són “València” i “Barça”). 
-- Mostra quin jugava a casa i qui fora (nom llargs) i el resultat de gols.
select data, ec.nomllarg, ef.nomllarg, golsc, golsf
from partits, jornades, equips as ec, equips as ef
where partits.jornada = jornades.num
    and partits.equipc = ec.codi
    and partits.equipf = ef.codi
    and (      (ec.nomcurt="Barça" and ef.nomcurt = "València")
              or (ec.nomcurt="València" and ef.nomcurt = "Barça")     );

-- 8.	Mostra parelles de jugadors on un d’ells cobra més de 10 voltes que l’altre. 
-- Mostra també els seus sous.
select j1.equip, j1.dorsal, j1.nom, j1.sou, 
          j2.equip, j2.dorsal, j2.nom, j2.sou
    from jugadors j1, jugadors j2
    where j1.sou > (j2.sou*10);

-- 9.	Modifica l’exercici anterior perquè també apareguen els 
-- respectius noms (llargs) dels equips.
select e1.nomllarg, j1.dorsal, j1.nom, j1.sou, 
          e2.nomllarg, j2.dorsal, j2.nom, j2.sou
    from jugadors j1, jugadors j2, equips e1, equips e2
    where j1.equip = e1.codi
        and j2.equip = e2.codi
        and j1.sou > (j2.sou*10);

 
-- 10.	Migcampistes que cobren més que algun davanter del seu equip. 
-- Cal mostrar els 2 noms i els 2 sous.
select mig.equip, "MIG:", mig.nom, mig.sou, "DAV:", dav.nom, dav.sou
from jugadors as mig, jugadors as dav
where mig.equip = dav.equip
    and mig.lloc = "mig" and dav.lloc = "davanter"
    and mig.sou > dav.sou;

-- 11.	Parelles de porter i golejador d’un mateix equip on el golejador 
-- haja marcat més gols que els gols que ha encaixat el porter. 
-- Cal mostrar l’equip i els noms del porter i golejador amb els gols respectius. 
-- Ordenat per l’equip i el nom del porter.
select p.equip, jp.nom as nom_porter, p.gols as gols_porter, 
		jg.nom as nom_golejador, g.gols as gols_golejador
from jugadors jp, porters p, 
         jugadors jg, golejadors g
where jp.equip = p.equip and jp.dorsal = p.dorsal
    and jg.equip = g.equip and jg.dorsal = g.dorsal
    and p.equip = g.equip
    and g.gols > p.gols
order by p.equip, nom_porter;

-- 12.	Volem comparar els gols de Messi i Ronaldo (no sabem el nom complet d’ells). 
-- Mostra el nom del jugador i tota l’estadística dels gols com a jugadors 
-- però només d’ells dos.
select j.nom, g.*
from jugadors j, golejadors g
where (j.equip = g.equip and j.dorsal = g.dorsal)
    and (j.nom like "%Messi%" or j.nom like "%Ronaldo%")

-- Nota: cal anar en compte en:
-- -	La clau aliena és composta: cal enllaçar per equip i dorsal
-- -	Parèntesis obligatoris.


-- 13.	Mitjana de gols marcats en cada jornada i la data de la jornada (un decimal).
select jornades.num, jornades.data, round(avg(golsc+golsf), 1) as mitja_gols
from jornades, partits
where jornades.num = partits.jornada
group by 1, 2;


 
-- 14.	Quants partits ha guanyat/empatat/perdut cada equip, 
-- però sense diferenciar si és a casa o fora (només els totals).

-- Solució amb multitaula (i union):
select equips.codi as equip, count(*) as quantitat, "guanyats" as resultat
  from equips, partits
  where (equips.codi = partits.equipc and partits.golsc>partits.golsf)
      or (equips.codi = partits.equipf and partits.golsf>partits.golsc)
group by 1

union

select equips.codi, count(*) , "empatats"
  from equips, partits
  where (equips.codi = partits.equipc and partits.golsc=partits.golsf)
      or (equips.codi = partits.equipf and partits.golsf=partits.golsc)
group by 1

union

select equips.codi, count(*), "perduts"
  from equips, partits
  where (equips.codi = partits.equipc and partits.golsc<partits.golsf)
      or (equips.codi = partits.equipf and partits.golsf<partits.golsc)
group by 1

order by 1;


-- Altra solució, però amb una línia per equip. 

-- Solucionat amb subconsultes en la clàusula select (sintaxi no vista als apunts):

select c.nomcurt,
        (select count(*)
         from partits
         where (equipc = c.codi and golsc > golsf) 
    or (equipf = c.codi and golsf > golsc)) guanyats,

        (select count(*)
         from partits
         where (equipc = c.codi and golsc < golsf) 
     	    or (equipf = c.codi and golsf < golsc)) perduts,

        (select count(*)
         from partits
         where (equipc = c.codi and golsc = golsf) 
    	    or (equipf = c.codi and golsc = golsf)) empatats
from equips c
group by c.codi;


-- O bé:

select c.nomcurt,
        (select count(*)
         from partits
         where equipc = c.codi and golsc > golsf) 
     + (select count(*)
         from partits
         where equipf = c.codi and golsf > golsc) guanyats,

        (select count(*)
         from partits
         where equipc = c.codi and golsc < golsf) 
     + (select count(*)
         from partits
         where equipf = c.codi and golsf < golsc) perduts,

        (select count(*)
         from partits
         where equipc = c.codi and golsc = golsf) 
     + (select count(*)
         from partits
         where equipf = c.codi and golsc = golsf) empatats
from equips c
group by c.codi;


-- 15.	Quants partits li queda per jugar en total a cada equip?
select codi, count(*) as “partits x jugar”
from equips, partits
where equips.codi in (partits.equipc, partits.equipf) 
and partits.golsc is null
group by codi;

/*
L'anterior sentència tindria l'inconvenient que no trauria els equips als quals no li queda cap partit per jugar. 
La següent sentència sí que ho trau. La solució consisteix en posar la subconsulta en la pròpia clàusula select (no ho hem vist):
*/
select codi, ( select count(*)  
from partits 
		where (equips.codi=equipc or equips.codi=equipf)  
   		     and golsc is null
         ) as "partits x jugar"
from equips;

/*
Això el que fa és mostrar de cada equip:
	- El codi
	- La quantitat de partits, d'eixe equip, que no s'han jugat. 
*/


  
  


