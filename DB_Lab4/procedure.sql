DROP PROCEDURE IF EXISTS add_10(integer);
CREATE OR REPLACE PROCEDURE add_10(INOUT x integer)
LANGUAGE 'plpgsql'
AS $$
  BEGIN
    x := x + 10;
  END;
$$;

-- Ця процедура збільшує на 10 будь-яке передане їй число.