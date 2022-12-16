import pymysql


class condao:
    def __init__(self):
        self.db = 'flask_db'
        self.pw = '1234'
        self.t_name = 'consumption'

    def get(self, id):
        ret = []
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"select * from {self.t_name} where id = '{id}'";
        curs.execute(sql)

        rows = curs.fetchall()
        # for e in rows:
        #     temp = {'empno': e[0], 'name': e[1], 'department': e[2], 'phone': e[3], ''}
        #     ret.append(temp)

        db.commit()
        db.close()
        return rows


    def ins(self, id, amount, method_code, category_code):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()
        sql = f"insert into {self.t_name} (id,amount,method_code,category_code) values('{id}',{amount},{method_code},{category_code})"

        # curs.execute(db, (empno, name, department, phone))
        curs.execute(sql)
        db.commit()
        db.close()

    def upd(self, cons_no, id, amount, method_code, category_code):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"update {self.t_name} set id= '{id}', amount = {amount}, method_code={method_code},category_code={category_code} where cons_no={cons_no}"
        curs.execute(sql)
        db.commit()
        db.close()

    def dele(self, cons_no):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"delete from {self.t_name} where cons_no = {cons_no}"
        curs.execute(sql)
        db.commit()
        db.close()


if __name__ == '__main__':
    con_dao = condao()
    mt_list = con_dao.get()
    print(mt_list)
    con_dao.ins('hanjin',123,4,1)
    mt_list = con_dao.get()
    print(mt_list)
    # con_dao.upd(1,'cardd')
    # mt_list = con_dao.get()
    # print(mt_list)
    # con_dao.dele(1)
    # mt_list = con_dao.get()
    # print(mt_list)
