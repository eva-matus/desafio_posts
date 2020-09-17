Desafío - Operaciones en una tabla

Instrucciones
Parte 1

1. Crear Base de datos posts (1 punto)

eva=# CREATE DATABASE posts;
CREATE DATABASE

2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,
descripción (1 punto)

2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,
descripción (1 punto)

eva=# CREATE TABLE post(id SERIAL,
eva(# nombre_de_usuario VARCHAR,
eva(# fecha_de_creacion DATE,
eva(# contenido VARCHAR,
eva(# descripcion VARCHAR,
eva(# PRIMARY KEY(id));
CREATE TABLE

3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" (0.6 puntos)

INSERTANDO DOS POST PARA PAMELA:

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-12-09', 'clienta endeudada', 'compradora compulsiva');
INSERT 0 1

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-12-09', 'clienta endeudada', 'compradora en cuotas');
INSERT 0 1

INSERTANDO UN POST PARA CARLOS:

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Carlos', '2020-11-17', 'cliente deudor', 'comprador problematico');
INSERT 0 1

eva=# SELECT * FROM post;

 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       
----+-------------------+-------------------+-------------------+------------------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico
(3 rows)

4. Modificar la tabla post, agregando la columna título (1 punto)

ALTER TABLE DB:

eva=# ALTER TABLE post ADD titulo VARCHAR;
ALTER TABLE

eva=# SELECT * FROM post;


 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       | titulo 
----+-------------------+-------------------+-------------------+------------------------+--------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | 
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | 
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | 
(3 rows)

5. Agregar título a las publicaciones ya ingresadas ( (1 punto)

ALTER TABLE PARA EL PRIMER USUARIO:

eva=# UPDATE post SET titulo = 'Clienta feliz' WHERE ID = 1;
UPDATE 1

eva=# UPDATE post SET titulo = 'Clienta feliz' WHERE ID = 6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)2;
UPDATE 1

ALTER TABLE SOLO PARA EL SEGUNDO USUARIO:

eva=# UPDATE post SET titulo = 'Clienta feliz' WHERE ID = 3;
UPDATE 1

 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       |    titulo     
----+-------------------+-------------------+-------------------+------------------------+---------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | Clienta feliz
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | Clienta feliz
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | Clienta feliz
(3 rows)


6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-03-09', 'Cliente al dia', 'Deudas claras', 'Cliente contento');
INSERT 0 1

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-03-09', 'Cliente al dia', 'Sin deudas', 'Cliente tranquilo');
INSERT 0 1

eva=# SELECT * FROM post;

 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       |      titulo       
----+-------------------+-------------------+-------------------+------------------------+-------------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | Clienta feliz
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | Clienta feliz
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | Clienta feliz
  4 | Pedro             | 2020-03-09        | Cliente al dia    | Deudas claras          | Cliente contento
  5 | Pedro             | 2020-03-09        | Cliente al dia    | Sin deudas             | Cliente tranquilo
(5 rows)


7. Eliminar el post de Carlos (1 punto)


eva=# DELETE FROM post WHERE id = 5;
DELETE 1

eva=# DELETE FROM post WHERE id = 4;
DELETE 1
eva=# SELECT * FROM post;


 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       |    titulo     
----+-------------------+-------------------+-------------------+------------------------+---------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | Clienta feliz
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | Clienta feliz
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | Clienta feliz
(3 rows)


8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)

eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Carlos', '2020-11-17', 'Cliente deudor', 'Comprador problematico', 'Cliente contento');
INSERT 0 1

eva=# SELECT * FROM post;


 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       |      titulo      
----+-------------------+-------------------+-------------------+------------------------+------------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | Clienta feliz
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | Clienta feliz
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | Clienta feliz
  6 | Carlos            | 2020-11-17        | Cliente deudor    | Comprador problematico | Cliente contento
(4 rows)



Parte 2


9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,
contenido, que se relacione con la tabla posts. (1 punto)


eva=# CREATE TABLE comentarios(
eva(# id SERIAL,
eva(# fecha_y_hora TIMESTAMP,
eva(# contenido VARCHAR,
eva(# FOREIGN KEY(id) REFERENCES post(id));
CREATE TABLE

eva=# SELECT * FROM comentarios;
 id | fecha_y_hora | contenido 
----+--------------+-----------
(0 rows)


10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)

DOS COMENTARIOS PARA EL POST DE 'PAMELA':


eva=# INSERT INTO comentarios(fecha_y_hora, contenido) VALUES('2020-12-09 20:09:08', 'Clienta');
INSERT 0 1
eva=# INSERT INTO comentarios(fecha_y_hora, contenido) VALUES('2020-12-09 19:14:46', 'Clienta');
INSERT 0 1

CUATRO COMENTARIOS PARA EL POST DE CARLOS:


eva=# INSERT INTO comentarios(fecha_y_hora, contenido) VALUES('2020-11-17 19:14:46', 'Cliente');
INSERT 0 1

eva=# INSERT INTO comentarios(fecha_y_hora, contenido) VALUES('2020-09-25 15:20:00', 'Cliente1');
INSERT 0 1

eva=# INSERT INTO comentarios(id, fecha_y_hora, contenido) VALUES('3', '2020-09-25 22:14:25', 'Cliente chevere');
INSERT 0 1

eva=# INSERT INTO comentarios(id, fecha_y_hora, contenido) VALUES('6', '2020-09-25 22:14:25', 'Cliente chevere');
INSERT 0 1



11. Crear un nuevo post para "Margarita" (1 punto)


eva=# INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)  VALUES('Margrita', '2020-03-17', 'Clientes', 'Cliente nueva', 'Valiosa');
INSERT 0 1

 id | nombre_de_usuario | fecha_de_creacion |     contenido     |      descripcion       |      titulo      
----+-------------------+-------------------+-------------------+------------------------+------------------
  1 | Pamela            | 2020-12-09        | clienta endeudada | compradora compulsiva  | Clienta feliz
  2 | Pamela            | 2020-12-09        | clienta endeudada | compradora en cuotas   | Clienta feliz
  3 | Carlos            | 2020-11-17        | cliente deudor    | comprador problematico | Clienta feliz
  6 | Carlos            | 2020-11-17        | Cliente deudor    | Comprador problematico | Cliente contento
  7 | Margrita          | 2020-03-17        | Clientes          | Cliente nueva          | Valiosa
(5 rows)


