/* ?? ????? */
CREATE TABLE aaa (
	djf <???? ???? ????> NOT NULL /* ?? ?¡À? */
);

CREATE UNIQUE INDEX PK_aaa
	ON aaa (
		djf ASC
	);

ALTER TABLE aaa
	ADD
		CONSTRAINT PK_aaa
		PRIMARY KEY (
			djf
		);

COMMENT ON TABLE aaa IS '?? ?????';

COMMENT ON COLUMN aaa.djf IS '?? ?¡À?';

/* ??? */
CREATE TABLE add (
	add_no NUMBER(5) NOT NULL, /* ????? */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_no NUMBER(5) NOT NULL /* ?????? */
);

CREATE UNIQUE INDEX PK_add
	ON add (
		add_no ASC
	);

ALTER TABLE add
	ADD
		CONSTRAINT PK_add
		PRIMARY KEY (
			add_no
		);

COMMENT ON TABLE add IS '???';

COMMENT ON COLUMN add.add_no IS '?????';

COMMENT ON COLUMN add.id IS 'ID';

COMMENT ON COLUMN add.co_no IS '??????';

/* ?¢¯??? */
CREATE TABLE normal_car (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	size VARCHAR2(5) NOT NULL /* ??? */
);

CREATE UNIQUE INDEX PK_normal_car
	ON normal_car (
		co_no ASC
	);

ALTER TABLE normal_car
	ADD
		CONSTRAINT PK_normal_car
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE normal_car IS '?¢¯???';

COMMENT ON COLUMN normal_car.co_no IS '??????';

COMMENT ON COLUMN normal_car.size IS '???';

/* ??? */
CREATE TABLE check (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	accident NUMBER(1) NOT NULL, /* ??????? */
	drive NUMBER(1) NOT NULL, /* ???????? */
	dashboard NUMBER(1) NOT NULL, /* ????????/??????? */
	regi NUMBER(1) NOT NULL, /* ???????? */
	in NUMBER(1) NOT NULL, /* ???????????? */
	out NUMBER(1) NOT NULL, /* ??????????? */
	option NUMBER(1) NOT NULL, /* ??????? */
	engine NUMBER(1) NOT NULL, /* ?????????? */
	bottom NUMBER(1) NOT NULL /* ??????? */
);

CREATE UNIQUE INDEX PK_check
	ON check (
		co_no ASC
	);

ALTER TABLE check
	ADD
		CONSTRAINT PK_check
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE check IS '???';

COMMENT ON COLUMN check.co_no IS '??????';

COMMENT ON COLUMN check.accident IS '???????';

COMMENT ON COLUMN check.drive IS '????????';

COMMENT ON COLUMN check.dashboard IS '????????/???????';

COMMENT ON COLUMN check.regi IS '????????';

COMMENT ON COLUMN check.in IS '????????????';

COMMENT ON COLUMN check.out IS '???????????';

COMMENT ON COLUMN check.option IS '???????';

COMMENT ON COLUMN check.engine IS '??????????';

COMMENT ON COLUMN check.bottom IS '???????';

/* ??????? */
CREATE TABLE dealer (
	id VARCHAr2(10) NOT NULL, /* ID */
	d_grade NUMBER(2) NOT NULL, /* ?????? */
	d_name VARCHAR2(5) NOT NULL, /* ??? */
	d_id2 NUMBER(13) NOT NULL, /* ??¥é?? */
	d_age NUMBER(3) NOT NULL, /* ???? */
	d_birth NUMBER(6) NOT NULL, /* ??????? */
	d_phone NUMBER(11) NOT NULL, /* ???????? */
	d_add VARCHAR2(20) NOT NULL, /* ??? */
	d_bgrade NUMBER(1) NOT NULL, /* ????? */
	d_com NUMBER(10) NOT NULL /* ??????_????? */
);

CREATE UNIQUE INDEX PK_dealer
	ON dealer (
		id ASC
	);

ALTER TABLE dealer
	ADD
		CONSTRAINT PK_dealer
		PRIMARY KEY (
			id
		);

COMMENT ON TABLE dealer IS '???????';

COMMENT ON COLUMN dealer.id IS 'ID';

COMMENT ON COLUMN dealer.d_grade IS '??????';

COMMENT ON COLUMN dealer.d_name IS '???';

COMMENT ON COLUMN dealer.d_id2 IS '??¥é??';

COMMENT ON COLUMN dealer.d_age IS '????';

COMMENT ON COLUMN dealer.d_birth IS '???????';

