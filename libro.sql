DROP DATABASE IF EXISTS libros;
CREATE DATABASE libros;
USE libros;

CREATE TABLE autor (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50),
	dni VARCHAR(10) UNIQUE KEY
);

CREATE TABLE tienda (
	cif VARCHAR(20) PRIMARY KEY,
	ubicacion VARCHAR(30),
	web VARCHAR(100)
);

CREATE TABLE libro (
        isbn INT PRIMARY KEY,
        titulo VARCHAR(50),
        genero VARCHAR(50) DEFAULT 'Fantasia',
        precio DOUBLE,
	id_autor INT,
        fecha_publicacion DATE	,
	cif_tienda VARCHAR(20),
        CHECK (fecha_publicacion > 2014),
        CHECK (precio < 50),
	FOREIGN KEY (id_autor) REFERENCES autor(id),
	FOREIGN KEY (cif_tienda) REFERENCES tienda(cif) 
);

INSERT INTO autor (nombre, dni)  VALUES ('Pepe lagarto', '90812334A');
INSERT INTO tienda VALUES ('58979033', 'Madrid', 'https:/tiena');
INSERT INTO libro (isbn, titulo, precio, id_autor, fecha_publicacion, cif_tienda) VALUES (3647, 'El despertar', 45, 1, '2023-04-06', '58979033');

SELECT * FROM  autor;
SELECT * FROM tienda;
SELECT * FROM libro;
