DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

CREATE TABLE ej1 (
	a INT,
	b DATE,
	c VARCHAR(5)
);

INSERT INTO ej1 VALUES (1, '2020-04-04' , 'ASA');
INSERT INTO ej1  (b,c,a) VALUES ('2021-07-2',' hola', 9);
INSERT INTO ej1  (c,b) VALUES('bye', '2024-10-08');
INSERT INTO ej1  (b) VALUES ('2024-10-21');

SELECT * FROM ej1;


CREATE TABLE ej2 (
	a INT NOT NULL,
	b INT NOT NULL DEFAULT 0,
	c VARCHAR(5),
	d VARCHAR (5) DEFAULT 'HOLA'
);
INSERT INTO ej2 (a,b,d) VALUES (9, 6, 'pepe');
INSERT INTO ej2 (a,b,c) VALUES (3, 8, 'agua');
INSERT INTO ej2 (c,a,d) VALUES ('pipi', 12, NULL);
INSERT INTO ej2 (a) VALUES (99);
INSERT INTO ej2 (a,d) VALUES (45, NULL);

SELECT * FROM ej2;


CREATE TABLE ej3 (
	a INT AUTO_INCREMENT PRIMARY KEY,
	b VARCHAR(5) UNIQUE KEY,
	c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3 (b, c) VALUES ('papa', 'preba');
INSERT INTO ej3 (b, c) VALUES ('batma', 'cosa');
INSERT INTO ej3  VALUES (5, 'bla', 'pepe');
INSERT INTO ej3 (b,c) VALUES ('otra', 'mas');

SELECT * FROM ej3;
