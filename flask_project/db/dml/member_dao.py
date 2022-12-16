import pymysql


class memdao:
    def __init__(self):
        self.db = 'flask_db'
        self.pw = '1234'
        self.t_name = 'member_info'

    def get(self):
        ret = []
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"select * from {self.t_name}";
        curs.execute(sql)

        rows = curs.fetchall()
        # for e in rows:
        #     temp = {'empno': e[0], 'name': e[1], 'department': e[2], 'phone': e[3], ''}
        #     ret.append(temp)

        db.commit()
        db.close()
        return rows

    def ins(self, id, pw, f_name, l_name, age, e_mail):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()
        sql = f"insert into {self.t_name} (id, pw, f_name, l_name, age, e_mail) values('{id}','{pw}','{f_name}','{l_name}', {age}, '{e_mail}')"

        # curs.execute(db, (empno, name, department, phone))
        curs.execute(sql)
        db.commit()
        db.close()

    def upd(self, id, pw, f_name, l_name, age, e_mail):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"update {self.t_name} set pw='{pw}', f_name = '{f_name}', l_name ='{l_name}', age = {age}, e_mail = '{e_mail}' where id = '{id}'"
        curs.execute(sql)
        db.commit()
        db.close()

    def dele(self, id):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"delete from {self.t_name} where id = '{id}'"
        curs.execute(sql)
        db.commit()
        db.close()


if __name__ == '__main__':
    mt_dao = memdao()
    mt_list = mt_dao.get()
    print(mt_list)
    mt_dao.ins('hanjin','1234','bae','hanjin',22,'sss')
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.upd('hanjin','1234','fff','lll',24,'sss@')
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.dele('hanjin')
    # mt_list = mt_dao.get()
    # print(mt_list)
