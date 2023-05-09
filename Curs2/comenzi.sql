CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `universitate2023`.`utilizatori` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nume` VARCHAR(45) NOT NULL,
  `Prenume` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(145) NULL,
  `Telefon` CHAR(10) NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY an HAVING nr_cursuri <=5


SELECT VERSION(), NOW();
--aceasta selecteaza versiunea si data din ziua respectiva 

SELECT * FROM student;
--aceasta selecteaza toti studentii din baza de date

SELECT titlu_curs FROM cursuri; 

SELECT nume, prenume FROM universitate.student;

SELECT COUNT(id) AS nr, an  FROM student GROUP BY an;
--selecteaza ca si nr_an, numarul de stundenti din fiecare an

SELECT SUM(bursa) FROM student WHERE an=1 AND bursa IS NOT NULL GROUP BY an;

SELECT SUM(bursa) AS total, an FROM student WHERE bursa IS NOT NULL GROUP BY an;

UPDATE student SET status='bursier' WHERE bursa IS NOT  NULL;



SELECT CONCAT(nume,' ', prenume) AS full_name, an FROM universitate.student;