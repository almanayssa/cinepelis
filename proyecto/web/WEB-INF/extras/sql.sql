CREATE TABLE tb_pelicula (
  id_pelicula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY(id_pelicula)
);

CREATE TABLE tb_sala (
  num_Sala INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  capacidad INTEGER UNSIGNED NOT NULL,
  is_3d CHAR(1) NOT NULL,
  PRIMARY KEY(num_Sala)
);

CREATE TABLE tb_usuario (
  id_usuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  usuario VARCHAR(30) NOT NULL,
  clave VARCHAR(20) NOT NULL,
  perfil CHAR(1) NOT NULL,
  PRIMARY KEY(id_usuario)
);

CREATE TABLE tb_cliente (
  id_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  telefono VARCHAR(20) NULL,
  email VARCHAR(120) NULL,
  tipo_tarjeta CHAR(1) NULL,
  num_tarjeta VARCHAR(20) NULL,
  PRIMARY KEY(id_cliente)
);

CREATE TABLE tb_puntos (
  id_cliente INTEGER UNSIGNED NOT NULL,
  cant_puntos INTEGER UNSIGNED NULL,
  INDEX tb_puntos_FKIndex1(id_cliente),
  FOREIGN KEY(id_cliente)
    REFERENCES tb_cliente(id_cliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_cartelera (
  id_cartelera INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_pelicula INTEGER UNSIGNED NOT NULL,
  num_Sala INTEGER UNSIGNED NOT NULL,
  fecha_inicio DATE NULL,
  hora TIME NOT NULL,
  fecha_fin DATE NULL,
  PRIMARY KEY(id_cartelera),
  INDEX tb_cartelera_FKIndex2(num_Sala),
  INDEX tb_cartelera_FKIndex2(id_pelicula),
  FOREIGN KEY(num_Sala)
    REFERENCES tb_sala(num_Sala)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_pelicula)
    REFERENCES tb_pelicula(id_pelicula)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_venta (
  id_venta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_cartelera INTEGER UNSIGNED NOT NULL,
  id_cliente INTEGER UNSIGNED NOT NULL,
  id_usuario INTEGER UNSIGNED NOT NULL,
  fecha_venta DATETIME NULL,
  cant_entradas INTEGER UNSIGNED NULL,
  promocion BOOL NULL,
  PRIMARY KEY(id_venta),
  INDEX tb_venta_FKIndex2(id_usuario),
  INDEX tb_venta_FKIndex3(id_cliente),
  INDEX tb_venta_FKIndex3(id_cartelera),
  FOREIGN KEY(id_usuario)
    REFERENCES tb_usuario(id_usuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_cliente)
    REFERENCES tb_cliente(id_cliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_cartelera)
    REFERENCES tb_cartelera(id_cartelera)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_detalle_venta (
  id_venta INTEGER UNSIGNED NOT NULL,
  num_butaca INTEGER UNSIGNED NULL,
  INDEX tb_detalle_venta_FKIndex1(id_venta),
  FOREIGN KEY(id_venta)
    REFERENCES tb_venta(id_venta)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


