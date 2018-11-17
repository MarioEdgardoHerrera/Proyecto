/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50051
 Source Host           : localhost:3306
 Source Schema         : ligas

 Target Server Type    : MySQL
 Target Server Version : 50051
 File Encoding         : 65001

 Date: 16/11/2018 19:57:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for equipos
-- ----------------------------
DROP TABLE IF EXISTS `equipos`;
CREATE TABLE `equipos`  (
  `id_equipos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_equipo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `director_tecnico` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_equipos`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipos
-- ----------------------------
INSERT INTO `equipos` VALUES (1, 'Deportivo Diamante', 'David');
INSERT INTO `equipos` VALUES (2, 'Esteli', 'Marcos');

-- ----------------------------
-- Table structure for equipos_jugadores
-- ----------------------------
DROP TABLE IF EXISTS `equipos_jugadores`;
CREATE TABLE `equipos_jugadores`  (
  `id_equipos` int(255) NOT NULL,
  `id_jugadores` int(255) NOT NULL,
  PRIMARY KEY USING BTREE (`id_equipos`, `id_jugadores`),
  INDEX `fk_jugador` USING BTREE(`id_jugadores`),
  CONSTRAINT `fk_jugador` FOREIGN KEY (`id_jugadores`) REFERENCES `jugadores` (`id_jugadores`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equip` FOREIGN KEY (`id_equipos`) REFERENCES `equipos` (`id_equipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_jugadores`) REFER `ligas/jugadores`(`id_jugadores`) O' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of equipos_jugadores
-- ----------------------------
INSERT INTO `equipos_jugadores` VALUES (1, 1);

-- ----------------------------
-- Table structure for jugadores
-- ----------------------------
DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE `jugadores`  (
  `id_jugadores` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_jugador` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido_jugador` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edad` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goles` int(255) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_jugadores`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jugadores
-- ----------------------------
INSERT INTO `jugadores` VALUES (1, 'Edgardo', 'Herrera', '21', NULL);

-- ----------------------------
-- Table structure for liga_equipos
-- ----------------------------
DROP TABLE IF EXISTS `liga_equipos`;
CREATE TABLE `liga_equipos`  (
  `id_liga` int(255) NOT NULL,
  `id_equipos` int(255) NOT NULL,
  PRIMARY KEY USING BTREE (`id_liga`, `id_equipos`),
  INDEX `id_liga` USING BTREE(`id_liga`),
  INDEX `fk_equipos` USING BTREE(`id_equipos`),
  CONSTRAINT `fk_liga` FOREIGN KEY (`id_liga`) REFERENCES `tabla_ligas` (`id_liga`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipos` FOREIGN KEY (`id_equipos`) REFERENCES `equipos` (`id_equipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_liga`) REFER `ligas/tabla_ligas`(`id_liga`) ON UPDATE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of liga_equipos
-- ----------------------------
INSERT INTO `liga_equipos` VALUES (1, 1);

-- ----------------------------
-- Table structure for partidos
-- ----------------------------
DROP TABLE IF EXISTS `partidos`;
CREATE TABLE `partidos`  (
  `id_partido` int(255) NOT NULL AUTO_INCREMENT,
  `id_liga` int(255) NOT NULL,
  `id_equipo_local` int(255) NOT NULL,
  `goles_equipo_local` int(255) NULL DEFAULT NULL,
  `id_equipo_visitante` int(255) NOT NULL,
  `goles_equipo_visitante` int(255) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_partido`, `id_liga`, `id_equipo_local`, `id_equipo_visitante`),
  INDEX `fk_liga_partidos` USING BTREE(`id_liga`),
  INDEX `fk_equipo_local` USING BTREE(`id_equipo_local`),
  INDEX `fk_equipo_visitante` USING BTREE(`id_equipo_visitante`),
  CONSTRAINT `fk_liga_partidos` FOREIGN KEY (`id_liga`) REFERENCES `tabla_ligas` (`id_liga`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_local` FOREIGN KEY (`id_equipo_local`) REFERENCES `equipos` (`id_equipos`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_visitante` FOREIGN KEY (`id_equipo_visitante`) REFERENCES `equipos` (`id_equipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_liga`) REFER `ligas/tabla_ligas`(`id_liga`) ON UPDATE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of partidos
-- ----------------------------
INSERT INTO `partidos` VALUES (1, 1, 1, 2, 2, 1);

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas`  (
  `id_persona` int(255) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apellido` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_persona`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES (1, 'Edgardo', 'Herrera');
INSERT INTO `personas` VALUES (2, 'Said', 'Zuniga');
INSERT INTO `personas` VALUES (3, 'Said', 'Zuniga');
INSERT INTO `personas` VALUES (4, 'Said', 'Zuniga');
INSERT INTO `personas` VALUES (5, 'Said', 'Zuniga');
INSERT INTO `personas` VALUES (6, 'Elying', 'Davila');
INSERT INTO `personas` VALUES (7, 'Emilio', 'Molina');
INSERT INTO `personas` VALUES (8, 'Hellen', 'Treminio');
INSERT INTO `personas` VALUES (9, 'Luis', 'Centeno');

-- ----------------------------
-- Table structure for tabla_de_posiciones
-- ----------------------------
DROP TABLE IF EXISTS `tabla_de_posiciones`;
CREATE TABLE `tabla_de_posiciones`  (
  `id_liga` int(255) NOT NULL,
  `id_equipo` int(255) NOT NULL,
  `partidos_jugados` int(255) NULL DEFAULT NULL,
  `partidos_ganados` int(255) NULL DEFAULT NULL,
  `partidos_empatados` int(255) NULL DEFAULT NULL,
  `partidos_perdidos` int(255) NULL DEFAULT NULL,
  `goles_a_favor` int(255) NULL DEFAULT NULL,
  `goles_en_contra` int(255) NULL DEFAULT NULL,
  `diferencia_de_goles` int(255) NULL DEFAULT NULL,
  `puntos` int(255) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_liga`, `id_equipo`),
  INDEX `fk_tabla_equipos` USING BTREE(`id_equipo`),
  CONSTRAINT `fk_tabla_y_ligas` FOREIGN KEY (`id_liga`) REFERENCES `tabla_ligas` (`id_liga`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tabla_equipos` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipos`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_liga`) REFER `ligas/tabla_ligas`(`id_liga`) ON UPDATE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tabla_de_posiciones
-- ----------------------------
INSERT INTO `tabla_de_posiciones` VALUES (1, 1, 1, 1, 0, 0, 2, 0, 2, 3);

-- ----------------------------
-- Table structure for tabla_ligas
-- ----------------------------
DROP TABLE IF EXISTS `tabla_ligas`;
CREATE TABLE `tabla_ligas`  (
  `id_liga` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_liga` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_usuario` int(255) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_liga`),
  INDEX `fk_usuario_liga` USING BTREE(`id_usuario`),
  CONSTRAINT `fk_usuario_liga` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_usuario`) REFER `ligas/usuarios`(`id_usuario`) ON UPD' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tabla_ligas
-- ----------------------------
INSERT INTO `tabla_ligas` VALUES (1, 'Federada', 1);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuario` int(255) NOT NULL AUTO_INCREMENT,
  `correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clave` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_persona` int(255) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_usuario`),
  INDEX `fk_personas` USING BTREE(`id_persona`),
  CONSTRAINT `fk_personas` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 3072 kB; (`id_persona`) REFER `ligas/personas`(`id_persona`) ON UPD' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'edgardo@gmail.com', '123', 1);
INSERT INTO `usuarios` VALUES (2, 'said@gmail.com', '123', 2);
INSERT INTO `usuarios` VALUES (3, 'said@gmail.com', '123', 3);
INSERT INTO `usuarios` VALUES (4, 'ying@gmail.com', '123', 6);
INSERT INTO `usuarios` VALUES (5, 'Emilio@gmail.com', '123', 7);
INSERT INTO `usuarios` VALUES (6, 'ss@gmail.com', '123', 4);
INSERT INTO `usuarios` VALUES (7, 'sss@gmail.com', '123', 5);
INSERT INTO `usuarios` VALUES (8, 'Hellen@gmail.com', '123', 8);
INSERT INTO `usuarios` VALUES (9, 'Luis@gmail.com', '123', 9);

-- ----------------------------
-- View structure for ver_equipos
-- ----------------------------
DROP VIEW IF EXISTS `ver_equipos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_equipos` AS SELECT equipos.nombre_equipo,director_tecnico
FROM equipos
WHERE 
equipos.id_equipos ;

-- ----------------------------
-- View structure for ver_equipos_y_sus_integrantes
-- ----------------------------
DROP VIEW IF EXISTS `ver_equipos_y_sus_integrantes`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_equipos_y_sus_integrantes` AS SELECT equipos.id_equipos,nombre_equipo,director_tecnico,nombre_jugador,apellido_jugador,edad
FROM equipos,equipos_jugadores,jugadores
WHERE 
equipos.id_equipos=equipos_jugadores.id_equipos
AND
equipos_jugadores.id_jugadores=jugadores.id_jugadores ;

-- ----------------------------
-- View structure for ver_jugadores
-- ----------------------------
DROP VIEW IF EXISTS `ver_jugadores`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_jugadores` AS SELECT jugadores.nombre_jugador,apellido_jugador,edad
FROM jugadores
WHERE 
jugadores.id_jugadores ;

-- ----------------------------
-- View structure for ver_ligas
-- ----------------------------
DROP VIEW IF EXISTS `ver_ligas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_ligas` AS SELECT usuarios.id_usuario,id_liga,nombre_liga
FROM tabla_ligas,usuarios
WHERE 
tabla_ligas.id_usuario=usuarios.id_usuario ;

-- ----------------------------
-- View structure for ver_liga_y_sus_equipos
-- ----------------------------
DROP VIEW IF EXISTS `ver_liga_y_sus_equipos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_liga_y_sus_equipos` AS SELECT tabla_ligas.id_liga,nombre_liga,nombre_equipo
FROM liga_equipos,tabla_ligas,equipos
WHERE 
tabla_ligas.id_liga=liga_equipos.id_liga
AND
liga_equipos.id_equipos=equipos.id_equipos ;

-- ----------------------------
-- View structure for ver_tabla_de_posiciones
-- ----------------------------
DROP VIEW IF EXISTS `ver_tabla_de_posiciones`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ver_tabla_de_posiciones` AS SELECT tabla_de_posiciones.id_equipo,nombre_equipo,partidos_jugados,partidos_ganados,partidos_empatados,partidos_perdidos,goles_a_favor,goles_en_contra,diferencia_de_goles,puntos
FROM equipos,tabla_de_posiciones
WHERE 
tabla_de_posiciones.id_equipo=equipos.id_equipos ;

-- ----------------------------
-- Procedure structure for Agregar_equipos
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_equipos`;
delimiter ;;
CREATE PROCEDURE `Agregar_equipos`(IN `p_nombre` VARCHAR(20), IN p_director VARCHAR(20))
BEGIN
	DECLARE Cl_equipo INT;

	INSERT into equipos(nombre_equipo,director_tecnico)
	VALUES(p_nombre,p_director);

	SELECT MAX(id_equipos) INTO Cl_equipo FROM equipos;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_equipo_a_liga
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_equipo_a_liga`;
delimiter ;;
CREATE PROCEDURE `Agregar_equipo_a_liga`(IN `p_id_liga` INT, IN p_id_equipo INT)
BEGIN
	DECLARE Cl_agregar INT;

	INSERT into liga_equipos(id_liga,id_equipos)
	VALUES(p_id_liga,p_id_equipo);

	SELECT MAX(id_liga) INTO Cl_agregar FROM liga_equipos;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_jugadores
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_jugadores`;
delimiter ;;
CREATE PROCEDURE `Agregar_jugadores`(IN `p_nombre` VARCHAR(20), IN p_apellido VARCHAR(20), IN p_edad INT)
BEGIN
	DECLARE Cl_jugador INT;

	INSERT into jugadores(nombre_jugador,apellido_jugador,edad)
	VALUES(p_nombre,p_apellido,p_edad);

	SELECT MAX(id_jugadores) INTO Cl_jugador FROM jugadores;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_jugadores_a_equipo
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_jugadores_a_equipo`;
delimiter ;;
CREATE PROCEDURE `Agregar_jugadores_a_equipo`(IN `p_id_equipo` INT, IN p_id_jugador INT)
BEGIN
	DECLARE Cl_agregar INT;

	INSERT into equipos_jugadores(id_jugadores,id_equipos)
	VALUES(p_id_equipo,p_id_jugador);

	SELECT MAX(id_equipos) INTO Cl_agregar FROM equipos_jugadores;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Crear_liga
-- ----------------------------
DROP PROCEDURE IF EXISTS `Crear_liga`;
delimiter ;;
CREATE PROCEDURE `Crear_liga`(IN `p_nombre` VARCHAR(20), IN p_iduser INT)
BEGIN
	DECLARE Cl_liga INT;

	INSERT into tabla_ligas(nombre_liga,id_usuario)
	VALUES(p_nombre,p_iduser);

	SELECT MAX(id_liga) INTO Cl_liga FROM tabla_ligas;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Registrar_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `Registrar_usuario`;
delimiter ;;
CREATE PROCEDURE `Registrar_usuario`(IN `p_nombre` varchar(20),IN `p_apellido` varchar(20), IN `p_correo` VARCHAR(20), IN `p_clave` VARCHAR(20))
BEGIN
	DECLARE Cl_persona INT;
	DECLARE Cl_usuario INT;

	INSERT into personas(nombre,apellido)
	VALUES(p_nombre,p_apellido);

	SELECT MAX(id_persona) INTO Cl_persona FROM personas;
	
	INSERT INTO usuarios(correo,clave,id_persona)
	VALUES(p_correo,p_clave,Cl_persona);
	
	SELECT MAX(id_usuario) INTO Cl_usuario FROM usuarios;
	

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
