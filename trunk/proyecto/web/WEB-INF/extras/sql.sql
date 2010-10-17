create database cinepelis;
use cinepelis;

CREATE TABLE TB_Cartelera (
  id_cartelera INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_Pelicula INTEGER UNSIGNED NOT NULL,
  num_Sala INTEGER UNSIGNED NOT NULL,
  fecha_inicio DATE NULL,
  hora TIME NOT NULL,
  fecha_fin DATE NULL,
  PRIMARY KEY(id_cartelera),
  INDEX TB_Cartelera_FKIndex1(num_Sala),
  INDEX TB_Cartelera_FKIndex2(id_Pelicula)
);

CREATE TABLE TB_Cliente (
  id_Cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NULL,
  telefono VARCHAR(20) NULL,
  email VARCHAR(120) NULL,
  tipo_tarjeta INTEGER UNSIGNED NULL,
  num_tarjeta VARCHAR(20) NULL,
  PRIMARY KEY(id_Cliente)
);

CREATE TABLE TB_Detalle_Venta (
  id_Venta INTEGER UNSIGNED NOT NULL,
  num_butaca INTEGER UNSIGNED NULL,
  INDEX TB_Detalle_Venta_FKIndex1(id_Venta)
);

CREATE TABLE TB_Pelicula (
  id_Pelicula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(150) NULL,
  genero VARCHAR(20) NULL,
  duracion TIME NULL,
  director VARCHAR(255) NULL,
  actores TEXT NULL,
  censura INTEGER UNSIGNED NULL,
  web VARCHAR(255) NULL,
  sinopsis TEXT NULL,
  periodo INTEGER UNSIGNED NULL,
  foto VARCHAR(255) NULL,
  PRIMARY KEY(id_Pelicula)
);

CREATE TABLE TB_Puntos (
  id_Cliente INTEGER UNSIGNED NOT NULL,
  cant_puntos INTEGER UNSIGNED NULL,
  INDEX TB_Puntos_FKIndex1(id_Cliente)
);

CREATE TABLE TB_Sala (
  num_Sala INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  capacidad INTEGER UNSIGNED NOT NULL,
  is_3d CHAR(1) NOT NULL,
  PRIMARY KEY(num_Sala)
);

CREATE TABLE TB_Usuario (
  id_Usuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  usuario VARCHAR(30) NOT NULL,
  clave VARCHAR(20) NOT NULL,
  perfil CHAR(1) NOT NULL,
  PRIMARY KEY(id_Usuario)
);

CREATE TABLE TB_Venta (
  id_Venta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_Usuario INTEGER UNSIGNED NOT NULL,
  id_cartelera INTEGER UNSIGNED NOT NULL,
  id_Cliente INTEGER UNSIGNED NOT NULL,
  fecha_venta DATETIME NULL,
  cant_entradas INTEGER UNSIGNED NULL,
  promocion BOOL NULL,
  PRIMARY KEY(id_Venta),
  INDEX TB_Venta_FKIndex1(id_Cliente),
  INDEX TB_Venta_FKIndex2(id_cartelera),
  INDEX TB_Venta_FKIndex3(id_Usuario)
);


