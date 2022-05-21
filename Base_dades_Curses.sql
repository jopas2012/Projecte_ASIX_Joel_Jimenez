-- --------------------------------------------------------------
-- SCHEMA de BBDD de curses
-- Autor: Joel Jimenez
-- Data:  20/03/2022
-- Descripció: Script per la creació de l'esquelet de la BD
-- --------------------------------------------------------------

DROP DATABASE IF EXISTS curses;

CREATE DATABASE IF NOT EXISTS curses;

USE curses;

CREATE TABLE equips (
	equip_id	SMALLINT UNSIGNED PRIMARY KEY,
	nom			VARCHAR(30) NOT NULL,
	esponsor	VARCHAR(20) NOT NULL,
	director	VARCHAR(20) NOT NULL,
	pressupost	DECIMAL(11,3)
);

CREATE TABLE corredors (
	corredor_id	SMALLINT UNSIGNED PRIMARY KEY,
	nom			VARCHAR(20) NOT NULL,
	sexe		ENUM('M','F'),
	data_naix	DATE NOT NULL,
	equip_id	SMALLINT UNSIGNED,
	esponsor	VARCHAR(20),
	CONSTRAINT FK_CORREDORS_EQUIPS FOREIGN KEY (equip_id) REFERENCES equips(equip_id)
);

CREATE TABLE temporades (
	temporada_id	TINYINT UNSIGNED PRIMARY KEY,
	nom				VARCHAR(20),
	data_inici		DATE NOT NULL,
	data_fi			DATE NOT NULL
);


CREATE TABLE curses (
	cursa_id		SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nom				VARCHAR(50) NOT NULL,
	temporada_id	TINYINT UNSIGNED NOT NULL,
	poble			VARCHAR(30) NOT NULL,
	data_cursa		DATE NOT NULL,
	edicio			TINYINT UNSIGNED COMMENT 'Número d\'anys/vegades que es porta celebrant la cursa',
	kmruta			TINYINT UNSIGNED NOT NULL,
    temps_sortida 	TIME,

	CONSTRAINT FK_CURSES_TEMPORADES FOREIGN KEY (temporada_id) REFERENCES temporades(temporada_id)
);
-- Taula per si s'aplica un sistema de dorsals
-- CREATE TABLE dorsals (
-- 	dorsal_id	SMALLINT UNSIGNED,
-- 	cursa_id	SMALLINT UNSIGNED,
-- 	corredor_id	SMALLINT UNSIGNED,
-- 	CONSTRAINT PK_DORSALS PRIMARY KEY (dorsal_id,cursa_id,corredor_id),
-- 	CONSTRAINT FK_DORSALS_CURSES FOREIGN KEY (cursa_id) REFERENCES curses(cursa_id),
-- 	CONSTRAINT FK_DORSALS_CORREDORS FOREIGN KEY (corredor_id) REFERENCES corredors(corredor_id)
-- );

CREATE TABLE estadistiques_corredors_curses (
    corredor_id		SMALLINT UNSIGNED,
	cursa_id		SMALLINT UNSIGNED,
    temps_sortida	TIME,
    temps_meta		TIME,
	
	CONSTRAINT PK_METES PRIMARY KEY (cursa_id,corredor_id),
	CONSTRAINT FK_METES_CORREDORS FOREIGN KEY (corredor_id) REFERENCES corredors(corredor_id),
	CONSTRAINT FK_METES_CURSES FOREIGN KEY (cursa_id) REFERENCES curses(cursa_id)
);
														
															

CREATE TABLE guanyadors (
	corredor_id		SMALLINT UNSIGNED,
	cursa_id		SMALLINT UNSIGNED,
	temps_total		TIME,
	
	CONSTRAINT PK_GUANYADORS PRIMARY KEY (cursa_id,corredor_id),
	CONSTRAINT FK_GUANYADORS_CORREDORS FOREIGN KEY (corredor_id) REFERENCES corredors(corredor_id),
	CONSTRAINT FK_GUANYADORS_CURSES FOREIGN KEY (cursa_id) REFERENCES curses(cursa_id)
);
