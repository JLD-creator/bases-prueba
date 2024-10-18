DROP DATABASE IF EXISTS tiposdatos;
CREATE DATABASE tiposdatos;
USE tiposdatos;
CREATE TABLE TiposDatos (
	flotante FLOAT(5,2),
	decimales DECIMAL(7,5),
	codigo CHAR(4),
	texto TEXT,
	dia DATE,
	momento DATETIME,
	hora TIME,
	color ENUM('ROJO' ,'VERDE', 'AZUL')
);
INSERT INTO TiposDatos VALUES ( 23.1, 77.12, 'abcd', 'Textooooooooooooooooo', '2024-09-04', '2024-09-04 11:59:00', '11:59:27', 'VERDE');
INSERT INTO TiposDatos VALUES (7.15, 8.3)
