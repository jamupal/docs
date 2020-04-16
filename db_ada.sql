CREATE DATABASE db_ada ;

USE db_ada;

DROP TABLE IF EXISTS ada_flight;

CREATE TABLE ada_flight (
  nm_id int(11) NOT NULL AUTO_INCREMENT,
  cd_person int(11) DEFAULT NULL,
  cd_plane int(11) DEFAULT NULL,
  origin_city varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  destination_city varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  departure_time datetime DEFAULT NULL,
  arrival_time datetime DEFAULT NULL,
  date_update datetime DEFAULT NULL,
  PRIMARY KEY (nm_id),
  KEY plane (cd_plane),
  KEY person (cd_person),
  CONSTRAINT person FOREIGN KEY (cd_person) REFERENCES ada_person (nm_id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT plane FOREIGN KEY (cd_plane) REFERENCES ada_plane (nm_id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table ada_flight */

insert  into ada_flight(nm_id,cd_person,cd_plane,origin_city,destination_city,departure_time,arrival_time,date_update) values 
(1,1,1,'Bogota','Medellín','2020-04-15 17:23:34','2020-04-15 18:23:41','2020-04-15 17:24:04');

/*Table structure for table ada_person */

DROP TABLE IF EXISTS ada_person;

CREATE TABLE ada_person (
  nm_id int(11) NOT NULL AUTO_INCREMENT,
  document varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  last_name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  email varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  gender varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  birthdate date DEFAULT NULL,
  date_update date DEFAULT NULL,
  PRIMARY KEY (nm_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table ada_person */

insert  into ada_person(nm_id,document,name,last_name,email,gender,birthdate,date_update) values 
(1,'11111','Hamilton','Murillo Murillo','hamilton.yopmail.com','male','1981-12-14','2020-04-15');

/*Table structure for table ada_plane */

DROP TABLE IF EXISTS ada_plane;

CREATE TABLE ada_plane (
  nm_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  capacity int(11) DEFAULT NULL,
  model varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  state varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  date_update datetime DEFAULT NULL,
  PRIMARY KEY (nm_id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table ada_plane */

insert  into ada_plane(nm_id,name,capacity,model,state,date_update) values 
(1,'Airbus',200,'2009','Active','2020-04-15 17:22:27');

