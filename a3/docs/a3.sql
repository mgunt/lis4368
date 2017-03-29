-- MySQL Script generated by MySQL Workbench
-- Wed Feb 22 05:05:28 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mg14e
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mg14e` ;

-- -----------------------------------------------------
-- Schema mg14e
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mg14e` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mg14e` ;

-- -----------------------------------------------------
-- Table `mg14e`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mg14e`.`petstore` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mg14e`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` INT NOT NULL,
  `pst_phone` BIGINT NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mg14e`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mg14e`.`customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mg14e`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` INT NOT NULL,
  `cus_phone` BIGINT NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(6,2) NOT NULL,
  `cus_total_sales` DECIMAL(6,2) NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mg14e`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mg14e`.`pet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mg14e`.`pet` (
  `pet_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) NOT NULL,
  `pet_price` DECIMAL(6,2) NOT NULL,
  `pet_age` TINYINT NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NOT NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC),
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC),
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `mg14e`.`petstore` (`pst_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `mg14e`.`customer` (`cus_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mg14e`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `mg14e`;
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (1, 'Claws and Paws', '8 South Ramblewood Dr. ', 'Powder Springs', 'GA', 30127, 9821239400, 'peda@sst.com', 'http://hello.com', 39000.24, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (2, 'Riverdale Pet Shop', '8306 Catherine Lane ', 'Campbell', 'CA', 95008, 8621239400, 'ads@sst.com', 'http://hello.com', 526014.65, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (3, 'Dawson Petshop', '984 W. Virginia Rd. ', 'East Elmhurst', 'NY', 11369, 5421239400, 'H210@sst.com', 'http://hello.com', 145200.01, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (4, 'Hetery\'s Petshop', '8 South Ramblewood Dr. ', 'East Elmhurst', 'NY', 24506, 3651239400, 'hp02w@sst.com', 'http://hello.com', 76500.24, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (5, 'Northdale Petshop', '768 Corona Street ', 'East Elmhurst', 'NY', 43803, 8431239400, 'qw2a@sst.com', 'http://hello.com', 86350.50, 'Recently opened');
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (6, 'Jasmine\'s Petshop', '502 SW. Schoolhouse Lane', 'East Elmhurst', 'NY', 54269, 9101239400, 'p0per@sst.com', 'http://hello.com', 46599.26, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (7, 'North and Son Petshop', '29 Winding Way Ave.', 'East Elmhurst', 'NY', 14035, 9021239400, '2iowdko@sst.com', 'http://hello.com', 57390.57, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (8, 'Smith Petstore', '365 East Cambridge St. ', 'East Elmhurst', 'NY', 48752, 6861239400, 'posta@sst.com', 'http://hello.com', 84026.54, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (9, 'Creak Petstore', '365 East Cambridge St. ', 'East Elmhurst', 'NY', 10455, 1901239400, 'pinta@asa.com', 'http://hello.com', 73658.21, NULL);
INSERT INTO `mg14e`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (10, 'PetCo', '61 Broad St.', 'East Elmhurst', 'NY', 21608, 4061239400, 'doctype@asd.com', 'http://hello.com', 68347.73, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mg14e`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `mg14e`;
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (1, 'Anjolie', 'Hopkins', 'P.O. Box 850, 2674 Cursus Rd.', 'Wollongong', 'NSW', 3649, 6838510671, 'et.lacinia.vitae@etnetus.net', 9657.80, 7816.15, 'eu lacus. Quisque');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (2, 'Curran', 'Gordon', 'P.O. Box 494, 1231 Consequat Avenue', 'ZŽtrud-Lumay', 'WB', 964700, 1589426769, 'ante.ipsum@sodalesnisi.ca', 3325.50, 1701.86, 'nulla magna, malesuada');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (3, 'Baxter', 'Lambert', 'Ap #224-4939 Erat. Avenue', 'Dannevirke', 'NI', 6681, 6652765474, 'vel@Duis.net', 9867.02, 9278.91, 'amet lorem semper');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (4, 'Nelle', 'Rodriguez', '884-2040 Leo. Rd.', 'Hastings', 'NI', 78303, 1347389277, 'ante.ipsum@DonectinciduntDonec.org', 5309.85, 9908.96, 'vel sapien imperdiet');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (5, 'Rooney', 'Espinoza', 'P.O. Box 902, 2356 Tellus Rd.', 'Alert Bay', 'BC', 504738, 6775367712, 'pharetra@Maurismolestiepharetra.org', 2319.07, 8582.06, 'arcu. Vivamus sit');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (6, 'Tatyana', 'Burks', 'P.O. Box 502, 1665 Sit Rd.', 'Santarém', 'PA', 70409, 7626995652, 'congue@montesnasceturridiculus.ca', 4826.02, 8887.72, 'tincidunt, nunc ac');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (7, 'Carson', 'Mendoza', '968 Quam Rd.', 'Zoetermeer', 'ZZ', 11151, 6402407323, 'justo.eu.arcu@faucibus.net', 7350.94, 2982.76, 'sagittis placerat. Cras');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (8, 'Melodie', 'Cox', 'Ap #435-8192 Elit, Ave', 'Anderlecht', 'BH', 7411KI, 7109965528, 'tristique@vehicula.net', 2495.28, 8707.63, 'dolor dolor, tempus');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (9, 'Chanda', 'Baker', 'P.O. Box 888, 3191 In Avenue', 'Campagna', 'CP', 89212, 1624829532, 'auctor.quis.tristique@neque.co.uk', 3565.50, 7407.56, 'nonummy ut, molestie');
INSERT INTO `mg14e`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (10, 'Nissim', 'Graham', 'P.O. Box 240, 863 Aliquet. Avenue', 'Buin', 'RM', 99259, 2208099664, 'Nunc.mauris.Morbi@dictumeu.edu', 8037.54, 5534.49, 'lacinia. Sed congue,');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mg14e`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `mg14e`;
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (1, 2, 2, 'Dog', 'm', 125.00, 140.00, 2, 'blue', DEFAULT, 'n', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (2, 5, 4, 'Fish', 'm', 83.00, 110.00, 1, 'green', DEFAULT, 'y', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (3, 7, 3, 'Cat', 'f', 56.00, 73.00, 5, 'green', DEFAULT, 'n', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (4, 3, 5, 'Dog', 'm', 32.00, 46.00, 2, 'brown', '2015-09-03', 'y', 'n', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (5, 8, 1, 'Fish', 'f', 14.00, 22.00, 1, 'yellow', DEFAULT, 'y', 'n', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (6, 6, 7, 'Bird', 'f', 102.00, 119.00, 1, 'red', DEFAULT, 'n', 'n', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (7, 10, 6, 'Fish', 'f', 258.00, 275.00, 3, 'purple', DEFAULT, 'y', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (8, 1, 9, 'Bird', 'm', 173.00, 201.00, 1, 'gray', DEFAULT, 'y', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (9, 4, 8, 'Bird', 'm', 165.00, 180.00, 2, 'orange', DEFAULT, 'n', 'y', NULL);
INSERT INTO `mg14e`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (10, 8, 10, 'Fish', 'f', 170.00, 193.00, 4, 'yellow', DEFAULT, 'n', 'y', NULL);

COMMIT;

