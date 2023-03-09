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
    viz1_1 = []
    viz1_2 = []

    for row in cur.fetchall():
        for i in range(len(row)):
            if i == 0:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz1_1.append(int(row[i]))
                    else:
                        viz1_1.append(row[i].strip())
                else:
                    viz1_1.append(row[i])
            else:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz1_2.append(int(row[i]))
                    else:
                        viz1_2.append(row[i].strip())
                else:
                    viz1_2.append(row[i])


    x_range = range(len(viz1_1))

    figure, (bar_ax, pie_ax, graph_ax) = plt.subplots(1, 3)

    bar_ax.bar(x_range, viz1_2)
    bar_ax.set_title('Результат математичного тесту')
    bar_ax.set_xlabel('Рівень навчання')
    bar_ax.set_xticks(x_range, viz1_1)
    bar_ax.set_ylabel('Оцінка')
    bar_ax.set_xticklabels(viz1_1)



    cur.execute(query_2)
    viz2_1 = []
    viz2_2 = []


    for row in cur.fetchall():
        for i in range(len(row)):
            if i == 0:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz2_1.append(int(row[i]))
                    else:
                        viz2_1.append(row[i].strip())
                else:
                    viz2_1.append(row[i])
            else:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz2_2.append(int(row[i]))
                    else:
                        viz2_2.append(row[i].strip())
                else:
                    viz2_2.append(row[i])


    
    pie_ax.pie(viz2_2, labels=viz2_1, autopct='%1.1f%%')
    pie_ax.set_title('Частка кожного рівня навчання')

    cur.execute(query_3)
    viz3_1 = []
    viz3_2 = []
    for row in cur.fetchall():
        for i in range(len(row)):
            if i == 0:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz3_1.append(int(row[i]))
                    else:
                        viz3_1.append(row[i].strip())
                else:
                    viz3_1.append(row[i])
            else:
                if isinstance(row[i], str):
                    if (row[i].strip()).isdigit():
                        viz3_2.append(int(row[i]))
                    else:
                        viz3_2.append(row[i].strip())
                else:
                    viz3_2.append(row[i])


    graph_ax.plot(viz3_1, viz3_2, marker='o')
    graph_ax.set_xlabel('Id студента')
    graph_ax.set_ylabel('Результат письмового тесту')
    graph_ax.set_title('Графік залежності студента та результату його письмового тесту')

    for qnt, price in zip(viz3_1, viz3_2):
        graph_ax.annotate(price, xy=(qnt, price), xytext=(7, 2), textcoords='offset points')


mng = plt.get_current_fig_manager()
mng.resize(2000, 800)

plt.show()