COMMENT ON COLUMN dealer.d_phone IS '????????';

COMMENT ON COLUMN dealer.d_add IS '???';

COMMENT ON COLUMN dealer.d_bgrade IS '?????';

COMMENT ON COLUMN dealer.d_com IS '??????_?????';

/* ?????? */
CREATE TABLE nomal (
	id VARCHAr2(10) NOT NULL, /* ID */
	grade NUMBER(2) NOT NULL, /* ?????? */
	name VARCHAR2(5) NOT NULL, /* ??? */
	id2 NUMBER(13) NOT NULL, /* ??¥é?? */
	age NUMBER(3) NOT NULL, /* ???? */
	birth NUMBER(6) NOT NULL, /* ??????? */
	phone NUMBER(11) NOT NULL, /* ???????? */
	add VARCHAR2(20) NOT NULL /* ??? */
);

CREATE UNIQUE INDEX PK_nomal
	ON nomal (
		id ASC
	);

ALTER TABLE nomal
	ADD
		CONSTRAINT PK_nomal
		PRIMARY KEY (
			id
		);

COMMENT ON TABLE nomal IS '??????';

COMMENT ON COLUMN nomal.id IS 'ID';

COMMENT ON COLUMN nomal.grade IS '??????';

COMMENT ON COLUMN nomal.name IS '???';

COMMENT ON COLUMN nomal.id2 IS '??¥é??';

COMMENT ON COLUMN nomal.age IS '????';

COMMENT ON COLUMN nomal.birth IS '???????';

COMMENT ON COLUMN nomal.phone IS '????????';

COMMENT ON COLUMN nomal.add IS '???';

/* ???????? */
CREATE TABLE guarantee (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	g_ex_date DATE NOT NULL /* ?????????? */
);

CREATE UNIQUE INDEX PK_guarantee
	ON guarantee (
		co_no ASC
	);

ALTER TABLE guarantee
	ADD
		CONSTRAINT PK_guarantee
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE guarantee IS '????????';

COMMENT ON COLUMN guarantee.co_no IS '??????';

COMMENT ON COLUMN guarantee.g_ex_date IS '??????????';

/* ??? */
CREATE TABLE contract (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	c_no NUMBER(5) NOT NULL, /* ?????? */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_date DATE NOT NULL, /* ??????? */
	co_true NUMBER(1) NOT NULL /* ??????? */
);

CREATE UNIQUE INDEX PK_contract
	ON contract (
		co_no ASC
	);

ALTER TABLE contract
	ADD
		CONSTRAINT PK_contract
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE contract IS '???';

COMMENT ON COLUMN contract.co_no IS '??????';

COMMENT ON COLUMN contract.c_no IS '??????';

COMMENT ON COLUMN contract.id IS 'ID';

COMMENT ON COLUMN contract.co_date IS '???????';

COMMENT ON COLUMN contract.co_true IS '???????';

/* ???? */
CREATE TABLE ad (
	ad_no NUMBER(5) NOT NULL, /* ??????? */
	add_no NUMBER(5) NOT NULL, /* ????? */
	a_ex_date DATE NOT NULL /* ??????? */
);

CREATE UNIQUE INDEX PK_ad
	ON ad (
		ad_no ASC
	);

ALTER TABLE ad
	ADD
		CONSTRAINT PK_ad
		PRIMARY KEY (
			ad_no
		);

COMMENT ON TABLE ad IS '????';

COMMENT ON COLUMN ad.ad_no IS '???????';

COMMENT ON COLUMN ad.add_no IS '?????';

COMMENT ON COLUMN ad.a_ex_date IS '???????';

/* ????? */
CREATE TABLE car (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	maker VARCHAR2(10) NOT NULL, /* ?????? */
	model VARCHAR2(10) NOT NULL, /* ?? */
	car_grade NUMBER(1) NOT NULL, /* ??? */
	car_date DATE NOT NULL, /* ???? */
	trans NUMBER(1) NOT NULL, /* ????? */
	color VARCHAR2(10) NOT NULL, /* ???? */
	meter NUMBER(10) NOT NULL, /* ?????? */
	price NUMBER(20) NOT NULL /* ???? */
);

CREATE UNIQUE INDEX PK_car
	ON car (
		co_no ASC
	);

ALTER TABLE car
	ADD
		CONSTRAINT PK_car
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE car IS '?????';

COMMENT ON COLUMN car.co_no IS '??????';

COMMENT ON COLUMN car.maker IS '??????';

COMMENT ON COLUMN car.model IS '??';

COMMENT ON COLUMN car.car_grade IS '???';

