/*drop database cinepelis;*/

create database cinepelis;

CREATE TABLE cinepelis.tb_pelicula (
  id_pelicula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(150) NOT NULL,
  genero VARCHAR(20) NOT NULL,
  duracion VARCHAR(20) NULL,
  director VARCHAR(255) NULL,
  actores TEXT NULL,
  censura VARCHAR(50) NOT NULL,
  web VARCHAR(255) NULL,
  sinopsis LONGTEXT NULL,
  periodo VARCHAR(30) NULL,
  ruta_foto VARCHAR(255) NULL,
  is_vigente CHAR(1) NOT NULL DEFAULT '1',
  PRIMARY KEY(id_pelicula)
);

insert into cinepelis.tb_pelicula(nombre,genero,duracion,director,actores,censura,web,sinopsis,periodo,ruta_foto,is_vigente)
values ('Machete','ACCION','105','Robert Rodriguez','Danny Trejo,Steven Seagal,Robert De Niro,Michelle Rodriguez,Jessica Alba','M14','www.vivamachete.com',
'Machete es un policia federal de Mexico que ha sido expulsado del cuerpo tras un chantaje que le ha hecho el capo Torrez.','DICIEMBRE 2010','/images/min07.jpg','1');

insert into cinepelis.tb_pelicula(nombre,genero,duracion,director,actores,censura,web,sinopsis,periodo,ruta_foto,is_vigente)
values ('Los Indestructibles','ACCION','105','Sylvester Stallone','Sylvester Stallone,Jason Statham,Jet Li','M14',null,
'Despues de anios de corrupcion, asesinato de rehenes y de traicion de la politica exterior, Estados Unidos, con la ayuda de otras naciones, arma en secreto un equipo con su personal militar mas capacitado para finalmente derrocar a un dictador que ha causado estragos en algun pais de America latina, durante mas de 20 anios.','NOVIEMBRE 2010','/images/min02.jpg','1');

insert into cinepelis.tb_pelicula(nombre,genero,duracion,director,actores,censura,web,sinopsis,periodo,ruta_foto,is_vigente)
values ('Una Loca Pelicula de Vampiros','ACCION','124','Jason Friedberg','Ken Jeong, Matt Lanter, Anneliese van der Pol','M14',null,
'Vampires Suck es una comedia sobre la ansiedad adolescente. Becca es una adolescente no vampiro que se debate entre dos chicos. Antes de que pueda elegir, Becca debe sortear a su padre, quien averguenza a su hija por tratarla como si fuera una ninia. Mientras tanto, los amigos de Becca deberan lidiar con sus propios problemas amorosos, chocando todos ellos en el baile de graduacion.','NOVIEMBRE 2010','/images/min01.jpg','1');

insert into cinepelis.tb_pelicula(nombre,genero,duracion,director,actores,censura,web,sinopsis,periodo,ruta_foto,is_vigente)
values ('El ultimo maestro del aire','ACCION','116','M. Night Shyamalan','Jackson Rathbone, Cliff Curtis, Dev Patel, Nicola Peltz','NINGUNA',null,
'La pelicula de M. Night Shaymalan narra las aventuras de Aang (Noah Ringer), el ultimo y mas joven descendiente de la estirpe de los avatares. Su mision es detener la guerra que ha empezado la Nacion del Fuego contra las naciones de Aire, Agua y Tierra. Aang es el unico que posee el don de dominar todos los elementos, pero necesitara la ayuda de Sokka (Jackson Rathone) y Katara (Nicola Peltz). Ademas, deberan escapar de las garras del malvado principe Zuko (Dev Patel), que quiere perpetuar el caos y la destruccion para aumentar su tenebroso poder.','NOVIEMBRE 2010','/images/min06.jpg','1');

CREATE TABLE cinepelis.tb_sala (
  num_Sala INTEGER UNSIGNED NOT NULL,
  capacidad INTEGER UNSIGNED NOT NULL,
  is_3d CHAR(1) NOT NULL,
  PRIMARY KEY(num_Sala)
);

insert into cinepelis.tb_sala(num_Sala,capacidad,is_3d)
values (1,100,'0');

insert into cinepelis.tb_sala(num_Sala,capacidad,is_3d)
values (2,100,'1');

insert into cinepelis.tb_sala(num_Sala,capacidad,is_3d)
values (3,100,'0');

insert into cinepelis.tb_sala(num_Sala,capacidad,is_3d)
values (4,100,'0');

