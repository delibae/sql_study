import pymysql

db_name = 'flask_db'

db = pymysql.connect(host='localhost', user='root', db='flask_db', password='1234', charset='utf8')
curs = db.cursor()
tname = 'persons'
sql = f'''insert into {tname} (PersonId, LastName, FirstName, Address, City) values (1,'Bae','HanJin','DaeJeon','DJ')
'''

curs.execute(sql)

sql = "select * from persons";

curs.execute(sql)

rows = curs.fetchall()
print(rows)





db.commit()
db.close()