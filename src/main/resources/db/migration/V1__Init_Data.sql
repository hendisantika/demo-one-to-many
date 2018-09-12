-- CREATE DATABASE "jpa_mapping" ---------------------------
CREATE DATABASE IF NOT EXISTS `jpa_mapping` CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jpa_mapping`;
-- ---------------------------------------------------------

-- CREATE TABLE "address" --------------------------------------
CREATE TABLE `address` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`address` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`date_created` DateTime NULL,
	`last_updated` DateTime NULL,
	`employee_id` BigInt( 20 ) NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------

-- CREATE TABLE "department" -----------------------------------
CREATE TABLE `department` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`date_created` DateTime NULL,
	`last_updated` DateTime NULL,
	`name` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "employee" -------------------------------------
CREATE TABLE `employee` ( 
	`id` BigInt( 20 ) AUTO_INCREMENT NOT NULL,
	`date_created` DateTime NULL,
	`email` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`last_updated` DateTime NULL,
	`name` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`password` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`department_id` BigInt( 20 ) NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "husband" --------------------------------------
CREATE TABLE `husband` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "wife" -----------------------------------------
CREATE TABLE `wife` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`husband_id` Int( 11 ) NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "address" ----------------------------------
INSERT INTO `address`(`id`,`address`,`date_created`,`last_updated`,`employee_id`) VALUES ( '1', 'Konohagakure', '2017-11-25 11:10:05', '2017-11-25 11:10:05', '1' );
INSERT INTO `address`(`id`,`address`,`date_created`,`last_updated`,`employee_id`) VALUES ( '2', 'Konohagakure', '2017-11-25 11:10:05', '2017-11-25 11:10:05', '2' );
INSERT INTO `address`(`id`,`address`,`date_created`,`last_updated`,`employee_id`) VALUES ( '6', 'Konohagakure', '2017-11-25 11:10:05', '2017-11-25 11:10:05', '6' );
INSERT INTO `address`(`id`,`address`,`date_created`,`last_updated`,`employee_id`) VALUES ( '7', 'Konohagakure', '2017-11-25 11:10:05', '2017-11-25 11:10:05', '7' );
-- ---------------------------------------------------------


-- Dump data of "department" -------------------------------
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '1', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'IT' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '2', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'HR' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '3', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'Marketing' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '4', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'Finance' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '5', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'Operasional' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '6', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'Komunikasi' );
INSERT INTO `department`(`id`,`date_created`,`last_updated`,`name`) VALUES ( '7', '2017-11-25 11:10:05', '2017-11-25 11:10:05', 'Sejarah' );
-- ---------------------------------------------------------


-- Dump data of "employee" ---------------------------------
INSERT INTO `employee`(`id`,`date_created`,`email`,`last_updated`,`name`,`password`,`department_id`) VALUES ( '1', '2017-11-25 11:10:05', 'hendisantika@example.com', '2017-11-25 11:10:05', 'Hendi Santika', 'pwd', '1' );
INSERT INTO `employee`(`id`,`date_created`,`email`,`last_updated`,`name`,`password`,`department_id`) VALUES ( '2', '2017-11-25 11:10:05', 'uchiha_sasuke@example.com', '2017-11-25 11:10:05', 'Uchiha Sasuke', 'pwd', '1' );
INSERT INTO `employee`(`id`,`date_created`,`email`,`last_updated`,`name`,`password`,`department_id`) VALUES ( '6', '2017-11-25 11:10:05', 'sakura_haruno@konohagakure.com', '2017-11-25 11:10:05', 'Sakura Haruno', 'sakura', '1' );
INSERT INTO `employee`(`id`,`date_created`,`email`,`last_updated`,`name`,`password`,`department_id`) VALUES ( '7', '2017-11-25 11:10:05', 'namikaze_minato@konohagakure.com', '2017-11-25 11:10:05', 'Namikaze Minato', 'minato', '1' );
-- ---------------------------------------------------------


-- Dump data of "husband" ----------------------------------
INSERT INTO `husband`(`id`,`name`) VALUES ( '1', 'David' );
INSERT INTO `husband`(`id`,`name`) VALUES ( '2', 'Peter' );
INSERT INTO `husband`(`id`,`name`) VALUES ( '3', 'Phillip' );
-- ---------------------------------------------------------


-- Dump data of "wife" -------------------------------------
INSERT INTO `wife`(`id`,`name`,`husband_id`) VALUES ( '1', 'Lisa', '1' );
INSERT INTO `wife`(`id`,`name`,`husband_id`) VALUES ( '2', 'Mary', '2' );
INSERT INTO `wife`(`id`,`name`,`husband_id`) VALUES ( '3', 'Lauren', '3' );
-- ---------------------------------------------------------


-- CREATE INDEX "FKq4m60pqp7shng4u5n9h2346mp" ------------------
CREATE INDEX `FKq4m60pqp7shng4u5n9h2346mp` USING BTREE ON `address`( `employee_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "FKbejtwvg9bxus2mffsm3swj3u9" ------------------
CREATE INDEX `FKbejtwvg9bxus2mffsm3swj3u9` USING BTREE ON `employee`( `department_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "FK36i07024g7wxwskm9rdalh5co" ------------------
CREATE INDEX `FK36i07024g7wxwskm9rdalh5co` USING BTREE ON `wife`( `husband_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "FKq4m60pqp7shng4u5n9h2346mp" -------------------
ALTER TABLE `address`
	ADD CONSTRAINT `FKq4m60pqp7shng4u5n9h2346mp` FOREIGN KEY ( `employee_id` )
	REFERENCES `employee`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "FKbejtwvg9bxus2mffsm3swj3u9" -------------------
ALTER TABLE `employee`
	ADD CONSTRAINT `FKbejtwvg9bxus2mffsm3swj3u9` FOREIGN KEY ( `department_id` )
	REFERENCES `department`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "FK36i07024g7wxwskm9rdalh5co" -------------------
ALTER TABLE `wife`
	ADD CONSTRAINT `FK36i07024g7wxwskm9rdalh5co` FOREIGN KEY ( `husband_id` )
	REFERENCES `husband`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


