-----------------------------
--Populate student_info table
-----------------------------
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('0', 'female', 'group B');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('1', 'female', 'group C');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('2', 'female', 'group B');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('3', 'male', 'group A');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('4', 'male', 'group C');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('5', 'female', 'group B');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('6', 'female', 'group B');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('7', 'male', 'group B');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('8', 'male', 'group D');
INSERT INTO student_info(student_id, gender, ethnicity)
VALUES('9', 'female', 'group B');

-----------------------------
--Populate level_name table
-----------------------------
INSERT INTO level_name(level_id, name)
VALUES('MS', 'Masters degree');
INSERT INTO level_name(level_id, name)
VALUES('BS', 'Bachelors degree');
INSERT INTO level_name(level_id, name)
VALUES('AS', 'Associates degree');
INSERT INTO level_name(level_id, name)
VALUES('SC', 'Some college');
INSERT INTO level_name(level_id, name)
VALUES('HS', 'High school');

-----------------------------
--Populate test_name table
-----------------------------
INSERT INTO test_name(test_id, name)
VALUES('MTH', 'Mathematics');
INSERT INTO test_name(test_id, name)
VALUES('RDG', 'Reading');
INSERT INTO test_name(test_id, name)
VALUES('WRT', 'Writing');


-----------------------------
--Populate student_stats table
-----------------------------
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('0', 'BS', 'MTH', '72');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('0', 'BS', 'RDG', '72');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('0', 'BS', 'WRT', '74');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('1', 'SC', 'MTH', '69');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('1', 'SC', 'RDG', '90');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('1', 'SC', 'WRT', '88');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('2', 'MS', 'MTH', '90');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('2', 'MS', 'RDG', '95');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('2', 'MS', 'WRT', '93');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('3', 'AS', 'MTH', '47');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('3', 'AS', 'RDG', '57');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('3', 'AS', 'WRT', '44');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('4', 'SC', 'MTH', '76');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('4', 'SC', 'RDG', '78');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('4', 'SC', 'WRT', '75');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('5', 'AS', 'MTH', '71');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('5', 'AS', 'RDG', '83');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('5', 'AS', 'WRT', '78');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('6', 'SC', 'MTH', '88');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('6', 'SC', 'RDG', '95');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('6', 'SC', 'WRT', '92');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('7', 'SC', 'MTH', '40');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('7', 'SC', 'RDG', '43');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('7', 'SC', 'WRT', '39');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('8', 'HS', 'MTH', '64');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('8', 'HS', 'RDG', '64');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('8', 'HS', 'WRT', '67');

INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('9', 'HS', 'MTH', '38');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('9', 'HS', 'RDG', '60');
INSERT INTO student_stats(student_id, level, test_id, score)
VALUES('9', 'HS', 'WRT', '50');




-----------------------------
--Populate student_level table
-----------------------------
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('0', 'BS', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('1', 'SC', 'completed');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('2', 'MS', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('3', 'AS', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('4', 'SC', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('5', 'AS', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('6', 'SC', 'completed');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('7', 'SC', 'none');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('8', 'HS', 'completed');
INSERT INTO student_level(student_id, level, test_preparation)
VALUES('9', 'HS', 'none');
