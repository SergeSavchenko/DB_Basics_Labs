--Creating tables

CREATE TABLE student_info
(
  student_id  char(10)  NOT NULL,
  gender      char(10)  NOT NULL,
  ethnicity   char(20)  NOT NULL
);


CREATE TABLE student_stats
(
  student_id  char(10)  NOT NULL,
  level       char(25)  NOT NULL,
  test_id     char(10)  NOT NULL,
  score       char(10)  NOT NULL 
);

CREATE TABLE student_level
(
  student_id       char(10) NOT NULL,
  level            char(25) NOT NULL,
  test_preparation char(10) NOT NULL
);

CREATE TABLE level_name
(
  level_id char(10) NOT NULL,
  name     char(30) NOT NULL
);

CREATE TABLE test_name
(
  test_id char(10) NOT NULL,
  name    char(30) NOT NULL
);

--Defining primary keys
ALTER TABLE student_info ADD CONSTRAINT PK_student_info PRIMARY KEY (student_id);

ALTER TABLE student_stats ADD CONSTRAINT PK_student_stats PRIMARY KEY (student_id, level, test_id);

ALTER TABLE student_level ADD CONSTRAINT PK_student_level PRIMARY KEY (student_id, level);

ALTER TABLE level_name ADD CONSTRAINT PK_level_name PRIMARY KEY (level_id);

ALTER TABLE test_name ADD CONSTRAINT PK_test_name PRIMARY KEY (test_id);

--Defining foreign keys
ALTER TABLE student_level
ADD CONSTRAINT FK_student_level_student_info FOREIGN KEY (student_id) REFERENCES student_info (student_id);
ALTER TABLE student_level
ADD CONSTRAINT FK_student_level_level_name FOREIGN KEY (level) REFERENCES level_name (level_id);

ALTER TABLE student_stats
ADD CONSTRAINT FK_student_stats_student_info FOREIGN KEY (student_id) REFERENCES student_info (student_id);
ALTER TABLE student_stats
ADD CONSTRAINT FK_student_stats_level_name FOREIGN KEY (level) REFERENCES level_name (level_id);
ALTER TABLE student_stats
ADD CONSTRAINT FK_student_stats_test_name FOREIGN KEY (test_id) REFERENCES test_name (test_id);