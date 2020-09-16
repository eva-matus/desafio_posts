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


