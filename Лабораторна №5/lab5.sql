CREATE TABLE `online_shop`.`customer1`
AS SELECT `idcustomer`, `first_name`, `last_name`, `login`, `password`, `contacts` FROM `online_shop`.`customer`
WHERE `idcustomer`< 3;

CREATE TABLE `online_shop`.`customer2`
AS SELECT `idcustomer`, `first_name`, `last_name`, `login`, `password`, `contacts` FROM `online_shop`.`customer`
WHERE `idcustomer`>=3;
