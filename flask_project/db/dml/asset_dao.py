import pymysql


class assetdao:
    def __init__(self):
        self.db = 'flask_db'
        self.pw = '1234'
        self.t_name = 'asset'

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

    def ins(self, id, cash, real_asset, loan):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()
        sql = f"insert into {self.t_name} (id, cash, real_asset, loan) values('{id}', {cash}, {real_asset}, {loan})"

        # curs.execute(db, (empno, name, department, phone))
        curs.execute(sql)
        db.commit()
        db.close()

    def upd(self, id, cash, real_asset, loan):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"update {self.t_name} set cash={cash},real_asset={real_asset},loan={loan} where id='{id}'"
        curs.execute(sql)
        db.commit()
        db.close()

    def dele(self, id):
        db = pymysql.connect(host='localhost', user='root', db=self.db, password=self.pw, charset='utf8')
        curs = db.cursor()

        sql = f"delete from {self.t_name} where id='{id}'"
        curs.execute(sql)
        db.commit()
        db.close()


if __name__ == '__main__':
    mt_dao = assetdao()
    mt_list = mt_dao.get()
    print(mt_list)
    # mt_dao.ins('hanjin',123,123,123)
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.upd(1,'cardd')
    # mt_list = mt_dao.get()
    # print(mt_list)
    # mt_dao.dele(1)
    # mt_list = mt_dao.get()
    # print(mt_list)
