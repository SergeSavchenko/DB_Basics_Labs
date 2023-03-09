import csv
import psycopg2

username = 'student01'
password = '9959'
database = 'student01_DB'

OUTPUT_FILE_T = 'student01_DB_{}.csv'

TABLES = [
    'student_info',
    'student_stats',
    'student_level',
    'level_name',
    'test_name',
]

conn = psycopg2.connect(user=username, password=password, dbname=database)

with conn:
    cur = conn.cursor()

    for table_name in TABLES:
        cur.execute('SELECT * FROM ' + table_name)
        fields = [x[0] for x in cur.description]
        with open(OUTPUT_FILE_T.format(table_name), 'w') as outfile:
            writer = csv.writer(outfile)
            writer.writerow(fields)
            for row in cur:
                writer.writerow([str(x) for x in row])

 
