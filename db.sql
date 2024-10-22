
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(255) NULL DEFAULT 'black',
  `size` FLOAT NULL,
  `weight` INT NULL,
  `name` VARCHAR(255) NULL,
  `catcol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `name_UNIQUE` ON `mydb`.`cat` (`name` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`hero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`hero` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `gender` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`rescue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rescue` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cat_id` INT NOT NULL,
  `hero_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `place` VARCHAR(255) NOT NULL,
  `body_count` INT,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_rescue_cat`
    FOREIGN KEY (`cat_id`)
    REFERENCES `mydb`.`cat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rescue_hero1`
    FOREIGN KEY (`hero_id`)
    REFERENCES `mydb`.`hero` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_rescue_cat_idx` ON `mydb`.`rescue` (`cat_id` ASC) VISIBLE;

CREATE INDEX `fk_rescue_hero1_idx` ON `mydb`.`rescue` (`hero_id` ASC) VISIBLE;