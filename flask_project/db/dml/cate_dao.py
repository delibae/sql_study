import pymysql


class catedao:
    def __init__(self):
        self.db = 'flask_db'
        self.pw = '1234'
        self.t_name = 'category'

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

    def ins(self, category_name):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()
        sql = f"insert into {self.t_name} (category_name) values('{category_name}')"

        # curs.execute(db, (empno, name, department, phone))
        curs.execute(sql)
        db.commit()
        db.close()

    def upd(self, category_code, category_name):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"update {self.t_name} set category_name='{category_name}' where category_code = {category_code}"
        curs.execute(sql)
        db.commit()
        db.close()

    def dele(self, category_code):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"delete from {self.t_name} where category_code={category_code}"
        curs.execute(sql)
        db.commit()
        db.close()


if __name__ == '__main__':
    mt_dao = catedao()
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.ins('eat')
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.upd(1,'cardd')
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.dele(1)
    # mt_list = mt_dao.get()
    # print(mt_list)