CREATE TABLE cinepelis.tb_usuario (
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

insert into cinepelis.tb_usuario(nombre,ape_paterno,ape_materno,dni,usuario,clave,perfil)
values ('Johana Rosalinda','Herrera','Quintanilla','45527731','jherrera','jherrera1','A');

insert into cinepelis.tb_usuario(nombre,ape_paterno,ape_materno,dni,usuario,clave,perfil)
values ('Mayra Yanina','Marquez','Rosadio','23456789','mrosadio','mrosadio','A');

insert into cinepelis.tb_usuario(nombre,ape_paterno,ape_materno,dni,usuario,clave,perfil)
values ('Alyssa Tamara','Quinto','Ingaruca','57668234','aquinto','aquinto1','A');

insert into cinepelis.tb_usuario(nombre,ape_paterno,ape_materno,dni,usuario,clave,perfil)
values ('Pedro Edison','Rios','Pino','45553639','prios','prios1','A');

insert into cinepelis.tb_usuario(nombre,ape_paterno,ape_materno,dni,usuario,clave,perfil)
values ('Ralf Aurelio','Saldania','Bacalla','45527741','rsaldania','rsaldania1','A');




CREATE TABLE cinepelis.tb_cliente (
  id_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  telefono VARCHAR(20) NULL,
  email VARCHAR(120) NOT NULL,
  tipo_tarjeta CHAR(1) NULL,
  num_tarjeta VARCHAR(20) NULL,
  PRIMARY KEY(id_cliente)
);

insert into cinepelis.tb_cliente(nombre,ape_paterno,ape_materno,dni,telefono,email,tipo_tarjeta,num_tarjeta)
values ('Joel','Gonzales','Flores','44546567','4556897','jgonzales@email.com','C','123');

insert into cinepelis.tb_cliente(nombre,ape_paterno,ape_materno,dni,telefono,email,tipo_tarjeta,num_tarjeta)
values ('Andrea','Aguirre','Rojas','23456789','42254888','arojas@email.com','P','124');

insert into cinepelis.tb_cliente(nombre,ape_paterno,ape_materno,dni,telefono,email,tipo_tarjeta,num_tarjeta)
values ('Gianfranco','Bogani','Ferrand','46474744','7157888','gbogani@email.com','P','125');

insert into cinepelis.tb_cliente(nombre,ape_paterno,ape_materno,dni,telefono,email,tipo_tarjeta,num_tarjeta)
values ('Nicolas','De Las Casas','Picasso','43458877','5334577','ndelascasas@email.com','C','126');

insert into cinepelis.tb_cliente(nombre,ape_paterno,ape_materno,dni,telefono,email,tipo_tarjeta,num_tarjeta)
values ('Grace','Gonzales','Flores','42459886','3321660','ggonzales@email.com','P','127');


CREATE TABLE cinepelis.tb_cartelera (
  id_cartelera INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_pelicula INTEGER UNSIGNED NOT NULL,
  num_Sala INTEGER UNSIGNED NOT NULL,
  hora_inicio VARCHAR(10) NOT NULL,
  is_activo CHAR(1) NOT NULL DEFAULT '1',
  PRIMARY KEY(id_cartelera),
  INDEX tb_cartelera_FKIndex2(num_Sala),
  INDEX tb_cartelera_FKIndex3(id_pelicula),
  FOREIGN KEY(num_Sala)
    REFERENCES tb_sala(num_Sala)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_pelicula)
    REFERENCES tb_pelicula(id_pelicula)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

insert into cinepelis.tb_cartelera(id_pelicula,num_Sala,hora_inicio,is_activo)
values (1,1,'20:00',1);

CREATE TABLE cinepelis.tb_venta (
  id_venta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_cartelera INTEGER UNSIGNED NOT NULL,
  id_cliente INTEGER UNSIGNED NOT NULL,
  id_usuario INTEGER UNSIGNED NOT NULL,
  fecha_venta DATETIME NULL,
  cant_entradas INTEGER UNSIGNED NULL,
  monto_total DOUBLE NULL,
  PRIMARY KEY(id_venta),
  INDEX tb_venta_FKIndex2(id_usuario),
  INDEX tb_venta_FKIndex3(id_cliente),
  INDEX tb_venta_FKIndex4(id_cartelera),
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

CREATE TABLE cinepelis.tb_detalle_venta (
  id_venta INTEGER UNSIGNED NOT NULL,
  num_butaca VARCHAR(10) NULL,
  INDEX tb_detalle_venta_FKIndex1(id_venta),
  FOREIGN KEY(id_venta)
    REFERENCES tb_venta(id_venta)
      ON DELETE CASCADE
      ON UPDATE NO ACTION
);

