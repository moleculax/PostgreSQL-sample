DROP TABLE IF EXISTS  basket_a ;
DROP  TABLE IF EXISTS  basket_b  ;

--TABLAS DE PRUEBA PARA CONSULTAS INNER JOIN 

CREATE TABLE basket_a (
    id INT PRIMARY KEY,
    fruit VARCHAR (100) NOT NULL
);
 
CREATE TABLE basket_b (
    id INT PRIMARY KEY,
    fruit VARCHAR (100) NOT NULL
);
 
INSERT INTO basket_a (id, fruit)
VALUES
    (1, 'Apple'),
    (2, 'Orange'),
    (3, 'Banana'),
    (4, 'Cucumber');
 
INSERT INTO basket_b (id, fruit)
VALUES
    (1, 'Orange'),
    (2, 'Apple'),
    (3, 'Watermelon'),
    (4, 'Pear');

--EJEMPLOS CONSULTAS INNER JOIN, LEFT JOIN, RIGHT JOIN 

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A INNER JOIN basket_b AS B ON A.fruit=B.fruit;

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A INNER JOIN basket_b AS B ON A.fruit=B.fruit;

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A INNER JOIN basket_b AS B ON A.fruit=B.fruit WHERE B.id IS NULL;

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A LEFT JOIN basket_b AS B ON A.fruit=B.fruit WHERE B.id IS NULL;

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A RIGHT JOIN basket_b AS B ON A.fruit=B.fruit;

SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A RIGHT JOIN basket_b AS B ON A.fruit=B.fruit WHERE A.id IS NULL;

--USO DE FULL OUTER JOIN TRAE TODOS LOS VALORES, LOS DE LA IZQUIERDA,DERECHA E INTERCEPTADOS 
SELECT A.id,A.fruit, B.id,B.fruit FROM basket_a AS A FULL OUTER JOIN basket_b AS B ON A.fruit=B.fruit;


 
