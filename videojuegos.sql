DROP DATABASE IF EXISTS videojuegos;
CREATE DATABASE videojuegos;
USE videojuegos;

CREATE TABLE desarrollador (
	nombre VARCHAR(100) PRIMARY KEY
);
CREATE TABLE juego (
	id INT PRIMARY KEY,
	nombre VARCHAR(100),
	fk_desarrollador VARCHAR(100),
	FOREIGN KEY (fk_desarrollador) REFERENCES desarrollador(nombre)
	ON DELETE CASACADE
);
CREATE TABLE personaje (
	nombre VARCHAR(100) PRIMARY KEY,
	vida FLOAT,
	fk_juegos INT,
	FOREIGN KEY (fk_juegos) REFERENCES juego(id)
	ON DELETE SET NULL
);
INSERT INTO desarrollador VALUES ('Buggy soft');
INSERT INTO juego VALUES
	 (1, 'capitan salami', 'Buggy soft'),
	(2, 'capitan salami vegan', 'Buggy soft');
INSERT INTO personaje VALUES 
	 ('Capitan salami', 200, 1),
	('Señor cuchiller', 200, 1),
	('Capitan seitan', 200, 2),
	('Señor cucharilla', 200, 2);

SELECT * FROM desarrollador;
SELECT * FROM juego;
SELECT * FROM personaje;

--DELETE FROM juego WHERE id=1;
DELETE FROM desarrollador WHERE nombre='Buggy soft';
SELECT * FROM juego;
SELECT * FROM personaje;
