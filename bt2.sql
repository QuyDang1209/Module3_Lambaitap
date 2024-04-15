CREATE SCHEMA `quanlybanhang` ;
use `quanlybanhang`;
CREATE TABLE `customer` (
  `cID` INT NOT NULL,
  `cName` NVARCHAR(45) NULL,
  `cAge` INT NULL,
  PRIMARY KEY (`cID`));
  CREATE TABLE `oder` (
  `oID` INT NOT NULL,
  `cID` INT,
  `oDate` DATE,
  `oPrice` DOUBLE,
  PRIMARY KEY (`oID`));
  ALTER TABLE `quanlybanhang`.`oder` 
ADD CONSTRAINT `cIDoder_cIDcustomer`
  FOREIGN KEY (`cID`)
  REFERENCES `quanlybanhang`.`customer` (`cID`);
  
  CREATE TABLE `oderdetail` (
  `oID` INT NOT NULL,
  `pID` INT,
  `odQTY` int,
  PRIMARY KEY (`oID`));
  ALTER TABLE `oderdetail`
  ADD CONSTRAINT `oIDOderdetail_oIDOder`
  FOREIGN KEY (`oID`)
  REFERENCES `oder`(`oID`);
  
CREATE TABLE `quanlybanhang`.`products` (
  `pID` INT NOT NULL,
  `pName` VARCHAR(45) NULL,
  `pPrice` VARCHAR(45) NULL,
  PRIMARY KEY (`pID`));
  alter table `oderdetail`
  add constraint `pIDoderdetail_pIdproducts`
  foreign key  (`pID`)
  REFERENCES `products`(`pID`);
 
  