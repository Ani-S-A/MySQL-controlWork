DROP PROCEDURE IF EXISTS EvenNumbers;
DELIMITER $$
CREATE PROCEDURE EvenNumbers(n INT)
BEGIN
	SET @i := 1;
    SET @result := CONCAT('');
    WHILE @i < n+1 DO
		IF @i MOD 2 = 0 AND @i < n+1
			THEN SET @result = CONCAT(@result, ' ', @i);
        END IF;
		SET @i = @i + 1;
	END WHILE;
    SELECT @result;
END$$
DELIMITER ;

CALL EvenNumbers(100);