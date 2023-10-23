-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema modashop
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema modashop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modashop` DEFAULT CHARACTER SET utf8 ;
USE `modashop` ;

-- -----------------------------------------------------
-- Table `modashop`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modashop`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `nascimento` DATE NOT NULL,
  `login` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idcliente`),
  UNIQUE INDEX `cpf_UNIQUE` (`cpf` ASC) VISIBLE,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modashop`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modashop`.`produto` (
  `idproduto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(200) NOT NULL,
  `preco` DECIMAL(9,2) NOT NULL,
  `tamanho` VARCHAR(10) NULL,
  `cor` VARCHAR(100) NULL,
  `estoque` INT NOT NULL,
  `categoria` VARCHAR(100) NOT NULL,
  `marca` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idproduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modashop`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modashop`.`venda` (
  `idvenda` INT NOT NULL AUTO_INCREMENT,
  `valor` DECIMAL(9,2) NOT NULL,
  `forma_pagamento` VARCHAR(100) NOT NULL,
  `cartao_pagamento` VARCHAR(16) NULL,
  `parcelas_pagamento` INT NULL,
  `data_venda` DATE NOT NULL,
  `data_prevista` DATE NOT NULL,
  `data_entregue` DATE NULL,
  `status` VARCHAR(100) NULL,
  `frete` DECIMAL(9,2) NOT NULL,
  `cod_rastreamento` VARCHAR(100) NULL,
  `cliente_idcliente` INT NOT NULL,
  PRIMARY KEY (`idvenda`),
  INDEX `fk_venda_cliente1_idx` (`cliente_idcliente` ASC) VISIBLE,
  CONSTRAINT `fk_venda_cliente1`
    FOREIGN KEY (`cliente_idcliente`)
    REFERENCES `modashop`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modashop`.`item_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modashop`.`item_venda` (
  `produto_idproduto` INT NOT NULL,
  `venda_idvenda` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `valor_unitario` DECIMAL(9,2) NOT NULL,
  `subtotal` DECIMAL(9,2) NOT NULL,
  PRIMARY KEY (`produto_idproduto`, `venda_idvenda`),
  INDEX `fk_produto_has_venda_venda1_idx` (`venda_idvenda` ASC) VISIBLE,
  INDEX `fk_produto_has_venda_produto_idx` (`produto_idproduto` ASC) VISIBLE,
  CONSTRAINT `fk_produto_has_venda_produto`
    FOREIGN KEY (`produto_idproduto`)
    REFERENCES `modashop`.`produto` (`idproduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produto_has_venda_venda1`
    FOREIGN KEY (`venda_idvenda`)
    REFERENCES `modashop`.`venda` (`idvenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
