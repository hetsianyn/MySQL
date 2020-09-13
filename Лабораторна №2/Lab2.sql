CREATE SCHEMA `online_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

CREATE TABLE `online_shop`.`category` (
  `idcategory` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategory`));

CREATE TABLE `online_shop`.`manufacture` (
  `idmanufacture` INT NOT NULL,
  `name_of_manufacture` VARCHAR(45) NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idmanufacture`));

CREATE TABLE `online_shop`.`product` (
  `idproduct` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `availability` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idproduct`),
  CONSTRAINT `fk_product_category`
    FOREIGN KEY (`idproduct`)
    REFERENCES `online_shop`.`category` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_manufacture`
    FOREIGN KEY (`idproduct`)
    REFERENCES `online_shop`.`manufacture` (`idmanufacture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `online_shop`.`customer` (
  `idcustomer` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `contacts` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcustomer`));

CREATE TABLE `online_shop`.`basket` (
  `idorder` INT NOT NULL,
  `price_of_order` INT NOT NULL,
  `delivery_method` VARCHAR(45) NOT NULL,
  `payment_method` VARCHAR(45) NOT NULL,
  `comment` VARCHAR(45) NULL,
  PRIMARY KEY (`idorder`),
  CONSTRAINT `fk_basket_customer`
    FOREIGN KEY (`idorder`)
    REFERENCES `online_shop`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `online_shop`.`basket_order` (
  `idorder` INT NOT NULL,
  `idproduct` INT NOT NULL,
  `amount` INT NOT NULL,
  `description` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idorder`, `idproduct`),
  CONSTRAINT `fk_basketorder_product`
    FOREIGN KEY (`idproduct`)
    REFERENCES `online_shop`.`product` (`idproduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_basketorder_basket`
    FOREIGN KEY (`idorder`)
    REFERENCES `online_shop`.`basket` (`idorder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `online_shop`.`benefit` (
  `idbenefits` INT NOT NULL,
  `discount` INT NOT NULL,
  PRIMARY KEY (`idbenefits`));

CREATE TABLE `online_shop`.`benefit_order` (
  `idbenefits` INT NOT NULL,
  `idorder` INT NOT NULL,
  `code` INT NOT NULL,
  PRIMARY KEY (`idbenefits`, `idorder`),
  CONSTRAINT `fk_benefitorder_basket`
    FOREIGN KEY (`idorder`)
    REFERENCES `online_shop`.`basket` (`idorder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_benefitorder_benefit`
    FOREIGN KEY (`idbenefits`)
    REFERENCES `online_shop`.`benefit` (`idbenefits`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
