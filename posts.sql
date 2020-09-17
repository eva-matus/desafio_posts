Desafío - Operaciones en una tabla

Instrucciones
Parte 1
1. Crear Base de datos posts (1 punto)

Instrucciones
Parte 1
1. Crear Base de datos posts (1 punto)

postgres=# \c eva
You are now connected to database "eva" as user "postgres".
eva=# CREATE DATABASE posts;
CREATE DATABASE

2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,
descripción (1 punto)

eva=# CREATE TABLE posts(
eva(# id SERIAL,
eva(# usuario VARCHAR(25),
eva(# fecha_de_creacion DATE,
eva(# contenido VARCHAR,
eva(# descripcion VARCHAR,
eva(# PRIMARY KEY (id));
CREATE TABLE

3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" (0.6 puntos)

eva=# INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion)
VALUES('Pamela', '2020-12-31', 'Base de datos posts', 'Contenido tabla'
);
INSERT 0 1

EJECUTAR PARA LAVISUALIZACION DEL CONTENIDO:

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |   descripcion   
----+---------+-------------------+---------------------+-----------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla
(1 row)
(END)

SEGUNDO POSTS PARA 'PAMELA':

eva=# INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion)
VALUES('Pamela', '2020-12-31', 'datos posts', 'Contenido client'
eva(# );
INSERT 0 1

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    
----+---------+-------------------+---------------------+-------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente
(2 rows)
(END)

POSTS PARA CARLOS:

eva=# INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion)
eva-# VALUES('Carlos', '2020-09-24', 'datos posts', 'Contenido cliente'
eva(# );
INSERT 0 1

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    
----+---------+-------------------+---------------------+-------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente
(3 rows)

(END)

4. Modificar la tabla post, agregando la columna título (1 punto)

eva=# ALTER TABLE posts ADD titulo VARCHAR;
ALTER TABLE

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    | titulo 
----+---------+-------------------+---------------------+-------------------+--------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | 
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | 
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | 
(3 rows)
(END)

5. Agregar título a las publicaciones ya ingresadas ( (1 punto)

ALTER TABLE SOLO PARA EL PRIMER USUARIO:

eva=# UPDATE posts SET titulo = 'Cliente contento' WHERE ID = 1;
UPDATE 1

ALTER TABLE SOLO PARA EL SEGUNDO USUARIO:

eva=# UPDATE posts SET titulo = 'Cliente molesto' WHERE ID = 2;
UPDATE 1

ALTER TABLE SOLO PARA EL TERCER USUARIO:

eva=# UPDATE posts SET titulo = 'Cliente chevere' WHERE ID = 3;
UPDATE 1

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    |      titulo      
----+---------+-------------------+---------------------+-------------------+------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | Cliente contento
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | Cliente molesto
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | Cliente chevere
(3 rows)

6. Insertar 2 post para el usuario "Pedro" (0.4 puntos)

INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion)
eva-# VALUES('Pedro', '2019-05-14', 'datos posts', 'Contenido cliente'
eva(# );
INSERT 0 1

eva=# UPDATE posts SET titulo = 'Cliente satisfecho' WHERE ID = 4;
UPDATE 1

eva=# UPDATE posts SET titulo = 'Cliente feliz' WHERE ID = 4;
UPDATE 1

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    |      titulo      
----+---------+-------------------+---------------------+-------------------+------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | Cliente contento
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | Cliente molesto
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | Cliente chevere
  4 | Pedro   | 2019-05-14        | datos posts         | Contenido cliente | Cliente feliz
(4 rows)
(END)

7. Eliminar el post de Carlos (1 punto)

eva=# DELETE FROM posts WHERE id = 5;
DELETE 0

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    |      titulo      
----+---------+-------------------+---------------------+-------------------+------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | Cliente contento
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | Cliente molesto
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | Cliente chevere
  4 | Pedro   | 2019-05-14        | datos posts         | Contenido cliente | Cliente feliz
(4 rows)

(END)

8. Ingresar un nuevo post para el usuario "Carlos" (0.6 puntos)

eva=# INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion) VALUES('Carlos', '2020-10-28', 'datos posts', 'Contenido cliente');
INSERT 0 1

eva=# SELECT * FROM posts;

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    |      titulo      
----+---------+-------------------+---------------------+-------------------+------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | Cliente contento
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | Cliente molesto
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | Cliente chevere
  4 | Pedro   | 2019-05-14        | datos posts         | Contenido cliente | Cliente feliz
  5 | Carlos  | 2020-10-28        | datos posts         | Contenido cliente | 
(5 rows)
(END)

eva=# UPDATE posts SET titulo = 'Cliente feliz' WHERE ID = 6;
UPDATE 0

 id | usuario | fecha_de_creacion |      contenido      |    descripcion    |      titulo      
----+---------+-------------------+---------------------+-------------------+------------------
  1 | Pamela  | 2020-12-31        | Base de datos posts | Contenido tabla   | Cliente contento
  2 | Pamela  | 2020-12-31        | datos posts         | Contenido cliente | Cliente molesto
  3 | Carlos  | 2020-09-24        | datos posts         | Contenido cliente | Cliente chevere
  4 | Pedro   | 2019-05-14        | datos posts         | Contenido cliente | Cliente feliz
  5 | Carlos  | 2020-10-28        | datos posts         | Contenido cliente | 
(5 rows)



Parte 2



9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,
contenido, que se relacione con la tabla posts. (1 punto)

eva=# CREATE TABLE  comentarios(
eva(# id SERIAL,
eva(# fecha_creacion TIMESTAMP,
eva(# contenido VARCHAR(255),
eva(# id_posts INT,
eva(# FOREIGN KEY(id) REFERENCES posts(id),
eva(# PRIMARY KEY(id));
CREATE TABLE
eva=# 
eva=# SELECT * FROM comentarios;
 id | fecha_creacion | contenido | id_posts 
----+----------------+-----------+----------
(0 rows)

10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" (0.4 puntos)

eva=# INSERT INTO comentarios(fecha_creacion, contenido, id_posts)
VALUES('2020-12-31', 'clienta mejorada', '2');
INSERT 0 1

INSERT INTO comentarios(fecha_creacion, contenido, id_posts)
VALUES('2020-12-31', 'clienta', '2');
INSERT 0 1

eva=# SELECT * FROM comentarios;
 id |  fecha_creacion  |    contenido     | id_posts 
----+---------------------+------------------+----------
  1 | 2020-12-31 00:00:00 | clienta mejorada |        2
  2 | 2020-12-31 00:00:00 | clienta          |        2
(2 rows)

eva=# INSERT INTO comentarios(fecha_creacion, contenido, id_posts)
VALUES('2020-12-31', 'cliente serio', '3');
INSERT 0 1

eva=# INSERT INTO comentarios(fecha_creacion, contenido, id_posts)
VALUES('2020-12-31', 'cliente', '6');
INSERT 0 1

eva=# INSERT INTO comentarios(fecha_creacion, contenido, id_posts)
VALUES('2020-12-01', 'cliente', '6');
INSERT 0 1

eva=# INSERT INTO comentarios(fecha_creacion, contenido, id_posts) VALUES('2020-12-01', 'cliente', '6');
INSERT 0 1


eva=# SELECT * FROM comentarios;
 id |  fecha_creacion  |    contenido     | id_posts 
----+---------------------+------------------+----------
  1 | 2020-12-31 00:00:00 | clienta mejorada |        2
  2 | 2020-12-31 00:00:00 | clienta          |        2
  3 | 2020-12-31 00:00:00 | cliente serio    |        3
  4 | 2020-12-31 00:00:00 | cliente          |        6
  5 | 2020-12-01 00:00:00 | cliente          |        6
  6 | 2020-12-01 00:00:00 | cliente          |        6
(6 rows)

11. Crear un nuevo post para "Margarita" (1 punto)

eva=# INSERT INTO posts(usuario, fecha_de_creacion, contenido, descripcion) VALUES('Margarita', '2020-09-24', 'Base de datos', 'Clienta nueva');
INSERT 0 1


