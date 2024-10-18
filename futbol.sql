DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipo (
	id INT PRIMARY KEY,
	nombre VARCHAR(100),
	ciudad VARCHAR(100)
);

CREATE TABLE jugador (
	dni VARCHAR(100) PRIMARY KEY,
	nombre VARCHAR(100),
	nacionalidad VARCHAR (100),
	dorsal INT,
	altura FLOAT,
	id_equipo INT,
	FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);

INSERT INTO equipo VALUES (1, 'Real Madrid', 'Madrid');
INSERT INTO equipo VALUES (2, 'PSG', 'Paris');
INSERT INTO jugador VALUES ('23456789P', 'Lucas Vazquez', 'España', 17, 1.70, 1);
INSERT INTO jugador VALUES ('54623098Q', 'Rodrygo', 'Brasil', 11, 1.75, 1);
INSERT INTO jugador VALUES ('98764509M', 'Nuno Mendes', 'Portugal', 23, 1.68, 2);
INSERT INTO jugador VALUES ('21093456K', 'Barcola', 'Francia', 10, 1.78, 2);
