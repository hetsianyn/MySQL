ALTER TABLE `online_shop`.`product` 
DROP FOREIGN KEY `fk_product_category`;

ALTER TABLE `online_shop`.`product` 
DROP COLUMN `availability`,
CHANGE COLUMN `description` `description` VARCHAR(150) NOT NULL ;

ALTER TABLE `online_shop`.`manufacture` 
CHANGE COLUMN `description` `description` TEXT(150) NULL ;

ALTER TABLE `online_shop`.`basket` 
ADD COLUMN `date_of_order` DATE NULL AFTER `comment`,
ADD CONSTRAINT UNIQUE UQ_payment_delivery_method (payment_method, delivery_method);

ALTER TABLE `online_shop`.`benefit_order` 
DROP FOREIGN KEY `fk_benefitorder_benefit`;
ALTER TABLE `online_shop`.`benefit_order` 
ADD COLUMN `date_of_expiration` DATE NOT NULL AFTER `code`;
ALTER TABLE `online_shop`.`benefit_order` 
ADD CONSTRAINT `fk_benefitorder_benefit`
  FOREIGN KEY (`idbenefits`)
  REFERENCES `online_shop`.`benefit` (`idbenefits`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;