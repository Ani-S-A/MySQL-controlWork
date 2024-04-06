DROP FUNCTION IF EXISTS SecondConverter;
DELIMITER $$
CREATE FUNCTION SecondConverter(sec INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	SET @result := CONCAT(sec div 86400, ' days ', sec mod 86400 div 3600, ' hours ', sec mod 86400 mod 3600 div 60, ' minutes ', sec mod 86400 mod 3600 mod 60, ' seconds');
	RETURN @result;
END$$
DELIMITER ;

SELECT SecondConverter(1234567);