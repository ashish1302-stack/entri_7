-- Assignment_7
-- using Country_1 and persons_1

ALTER TABLE Persons_1
ADD DOB DATE;

select*from persons_1;

DELIMITER $$



CREATE FUNCTION CalculateAge(DOB DATE) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Age INT;
    SET Age = TIMESTAMPDIFF(YEAR, DOB, CURDATE());
    RETURN Age;
END$$

DELIMITER ;

SELECT Id, Fname, DOB, CalculateAge(DOB) AS Age
FROM Persons_1;

SELECT Id, Country_name, CHAR_LENGTH(Country_name) AS Length
FROM Country_1;

SELECT Id, Country_name, SUBSTRING(Country_name, 1, 3) AS FirstThreeChars
FROM Country_1;

SELECT Id, Country_name, UPPER(Country_name) AS UppercaseName, LOWER(Country_name) AS LowercaseName
FROM Country_1;
