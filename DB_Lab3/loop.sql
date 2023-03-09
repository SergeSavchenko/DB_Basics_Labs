CREATE TABLE level_name_copy AS SELECT * FROM level_name;

--SELECT * FROM level_name_copy;



DO $$
 DECLARE
 	level_identificatior level_name_copy.level_id%TYPE;
 	lvl_name level_name_copy.name%TYPE;
 BEGIN
 	level_identificator := 'SC_';
 	lvl_name := 'some college ';
 	FOR counter IN 1..20
		LOOP
			INSERT INTO level_name_copy (level_id, name)
			 VALUES (level_identificator || counter, lvl_name || 15+counter);
		END LOOP;
 END;
 $$