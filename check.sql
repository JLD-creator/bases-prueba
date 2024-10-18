y	DROP DATABASE IF EXISTS checks;
CREATE DATABASE checks;
USE checks;

-- El check *IN LINE * solo puede referise a su propio atributo.
-- EL check al final me permite relacionar varios atributos.
CREATE TABLE checks (
	a INT CHECK (a>= 3),
	b INT,
	c INT,
	CHECK (b < 10),
	CHECK (a > c), 
	CHECK (a <> b),
	-- para dar un nombre al check
	CONSTRAINT chk_nombre CHECK (b > a AND b > c)
);
INSERT INTO checks VALUES (1,1,1);
SELECT * FROM checks;	
