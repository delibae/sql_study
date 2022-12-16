from flask import Flask, render_template, request, json, jsonify,redirect
from db.dml.method_dao import mtdao
from db.dml.member_dao import memdao
from db.dml.asset_dao import assetdao
from db.dml.consum_dao import condao
from db.dml.cate_dao import catedao
import pymysql


app = Flask('__name__')
db = pymysql.connect(host='localhost', user='root', db='flask_db', password='1234', charset='utf8')
curs = db.cursor()


@app.route('/')
def index():
    return render_template('index.html')
    # return jsonify(mt_list)


@app.route('/postmeminfo', methods=['POST'])
def post_meminfo():
    mem_dao = memdao()
    data = request.form.to_dict(flat=False)

    # print(data)
    # print([data[0][1], data[1][1], data[2][1], data[3][1], data[4][1],
    #             data[5][1]])
    mem_dao.ins(data['id'][0], data['pw'][0], data['f_name'][0], data['l_name'][0], data['age'][0],
                data['e_mail'][0])
    # print(data['id'][0], data['pw'][0], data['f_name'][0], data['l_name'][0], data['age'][0],
    #             data['e_mail'][0])
    return redirect("http://127.0.0.1:5000/login")

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/checklogin', methods=['POST'])
def checklogin():

    data = request.form.to_dict(flat=False)
    id = data['id'][0]
    pw = data['pw'][0]
    sql = f"select * from member_info where id = '{id}' and pw = '{pw}'";
    curs.execute(sql)
    rows = curs.fetchall()
    db.commit()


    if rows == None:
        return redirect("http://127.0.0.1:5000/login")
    else:
        return redirect(f"http://127.0.0.1:5000/main/{id}")

@app.route('/main/<id>')
def main(id):
    asset_dao = assetdao()
    # print(asset_dao.get(id))
    con_dao = condao()
    # print(con_dao.get(id))

    set = json.dumps(asset_dao.get(id))
    con = json.dumps(con_dao.get(id))

    set = json.loads(set)
    cash = set[0][1]
    real_asset = set[0][2]
    loan = set[0][3]
    con = json.loads(con)


    return render_template('main.html',value=id , cash = cash, real_asset = real_asset, loan = loan, con=con)

@app.route('/addcon/<id>', methods=['POST'])
def addcon(id):
    data = request.form.to_dict(flat=False)
    con_dao = condao()
    # print([id,data['amount'][0],data['method_code'][0],data['category_code'][0]])
    con_dao.ins(id,data['amount'][0],data['method_code'][0],data['category_code'][0])


    return redirect(f"http://127.0.0.1:5000/main/{id}")

@app.route('/addset/<id>', methods=['POST'])
def addset(id):
    data = request.form.to_dict(flat=False)
    cash = data['cash'][0]
    real_asset = data['real_asset'][0]
    loan = data['loan'][0]
    asset_dao = assetdao()
    # try:
    #     asset_dao.ins(id, cash, real_asset, loan)

    asset_dao.upd(id, cash, real_asset, loan)


    return redirect(f"http://127.0.0.1:5000/main/{id}")



@app.route('/getsetcon/<id>')
def getsetcon(id):
    asset_dao = assetdao()
    # print(asset_dao.get(id))
    con_dao = condao()
    # print(con_dao.get(id))
    return redirect(f"http://127.0.0.1:5000/main/{id}")

if '__name__' == '__main__':
    app.run()

app.run(host='0.0.0.0', port=8080)


