-- MySQL Script generated by MySQL Workbench
-- Ter 17 Mai 2016 10:19:48 BRT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ciclope
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `ipes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ipes` (
  `sigla` VARCHAR(10) NOT NULL,
  `lat` DECIMAL(11,8) NOT NULL,
  `lng` DECIMAL(11,8) NOT NULL,
  `logradouro` VARCHAR(100) NULL,
  `bairro` VARCHAR(50) NULL,
  `cidade` VARCHAR(100) NULL,
  `estado` VARCHAR(2) NULL,
  `cep` VARCHAR(8) NULL,
  `telefone` VARCHAR(20) NULL,
  `url` VARCHAR(100) NULL,
  `url2` VARCHAR(100) NULL,
  PRIMARY KEY (`sigla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `polos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(100) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `lat` DECIMAL(11,8) NULL,
  `lng` DECIMAL(11,8) NULL,
  `nome_polo` VARCHAR(100) NOT NULL,
  `nome_fantasia` VARCHAR(100) NULL,
  `logradouro` VARCHAR(100) NULL,
  `numero` VARCHAR(10) NULL,
  `bairro` VARCHAR(45) NULL,
  `cep` VARCHAR(8) NULL,
  `complemento` VARCHAR(100) NULL,
  `conceito` VARCHAR(2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ipes_sigla` VARCHAR(10) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NULL,
  PRIMARY KEY (`id`, `ipes_sigla`),
  INDEX `fk_cursos_ipes1_idx` (`ipes_sigla` ASC),
  CONSTRAINT `fk_cursos_ipes1`
    FOREIGN KEY (`ipes_sigla`)
    REFERENCES `ipes` (`sigla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oferta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `oferta` (
  `id_oferta` INT NOT NULL,
  `polos_id` INT NOT NULL,
  `cursos_id` INT NOT NULL,
  `data_oferta` VARCHAR(10) NULL,
  `numero_vagas` INT NULL,
  `data_provavel_fim` VARCHAR(10) NULL,
  `data_fim_curso` VARCHAR(10) NULL,
  `qt_alunos_formados` INT NULL,
  `qt_alunos_nao_concluinte` INT NULL,
  `qt_alunos_desvinculado` INT NULL,
  `qt_alunos_cadastrado` INT NULL,
  PRIMARY KEY (`id_oferta`, `polos_id`, `cursos_id`),
  INDEX `fk_polos_has_cursos_cursos1_idx` (`cursos_id` ASC),
  INDEX `fk_polos_has_cursos_polos1_idx` (`polos_id` ASC),
  CONSTRAINT `fk_polos_has_cursos_polos1`
    FOREIGN KEY (`polos_id`)
    REFERENCES `polos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_polos_has_cursos_cursos1`
    FOREIGN KEY (`cursos_id`)
    REFERENCES `cursos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
