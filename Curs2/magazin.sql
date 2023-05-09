CREATE SCHEMA `magazin2023` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `universitate2023`.`produse` (
  `idprodus` INT UNSIGNED NOT NULL,
  `Numep` VARCHAR(45) NOT NULL,
  `Cantitate` VARCHAR(45) NOT NULL,
  `idFirma` VARCHAR(45) NULL,
  `Firma` VARCHAR(45) NOT NULL,
  `AdresaFirma` VARCHAR(45) NULL,
  `MopdelP` VARCHAR(45) NULL,
  `StocP` VARCHAR(45) NULL,
  `Pret` DECIMAL(7) NULL,
  `CategorieP` VARCHAR(45) NULL,
  `DescriereP` TINYTEXT NULL,
  `Data_addp` DATE NULL,
  PRIMARY KEY (`idprodus`),
  UNIQUE INDEX `idFirma_UNIQUE` (`idFirma` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
ALTER TABLE `universitate2023`.`produse` 
CHANGE COLUMN `AdresaFirma` `AdresaFirma` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `MopdelP` `MopdelP` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `StocP` `StocP` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `Pret` `Pret` DECIMAL(7,0) NOT NULL ,
CHANGE COLUMN `CategorieP` `CategorieP` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `DescriereP` `DescriereP` TINYTEXT NOT NULL ,
CHANGE COLUMN `Data_addp` `Data_addp` DATE NOT NULL ,
ADD UNIQUE INDEX `AdresaFirma_UNIQUE` (`AdresaFirma` ASC) ;
;
