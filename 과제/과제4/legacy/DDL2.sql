/* ȸ�� */
CREATE TABLE MY_SCHEMA.TABLE (
);

COMMENT ON TABLE MY_SCHEMA.TABLE IS 'ȸ��';

/* �Ϲ�ȸ�� */
CREATE TABLE MY_SCHEMA.nomal (
	id VARCHAr2(10) NOT NULL, /* ID */
	grade NUMBER(2) NOT NULL, /* ȸ����� */
	name VARCHAR2(5) NOT NULL, /* �̸� */
	id2 NUMBER(13) NOT NULL, /* �ֹι�ȣ */
	age NUMBER(3) NOT NULL, /* ���� */
	birth NUMBER(6) NOT NULL, /* ������� */
	phone NUMBER(11) NOT NULL, /* �ڵ�����ȣ */
	add VARCHAR2(20) NOT NULL /* �ּ� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_nomal
	ON MY_SCHEMA.nomal (
		id ASC
	);

ALTER TABLE MY_SCHEMA.nomal
	ADD
		CONSTRAINT PK_nomal
		PRIMARY KEY (
			id
		);

COMMENT ON TABLE MY_SCHEMA.nomal IS '�Ϲ�ȸ��';

COMMENT ON COLUMN MY_SCHEMA.nomal.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.nomal.grade IS 'ȸ�����';

COMMENT ON COLUMN MY_SCHEMA.nomal.name IS '�̸�';

COMMENT ON COLUMN MY_SCHEMA.nomal.id2 IS '�ֹι�ȣ';

COMMENT ON COLUMN MY_SCHEMA.nomal.age IS '����';

COMMENT ON COLUMN MY_SCHEMA.nomal.birth IS '�������';

COMMENT ON COLUMN MY_SCHEMA.nomal.phone IS '�ڵ�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.nomal.add IS '�ּ�';

/* ����ȸ�� */
CREATE TABLE MY_SCHEMA.dealer (
	id VARCHAr2(10) NOT NULL, /* ID */
	d_grade NUMBER(2) NOT NULL, /* ȸ����� */
	d_name VARCHAR2(5) NOT NULL, /* �̸� */
	d_id2 NUMBER(13) NOT NULL, /* �ֹι�ȣ */
	d_age NUMBER(3) NOT NULL, /* ���� */
	d_birth NUMBER(6) NOT NULL, /* ������� */
	d_phone NUMBER(11) NOT NULL, /* �ڵ�����ȣ */
	d_add VARCHAR2(20) NOT NULL, /* �ּ� */
	d_bgrade NUMBER(1) NOT NULL, /* �ſ��� */
	d_com NUMBER(10) NOT NULL /* �Ҽ�ȸ��_����ó */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_dealer
	ON MY_SCHEMA.dealer (
		id ASC
	);

ALTER TABLE MY_SCHEMA.dealer
	ADD
		CONSTRAINT PK_dealer
		PRIMARY KEY (
			id
		);

COMMENT ON TABLE MY_SCHEMA.dealer IS '����ȸ��';

COMMENT ON COLUMN MY_SCHEMA.dealer.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_grade IS 'ȸ�����';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_name IS '�̸�';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_id2 IS '�ֹι�ȣ';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_age IS '����';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_birth IS '�������';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_phone IS '�ڵ�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_add IS '�ּ�';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_bgrade IS '�ſ���';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_com IS '�Ҽ�ȸ��_����ó';

/* ��� */
CREATE TABLE MY_SCHEMA.add (
	add_no NUMBER(5) NOT NULL, /* ��Ϲ�ȣ */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_no NUMBER(5) NOT NULL /* �����ȣ */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_add
	ON MY_SCHEMA.add (
		add_no ASC
	);

ALTER TABLE MY_SCHEMA.add
	ADD
		CONSTRAINT PK_add
		PRIMARY KEY (
			add_no
		);

COMMENT ON TABLE MY_SCHEMA.add IS '���';

COMMENT ON COLUMN MY_SCHEMA.add.add_no IS '��Ϲ�ȣ';

COMMENT ON COLUMN MY_SCHEMA.add.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.add.co_no IS '�����ȣ';

/* �˻� */
CREATE TABLE MY_SCHEMA.TABLE5 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE5 IS '�˻�';

/* ���� */
CREATE TABLE MY_SCHEMA.TABLE6 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE6 IS '����';

/* �ڵ��� */
CREATE TABLE MY_SCHEMA.car (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	maker VARCHAR2(10) NOT NULL, /* ������ */
	model VARCHAR2(10) NOT NULL, /* �� */
	car_grade NUMBER(1) NOT NULL, /* ��� */
	car_date DATE NOT NULL, /* ���� */
	trans NUMBER(1) NOT NULL, /* ���ӱ� */
	color VARCHAR2(10) NOT NULL, /* ���� */
	meter NUMBER(10) NOT NULL, /* ����Ÿ� */
	price NUMBER(20) NOT NULL /* ���� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_car
	ON MY_SCHEMA.car (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.car
	ADD
		CONSTRAINT PK_car
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.car IS '�ڵ���';

COMMENT ON COLUMN MY_SCHEMA.car.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.car.maker IS '������';

COMMENT ON COLUMN MY_SCHEMA.car.model IS '��';

COMMENT ON COLUMN MY_SCHEMA.car.car_grade IS '���';

COMMENT ON COLUMN MY_SCHEMA.car.car_date IS '����';

COMMENT ON COLUMN MY_SCHEMA.car.trans IS '���ӱ�';

COMMENT ON COLUMN MY_SCHEMA.car.color IS '����';

COMMENT ON COLUMN MY_SCHEMA.car.meter IS '����Ÿ�';

COMMENT ON COLUMN MY_SCHEMA.car.price IS '����';

/* �¿��� */
CREATE TABLE MY_SCHEMA.normal_car (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	size VARCHAR2(5) NOT NULL /* ũ�� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_normal_car
	ON MY_SCHEMA.normal_car (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.normal_car
	ADD
		CONSTRAINT PK_normal_car
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.normal_car IS '�¿���';

COMMENT ON COLUMN MY_SCHEMA.normal_car.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.normal_car.size IS 'ũ��';

/* ������ */
CREATE TABLE MY_SCHEMA.van (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	p_num NUMBER(2) NOT NULL /* �ν� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_van
	ON MY_SCHEMA.van (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.van
	ADD
		CONSTRAINT PK_van
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.van IS '������';

COMMENT ON COLUMN MY_SCHEMA.van.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.van.p_num IS '�ν�';

/* ������ī */
CREATE TABLE MY_SCHEMA.sport (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	engine NUMBER(2) NOT NULL /* ���� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_sport
	ON MY_SCHEMA.sport (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.sport
	ADD
		CONSTRAINT PK_sport
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.sport IS '������ī';

COMMENT ON COLUMN MY_SCHEMA.sport.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.sport.engine IS '����';

/* ȭ���� */
CREATE TABLE MY_SCHEMA.TABLE11 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE11 IS 'ȭ����';

/* ȭ���� */
CREATE TABLE MY_SCHEMA.truck (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	shape VARCHAR2(10) NOT NULL /* ���� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_truck
	ON MY_SCHEMA.truck (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.truck
	ADD
		CONSTRAINT PK_truck
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.truck IS 'ȭ����';

COMMENT ON COLUMN MY_SCHEMA.truck.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.truck.shape IS '����';

/* ȭ����2 */
CREATE TABLE MY_SCHEMA.TABLE13 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE13 IS 'ȭ����2';

/* �ŷ� */
CREATE TABLE MY_SCHEMA.contract (
	co_no NUMBER(5) NOT NULL, /* �ŷ���ȣ */
	c_no NUMBER(5) NOT NULL, /* �����ȣ */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_date DATE NOT NULL, /* �����Ͻ� */
	co_true NUMBER(1) NOT NULL /* ����Ȯ�� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_contract
	ON MY_SCHEMA.contract (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.contract
	ADD
		CONSTRAINT PK_contract
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.contract IS '�ŷ�';

COMMENT ON COLUMN MY_SCHEMA.contract.co_no IS '�ŷ���ȣ';

COMMENT ON COLUMN MY_SCHEMA.contract.c_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.contract.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.contract.co_date IS '�����Ͻ�';

COMMENT ON COLUMN MY_SCHEMA.contract.co_true IS '����Ȯ��';

/* �˻� */
CREATE TABLE MY_SCHEMA.check (
	co_no NUMBER(5) NOT NULL, /* �����ȣ */
	accident NUMBER(1) NOT NULL, /* ����� */
	drive NUMBER(1) NOT NULL, /* �������� */
	dashboard NUMBER(1) NOT NULL, /* ����Ǽ���/��ü���� */
	regi NUMBER(1) NOT NULL, /* �����Ȯ�� */
	in NUMBER(1) NOT NULL, /* ������������ */
	out NUMBER(1) NOT NULL, /* �����ܺ����� */
	option NUMBER(1) NOT NULL, /* �ɼ����� */
	engine NUMBER(1) NOT NULL, /* ���������� */
	bottom NUMBER(1) NOT NULL /* �Ϻ����� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_check
	ON MY_SCHEMA.check (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.check
	ADD
		CONSTRAINT PK_check
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.check IS '�˻�';

COMMENT ON COLUMN MY_SCHEMA.check.co_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.check.accident IS '�����';

COMMENT ON COLUMN MY_SCHEMA.check.drive IS '��������';

COMMENT ON COLUMN MY_SCHEMA.check.dashboard IS '����Ǽ���/��ü����';

COMMENT ON COLUMN MY_SCHEMA.check.regi IS '�����Ȯ��';

COMMENT ON COLUMN MY_SCHEMA.check.in IS '������������';

COMMENT ON COLUMN MY_SCHEMA.check.out IS '�����ܺ�����';

COMMENT ON COLUMN MY_SCHEMA.check.option IS '�ɼ�����';

COMMENT ON COLUMN MY_SCHEMA.check.engine IS '����������';

COMMENT ON COLUMN MY_SCHEMA.check.bottom IS '�Ϻ�����';

/* �������� */
CREATE TABLE MY_SCHEMA.TABLE16 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE16 IS '��������';

/* ���� */
CREATE TABLE MY_SCHEMA.TABLE17 (
	COL2 <���� ���� ����> NOT NULL /* ���� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_TABLE17
	ON MY_SCHEMA.TABLE17 (
		COL2 ASC
	);

ALTER TABLE MY_SCHEMA.TABLE17
	ADD
		CONSTRAINT PK_TABLE17
		PRIMARY KEY (
			COL2
		);

COMMENT ON TABLE MY_SCHEMA.TABLE17 IS '����';

COMMENT ON COLUMN MY_SCHEMA.TABLE17.COL2 IS '����';

/* ���� */
CREATE TABLE MY_SCHEMA.ad (
	ad_no NUMBER(5) NOT NULL, /* �����ȣ */
	add_no NUMBER(5) NOT NULL, /* ��Ϲ�ȣ */
	a_ex_date DATE NOT NULL /* ������� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_ad
	ON MY_SCHEMA.ad (
		ad_no ASC
	);

ALTER TABLE MY_SCHEMA.ad
	ADD
		CONSTRAINT PK_ad
		PRIMARY KEY (
			ad_no
		);

COMMENT ON TABLE MY_SCHEMA.ad IS '����';

COMMENT ON COLUMN MY_SCHEMA.ad.ad_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.ad.add_no IS '��Ϲ�ȣ';

COMMENT ON COLUMN MY_SCHEMA.ad.a_ex_date IS '�������';

/* �������û */
CREATE TABLE MY_SCHEMA.add_ad (
	ad_no NUMBER(5) NOT NULL, /* �����ȣ */
	id VARCHAr2(10) NOT NULL, /* ID */
	c_date DATE NOT NULL /* ������� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_add_ad
	ON MY_SCHEMA.add_ad (
		ad_no ASC
	);

ALTER TABLE MY_SCHEMA.add_ad
	ADD
		CONSTRAINT PK_add_ad
		PRIMARY KEY (
			ad_no
		);

COMMENT ON TABLE MY_SCHEMA.add_ad IS '�������û';

COMMENT ON COLUMN MY_SCHEMA.add_ad.ad_no IS '�����ȣ';

COMMENT ON COLUMN MY_SCHEMA.add_ad.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.add_ad.c_date IS '�������';

/* �������� */
CREATE TABLE MY_SCHEMA.guarantee (
	co_no NUMBER(5) NOT NULL, /* �ŷ���ȣ */
	g_ex_date DATE NOT NULL /* ���������� */
);

CREATE UNIQUE INDEX MY_SCHEMA.PK_guarantee
	ON MY_SCHEMA.guarantee (
		co_no ASC
	);

ALTER TABLE MY_SCHEMA.guarantee
	ADD
		CONSTRAINT PK_guarantee
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE MY_SCHEMA.guarantee IS '��������';

COMMENT ON COLUMN MY_SCHEMA.guarantee.co_no IS '�ŷ���ȣ';

COMMENT ON COLUMN MY_SCHEMA.guarantee.g_ex_date IS '����������';

ALTER TABLE MY_SCHEMA.add
	ADD
		CONSTRAINT FK_nomal_TO_add
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.nomal (
			id
		);

ALTER TABLE MY_SCHEMA.add
	ADD
		CONSTRAINT FK_dealer_TO_add
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.dealer (
			id
		);

ALTER TABLE MY_SCHEMA.add
	ADD
		CONSTRAINT FK_car_TO_add
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.normal_car
	ADD
		CONSTRAINT FK_car_TO_normal_car
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.van
	ADD
		CONSTRAINT FK_car_TO_van
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.sport
	ADD
		CONSTRAINT FK_car_TO_sport
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.truck
	ADD
		CONSTRAINT FK_car_TO_truck
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.contract
	ADD
		CONSTRAINT FK_nomal_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.nomal (
			id
		);

ALTER TABLE MY_SCHEMA.contract
	ADD
		CONSTRAINT FK_dealer_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.dealer (
			id
		);

ALTER TABLE MY_SCHEMA.contract
	ADD
		CONSTRAINT FK_car_TO_contract
		FOREIGN KEY (
			c_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.check
	ADD
		CONSTRAINT FK_car_TO_check
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.car (
			co_no
		);

ALTER TABLE MY_SCHEMA.ad
	ADD
		CONSTRAINT FK_add_TO_ad
		FOREIGN KEY (
			add_no
		)
		REFERENCES MY_SCHEMA.add (
			add_no
		);

ALTER TABLE MY_SCHEMA.ad
	ADD
		CONSTRAINT FK_add_ad_TO_ad
		FOREIGN KEY (
			ad_no
		)
		REFERENCES MY_SCHEMA.add_ad (
			ad_no
		);

ALTER TABLE MY_SCHEMA.add_ad
	ADD
		CONSTRAINT FK_nomal_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.nomal (
			id
		);

ALTER TABLE MY_SCHEMA.add_ad
	ADD
		CONSTRAINT FK_dealer_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES MY_SCHEMA.dealer (
			id
		);

ALTER TABLE MY_SCHEMA.guarantee
	ADD
		CONSTRAINT FK_contract_TO_guarantee
		FOREIGN KEY (
			co_no
		)
		REFERENCES MY_SCHEMA.contract (
			co_no
		);

