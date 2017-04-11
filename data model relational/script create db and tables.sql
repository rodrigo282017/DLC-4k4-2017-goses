#Script for create db goses
CREATE DATABASE goses;#crear base de dato
SHOW DATABASES;#mostrar bases de datos
USE goses;#usar goses
SHOW TABLES; #mostrar tablas de goses

#Script for create table Vocabulario
CREATE TABLE IF NOT EXISTS `vocabulario` (
`word` varchar(80) NOT NULL COMMENT 'palabra del vocabulario - pk',
`nr` int DEFAULT '1' COMMENT 'cant de dn que aparece tr',
`maxtf` int DEFAULT '1' COMMENT 'max tf cada palabra en el vocabulario',
PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de vocabulario';

#Script for create table Vocabulario
CREATE TABLE IF NOT EXISTS `posteo` (
`word` varchar(80) NOT NULL COMMENT 'palabra del vocabulario - fk/pk',
`idDoc` int NOT NULL COMMENT 'id documento - fk/pk',
`tf` int DEFAULT '1' COMMENT 'cant tr aparece en di',
PRIMARY KEY (`word`,`idDoc`),
FOREIGN KEY (word) REFERENCES vocabulario(word)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de posteo';

#Script for create table documentos
CREATE TABLE IF NOT EXISTS `documentos` (
`idDoc` int NOT NULL AUTO_INCREMENT COMMENT 'id documento - pk',
`nombre` varchar(80) COMMENT 'nombre del documento',
`url` varchar(100) COMMENT 'ubicacion/url del documento',
PRIMARY KEY (`idDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='tabla de vocabulario';





