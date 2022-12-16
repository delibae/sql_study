import pymysql

db = pymysql.connect(host='localhost', user='root', db='flask_db', password='1234', charset='utf8')
curs = db.cursor()

sql = f'''insert into method (method_code, method_name) values(0,'card')'''

# curs.execute(db, (empno, name, department, phone))
curs.execute(sql)
db.commit()
db.close()