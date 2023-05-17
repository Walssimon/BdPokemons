CREATE DATABASE aulateste;

USE aulateste;

CREATE TABLE pessoas (
	ID INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	CHECK (Idade >= 18) 
);

INSERT INTO pessoas
VALUES(1,'Astrogildo','Planetario',25);
INSERT INTO pessoas
VALUES(2,'Berisvaldo','Planetario',15);

------------------------------------------------------------------------+

CREATE TABLE pessoas (
	ID INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	CHECK (Idade BETWEEN 18 AND 60) 
);

INSERT INTO pessoas
VALUES(1,'Astrogildo','Planetario',25);
INSERT INTO pessoas
VALUES(2,'Berisvaldo','Planetario',18);
INSERT INTO pessoas
VALUES(3,'Gumercindo','Pereira',61);

--------------------------------------------------------------------------+

CREATE TABLE pessoas (
	ID INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Estado CHAR(2) NOT NULL,
	CHECK (Idade >= 18 AND Estado='SP')

);

INSERT INTO pessoas
VALUES(1,'Astrogildo','Planetario',25,'SP');
INSERT INTO pessoas
VALUES(2,'Berisvaldo','Planetario',18,'RJ');
INSERT INTO pessoas
VALUES(3,'Gumercindo','Pereira',61,'SP');
INSERT INTO pessoas
VALUES(4,'Tiburcio','Salgueira',17,'SP');

--------------------------------------------------------------------------+


CREATE TABLE pessoas (
	ID INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Estado CHAR(2) NOT NULL
);

INSERT INTO pessoas
VALUES(1,'Astrogildo','Planetario',25,'SP');
INSERT INTO pessoas
VALUES(2,'Berisvaldo','Planetario',18,'RJ');
INSERT INTO pessoas
VALUES(3,'Gumercindo','Pereira',61,'SP');
INSERT INTO pessoas
VALUES(4,'Tiburcio','Salgueira',17,'SP');


ALTER TABLE pessoas
ADD CONSTRAINT  CHK_Pessoas 
CHECK (Idade >= 18 AND Estado='SP');

ALTER TABLE pessoas
DROP CONSTRAINT CHK_Pessoas;

--------------------------------------------------------------------------+

CREATE TABLE pessoas (
	ID INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT NOT NULL,
	Estado CHAR(2) NOT NULL DEFAULT 'SP'
);

INSERT INTO pessoas (id,nome,sobrenome,idade)
VALUES(1,'Astrogildo','Planetario',25);
INSERT INTO pessoas (id,nome,sobrenome,idade)
VALUES(2,'Berisvaldo','Planetario',18);
INSERT INTO pessoas
VALUES(3,'Gumercindo','Pereira',61,'SP');
INSERT INTO pessoas
VALUES(4,'Tiburcio','Salgueira',17,'SP');

CREATE TABLE pedidos(
	IDPedido INT NOT NULL PRIMARY KEY,
	DataPedido TIMESTAMP NOT NULL DEFAULT CURRENT_DATE()

);

INSERT INTO pedidos (IDPedido)
VALUES (1),(2),(3);

-------------------------------------------------------------------

CREATE TABLE pedidos(
	IDPedido INT NOT NULL PRIMARY KEY,
	DataPedido DATE NOT NULL

);

ALTER TABLE pedidos
ALTER DataPedido SET DEFAULT CURRENT_DATE();

ALTER TABLE pedidos
ALTER DataPedido DROP DEFAULT;

--------------------------------------------------------------------

CREATE TABLE pessoas (
	ID INT NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
	Idade INT,
	PRIMARY KEY (ID)
);

ALTER TABLE pessoas AUTO_INCREMENT=100;

INSERT INTO pessoas (nome,sobrenome)
VALUES ('Astrogildo', 'Planetario'),
('Berisvaldo', 'Pereira'),
('Gumercindo', 'Oliveira');
------------------------------------------------------------------


CREATE DATABASE Nentendo;

USE Nentendo;

CREATE TABLE Pokemons (
	PokeID INT NOT NULL AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
	Tipo VARCHAR(5) NOT NULL DEFAULT 'Fogo',
	Tamanho INT NOT NULL,
	PRIMARY KEY (PokeID) 
);


ALTER TABLE Tipo

ADD CHECK (Tipo = 'Fogo' AND Tipo ='Terra');

AND 'Gelo' AND 'Vento'

 CHECK (Tamanho = 50 BETWEEN 150);

ALTER TABLE Pokemons AUTO_INCREMENT=100;
