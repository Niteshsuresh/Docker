delimiter $$
CREATE PROCEDURE WhileLoopProc()
       BEGIN
               DECLARE x  INT;
               DECLARE str  VARCHAR(255);
               SET x = 1;
               SET str =  '';
               WHILE x  <= 5 DO
                           SET  str = CONCAT(str,x,',');
                           SET  x = x + 1;
               END WHILE;
               SELECT str;
       END$$
   DELIMITER ;

call WhileLoopProc();

-- --------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS RepeatLoopProc$$
CREATE PROCEDURE RepeatLoopProc()
       BEGIN
               DECLARE x  INT;
               DECLARE str  VARCHAR(255);
               SET x = 1;
               SET str =  '';
               REPEAT
                           SET  str = CONCAT(str,x,',');
                           SET  x = x + 1;
               UNTIL x  > 5
               END REPEAT;
               SELECT str;
       END$$
DELIMITER ;

call RepeatLoopProc();


-- --------------------------------------------------------
DELIMITER $$
DROP PROCEDURE IF EXISTS LoopProcedure$$
CREATE PROCEDURE LoopProcedure()
       BEGIN
               DECLARE x  INT;
               DECLARE str  VARCHAR(255);
               SET x = 1;
               SET str =  '';
               loop_label:  LOOP
                           IF  x > 10 THEN
                               LEAVE  loop_label;
                           END  IF;
                           SET  x = x + 1;
                           IF  (x mod 2) THEN
                               ITERATE  loop_label;
                           ELSE
                               SET  str = CONCAT(str,x,',');
                           END  IF;
 
               END LOOP;    
               SELECT str;
       END$$
DELIMITER ;

call LoopProcedure();
-- ----------------------------------------------------------------------
 

