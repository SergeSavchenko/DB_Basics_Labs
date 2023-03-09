import psycopg2
import matplotlib.pyplot as plt

username = 'student01'
password = '9959'
database = 'student01_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT level, score
FROM student_stats
WHERE test_id = 'MTH'
'''

query_2 = '''
SELECT level, COUNT(DISTINCT(student_id))
FROM student_stats
GROUP BY level
'''

query_3 = '''
SELECT student_id, score
FROM student_stats
WHERE test_id = 'WRT'
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur = conn.cursor()

    cur.execute(query_1)
    print("Querry 1...")
    for row in cur.fetchall():
        [print(x.strip(), end='\t') if isinstance(x, str) else print(x, end="\t") for x in row]
        print()

    print("\n\n")

    cur.execute(query_2)
    print("Querry 2...")
    for row in cur.fetchall():
        [print(x.strip(), end='\t') if isinstance(x, str) else print(x, end="\t") for x in row]
        print()
    print("\n\n")


    
    cur.execute(query_3)
    print("Querry 2...")
    for row in cur.fetchall():
        [print(x.strip(), end='\t') if isinstance(x, str) else print(x, end="\t") for x in row]
        print()
    print("\n\n")


