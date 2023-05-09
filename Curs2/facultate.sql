CREATE SCHEMA `facultate` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `facultate`.`studenti` (
  `idstudent` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nume` VARCHAR(45) NOT NULL,
  `Prenume` VARCHAR(45) NOT NULL,
  `Grupa` SET('1', '2', '3', '4') NOT NULL,
  `Email` VARCHAR(145) NULL,
  `data_add` VARCHAR(45) NULL,
  `status` ENUM('admis', 'respins', 'neevaluat') NULL DEFAULT 'neevaluat',
  `studenticol` VARCHAR(45) NULL,
  PRIMARY KEY (`idstudent`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) ,
  UNIQUE INDEX `nume_unic` (`Nume` ASC, `Prenume` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `magazin2023`.`studenti` (`idstudent`, `Nume`, `Prenume`, `Grupa`) VALUES ('1', 'Popescu', 'Dan', '1');

INSERT INTO `magazin2023`.`studenti` (`idstudent`, `Nume`, `Prenume`, `Grupa`, `Email`, `data_add`) VALUES ('2', 'Ionescu', 'Mihai', '1', 'ionescu@dan.com', '2023-04-23');
UPDATE `magazin2023`.`studenti` SET `data_add` = '2023-04-23' WHERE (`idstudent` = '1');