COMMENT ON COLUMN car.car_date IS '????';

COMMENT ON COLUMN car.trans IS '?????';

COMMENT ON COLUMN car.color IS '????';

COMMENT ON COLUMN car.meter IS '??????';

COMMENT ON COLUMN car.price IS '????';

/* ????? */
CREATE TABLE truck (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	shape VARCHAR2(10) NOT NULL /* ???? */
);

CREATE UNIQUE INDEX PK_truck
	ON truck (
		co_no ASC
	);

ALTER TABLE truck
	ADD
		CONSTRAINT PK_truck
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE truck IS '?????';

COMMENT ON COLUMN truck.co_no IS '??????';

COMMENT ON COLUMN truck.shape IS '????';

/* ??????? */
CREATE TABLE sport (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	engine NUMBER(2) NOT NULL /* ???? */
);

CREATE UNIQUE INDEX PK_sport
	ON sport (
		co_no ASC
	);

ALTER TABLE sport
	ADD
		CONSTRAINT PK_sport
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE sport IS '???????';

COMMENT ON COLUMN sport.co_no IS '??????';

COMMENT ON COLUMN sport.engine IS '????';

/* ?????? */
CREATE TABLE van (
	co_no NUMBER(5) NOT NULL, /* ?????? */
	p_num NUMBER(2) NOT NULL /* ?¥í? */
);

CREATE UNIQUE INDEX PK_van
	ON van (
		co_no ASC
	);

ALTER TABLE van
	ADD
		CONSTRAINT PK_van
		PRIMARY KEY (
			co_no
		);

COMMENT ON TABLE van IS '??????';

COMMENT ON COLUMN van.co_no IS '??????';

COMMENT ON COLUMN van.p_num IS '?¥í?';

/* ?????????? */
CREATE TABLE add_ad (
	ad_no NUMBER(5) NOT NULL, /* ??????? */
	id VARCHAr2(10) NOT NULL, /* ID */
	c_date DATE NOT NULL /* ??????? */
);

CREATE UNIQUE INDEX PK_add_ad
	ON add_ad (
		ad_no ASC
	);

ALTER TABLE add_ad
	ADD
		CONSTRAINT PK_add_ad
		PRIMARY KEY (
			ad_no
		);

COMMENT ON TABLE add_ad IS '??????????';

COMMENT ON COLUMN add_ad.ad_no IS '???????';

COMMENT ON COLUMN add_ad.id IS 'ID';

COMMENT ON COLUMN add_ad.c_date IS '???????';

ALTER TABLE add
	ADD
		CONSTRAINT FK_nomal_TO_add
		FOREIGN KEY (
			id
		)
		REFERENCES nomal (
			id
		);

ALTER TABLE add
	ADD
		CONSTRAINT FK_dealer_TO_add
		FOREIGN KEY (
			id
		)
		REFERENCES dealer (
			id
		);

ALTER TABLE add
	ADD
		CONSTRAINT FK_car_TO_add
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE normal_car
	ADD
		CONSTRAINT FK_car_TO_normal_car
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE check
	ADD
		CONSTRAINT FK_car_TO_check
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE guarantee
	ADD
		CONSTRAINT FK_contract_TO_guarantee
		FOREIGN KEY (
			co_no
		)
		REFERENCES contract (
			co_no
		);

ALTER TABLE contract
	ADD
		CONSTRAINT FK_nomal_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES nomal (
			id
		);

ALTER TABLE contract
	ADD
		CONSTRAINT FK_dealer_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES dealer (
			id
		);

ALTER TABLE contract
	ADD
		CONSTRAINT FK_car_TO_contract
		FOREIGN KEY (
			c_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE ad
	ADD
		CONSTRAINT FK_add_TO_ad
		FOREIGN KEY (
			add_no
		)
		REFERENCES add (
			add_no
		);

ALTER TABLE ad
	ADD
		CONSTRAINT FK_add_ad_TO_ad
		FOREIGN KEY (
			ad_no
		)
		REFERENCES add_ad (
			ad_no
		);

ALTER TABLE truck
	ADD
		CONSTRAINT FK_car_TO_truck
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE sport
	ADD
		CONSTRAINT FK_car_TO_sport
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE van
	ADD
		CONSTRAINT FK_car_TO_van
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		);

ALTER TABLE add_ad
	ADD
		CONSTRAINT FK_nomal_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES nomal (
			id
		);

ALTER TABLE add_ad
	ADD
		CONSTRAINT FK_dealer_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES dealer (
			id
		);

