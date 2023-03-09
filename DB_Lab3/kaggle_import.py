import csv
import decimal
import psycopg2

username = 'student01'
password = '9959'
database = 'student01_DB'

INPUT_CSV_FILE = 'StudentsPerformance.csv'

query_0 = '''
CREATE TABLE student_stats
(
    student_id char(10) NOT NULL,
    level char(10) NOT NULL,
    test_id char(10) NOT NULL,
    score char(10) NOT NULL,
    CONSTRAINT pk_social_network_ads PRIMARY KEY (student_id, level, test_id)
)
'''

query_1 = '''
DELETE FROM student_stats
'''
query_2 = '''
DELETE FROM student_info
'''
query_3 = '''
DELETE FROM student_level
'''



query_4 = '''
INSERT INTO student_stats (student_id, level, test_id, score) VALUES (%s, %s, %s, %s)
'''

query_5 = '''
INSERT INTO student_info (student_id, gender, ethnicity) VALUES (%s, %s, %s)
'''

query_6 = '''
INSERT INTO student_level (student_id, level, test_preparation) VALUES (%s, %s, %s)
'''

def level_definition(strng):
    if strng == 'bachelor\'s degree':
        return 'BS'
    elif strng == 'master\'s degree':
        return 'MS'
    elif strng == 'associate\'s degree':
        return 'AS'
    elif strng == 'some college':
        return 'SC'
    elif strng == 'high school':
        return 'HS'
    elif strng == 'some high school':
        return 'SHS'
    else: return 'Unknown'
    


conn = psycopg2.connect(user=username, password=password, dbname=database)

with conn:
    cur = conn.cursor()
    #cur.execute(query_1)
    #cur.execute(query_2)
    #cur.execute(query_3)    
    with open(INPUT_CSV_FILE, 'r') as inf:
        reader = csv.DictReader(inf)
        for idx, row in enumerate(reader):
            values = (idx + 1, row['gender'], row['race/ethnicity']) 
            cur.execute(query_5, values)


            level = level_definition(row['parental level of education'])
            print(level)

            values = (idx + 1, level, row['test preparation course'])
            cur.execute(query_6, values)


            values = (idx + 1, level, 'MTH', row['math score']) 
            cur.execute(query_4, values)
            values = (idx + 1, level, 'RDG', row['reading score']) 
            cur.execute(query_4, values)
            values = (idx + 1, level, 'WRT', row['writing score']) 
            cur.execute(query_4, values)


    conn.commit()