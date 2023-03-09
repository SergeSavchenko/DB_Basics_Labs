DROP FUNCTION IF EXISTS removing();
CREATE OR REPLACE FUNCTION removing() RETURNS void
LANGUAGE 'plpgsql'
AS $$
BEGIN 
    DELETE FROM student_stats 
    WHERE student_id IN 
		(SELECT student_id FROM student_level WHERE test_preparation = 'none') AND level IN ('HS', 'SHS');
END;
$$;


--Ця функція видаляє тих студенів, хто не мав підготовчого курсу до екзаменів і навчається в старшій школі.