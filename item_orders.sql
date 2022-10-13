CREATE SCHEMA `item_orders` ;


CREATE TABLE `item_orders`.`order` (
  `orderId` INT NOT NULL AUTO_INCREMENT,
  `orderDate` VARCHAR(1000) NULL,
  `orderStatus` VARCHAR(1000) NULL,
  PRIMARY KEY (`orderId`));



CREATE TABLE `item_orders`.`item` (
  `itemId` INT NOT NULL AUTO_INCREMENT,
  `orderId` INT NULL,
  `itemName` VARCHAR(1000) NULL,
  `itemUnitPrice` VARCHAR(1000) NULL,
  `itemQuantity` INT NULL,
  PRIMARY KEY (`itemId`),
  INDEX `FK_ID_Order_Id_1_idx` (`orderId` ASC) VISIBLE,
  CONSTRAINT `FK_ID_Order_Id_1`
    FOREIGN KEY (`orderId`)
    REFERENCES `item_orders`.`order` (`orderId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);