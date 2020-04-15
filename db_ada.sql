
CREATE DATABASE db_ada;

USE db_ada;

/*Table structure for table ada_flight */

DROP TABLE IF EXISTS ada_flight;

CREATE TABLE ada_flight (
  nm_id int(11) NOT NULL AUTO_INCREMENT,
  cd_person int(11) DEFAULT NULL,
  cd_plane int(11) DEFAULT NULL,
  origin city varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  destination city varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  departure_time datetime DEFAULT NULL,
  arrival_time datetime DEFAULT NULL,
  date_update datetime DEFAULT NULL,
  PRIMARY KEY (nm_id),
  KEY plane (cd_plane),
  KEY person (cd_person),
  CONSTRAINT person FOREIGN KEY (cd_person) REFERENCES ada_person (nm_id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT plane FOREIGN KEY (cd_plane) REFERENCES ada_plane (nm_id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

