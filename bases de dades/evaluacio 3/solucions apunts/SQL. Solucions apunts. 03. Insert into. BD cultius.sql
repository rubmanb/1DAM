-- EXERCICIS. INSERT INTO (BD cultius)

use cultius;

-- 1)	Inserix un nou tipus de cultiu de codi ARR i nom Arròs
insert into tipus_cultius values ('ARR', 'Arròs');

-- 2)	Inserix un nou país de nom Espanya del continent Europa.
insert into paisos values('ESP', 'Espanya', 'Europa');

-- 3)	 Inserix les següents 4 províncies, en una sola sentència:
-- València, amb 1 milió d’habitants
-- Alacant, amb 700000 d’habitants
-- Castelló, amb mig milió d’habitants
-- Madrid, amb 2 milions d’habitants
insert into provincies (cod, pai, nom, hab) values
('VAL', 'ESP', 'València', 1000000),
('ALA', 'ESP', 'Alacant', 700000),
('CAS', 'ESP', 'Castelló', 500000),
('MAD', 'ESP', 'Madrid', 2000000);

-- 4)	 Inserix la comarca “Ribera Baixa”, de codi RB
insert into comarques values('RB', 'Ribera Baixa', 'VAL', 'ESP');
