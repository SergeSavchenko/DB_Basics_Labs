--Створення тригерної функції
DROP TRIGGER IF EXISTS customer_state_insert ON customers;

CREATE OR REPLACE FUNCTION upper_level_id() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
     BEGIN
          UPDATE level_name 
          SET level_id = upper(level_id) WHERE level_name.level_id = NEW.level_id; 
		  RETURN NULL; 
     END;
$$;

--Cтворення тригеру
CREATE TRIGGER level_name_insert 
AFTER INSERT ON level_name
FOR EACH ROW EXECUTE FUNCTION upper_level_id()



--Цей тригер при додаванні нових полів до таблиці level_name переводитиме атрибут level_id у верхній регістр.