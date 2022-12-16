import pymysql


class MyEmpDao:
    def __init__(self):
        self.db = 'flask_db'
        self.pw = '1234'

    def getEmps(self, t_name):
        ret = []
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"select * from {t_name}";
        curs.execute(sql)

        rows = curs.fetchall()
        # for e in rows:
        #     temp = {'empno': e[0], 'name': e[1], 'department': e[2], 'phone': e[3], ''}
        #     ret.append(temp)

        db.commit()
        db.close()
        return rows

    def insEmp(self, t_name, sql_string):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        # db = f'''insert into {t_name} (empno, name, department, phone) values(%s,%s,%s,%s)'''

        # curs.execute(db, (empno, name, department, phone))
        curs.execute(sql_string)
        db.commit()
        db.close()

    def updEmp(self, t_name, empno, name, department, phone):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"update {t_name} set name=%s, department=%s, phone=%s where empno=%s"
        curs.execute(sql, (name, department, phone, empno))
        db.commit()
        db.close()

    def delEmp(self,t_name, empno):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"delete from {t_name} where empno=%s"
        curs.execute(sql, empno)
        db.commit()
        db.close()


if __name__ == '__main__':
    # MyEmpDao().insEmp('aaa', 'bb', 'cc', 'dd')
    # MyEmpDao().updEmp('aa', 'dd', 'dd', 'aa')
    # MyEmpDao().delEmp('aaa')
    emplist = MyEmpDao().getEmps('persons');
    print(emplist)