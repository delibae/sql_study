/* 회원 */
CREATE TABLE MY_SCHEMA.TABLE (
);

COMMENT ON TABLE MY_SCHEMA.TABLE IS '회원';

/* 일반회원 */
CREATE TABLE MY_SCHEMA.nomal (
	id VARCHAr2(10) NOT NULL, /* ID */
	grade NUMBER(2) NOT NULL, /* 회원등급 */
	name VARCHAR2(5) NOT NULL, /* 이름 */
	id2 NUMBER(13) NOT NULL, /* 주민번호 */
	age NUMBER(3) NOT NULL, /* 나이 */
	birth NUMBER(6) NOT NULL, /* 생년월일 */
	phone NUMBER(11) NOT NULL, /* 핸드폰번호 */
	add VARCHAR2(20) NOT NULL /* 주소 */
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

COMMENT ON TABLE MY_SCHEMA.nomal IS '일반회원';

COMMENT ON COLUMN MY_SCHEMA.nomal.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.nomal.grade IS '회원등급';

COMMENT ON COLUMN MY_SCHEMA.nomal.name IS '이름';

COMMENT ON COLUMN MY_SCHEMA.nomal.id2 IS '주민번호';

COMMENT ON COLUMN MY_SCHEMA.nomal.age IS '나이';

COMMENT ON COLUMN MY_SCHEMA.nomal.birth IS '생년월일';

COMMENT ON COLUMN MY_SCHEMA.nomal.phone IS '핸드폰번호';

COMMENT ON COLUMN MY_SCHEMA.nomal.add IS '주소';

/* 딜러회원 */
CREATE TABLE MY_SCHEMA.dealer (
	id VARCHAr2(10) NOT NULL, /* ID */
	d_grade NUMBER(2) NOT NULL, /* 회원등급 */
	d_name VARCHAR2(5) NOT NULL, /* 이름 */
	d_id2 NUMBER(13) NOT NULL, /* 주민번호 */
	d_age NUMBER(3) NOT NULL, /* 나이 */
	d_birth NUMBER(6) NOT NULL, /* 생년월일 */
	d_phone NUMBER(11) NOT NULL, /* 핸드폰번호 */
	d_add VARCHAR2(20) NOT NULL, /* 주소 */
	d_bgrade NUMBER(1) NOT NULL, /* 신용등급 */
	d_com NUMBER(10) NOT NULL /* 소속회사_연락처 */
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

COMMENT ON TABLE MY_SCHEMA.dealer IS '딜러회원';

COMMENT ON COLUMN MY_SCHEMA.dealer.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_grade IS '회원등급';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_name IS '이름';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_id2 IS '주민번호';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_age IS '나이';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_birth IS '생년월일';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_phone IS '핸드폰번호';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_add IS '주소';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_bgrade IS '신용등급';

COMMENT ON COLUMN MY_SCHEMA.dealer.d_com IS '소속회사_연락처';

/* 등록 */
CREATE TABLE MY_SCHEMA.add (
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_no NUMBER(5) NOT NULL /* 차대번호 */
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

COMMENT ON TABLE MY_SCHEMA.add IS '등록';

COMMENT ON COLUMN MY_SCHEMA.add.add_no IS '등록번호';

COMMENT ON COLUMN MY_SCHEMA.add.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.add.co_no IS '차대번호';

/* 검색 */
CREATE TABLE MY_SCHEMA.TABLE5 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE5 IS '검색';

/* 구입 */
CREATE TABLE MY_SCHEMA.TABLE6 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE6 IS '구입';

/* 자동차 */
CREATE TABLE MY_SCHEMA.car (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	maker VARCHAR2(10) NOT NULL, /* 제조사 */
	model VARCHAR2(10) NOT NULL, /* 모델 */
	car_grade NUMBER(1) NOT NULL, /* 등급 */
	car_date DATE NOT NULL, /* 연식 */
	trans NUMBER(1) NOT NULL, /* 변속기 */
	color VARCHAR2(10) NOT NULL, /* 도색 */
	meter NUMBER(10) NOT NULL, /* 주행거리 */
	price NUMBER(20) NOT NULL /* 가격 */
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

COMMENT ON TABLE MY_SCHEMA.car IS '자동차';

COMMENT ON COLUMN MY_SCHEMA.car.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.car.maker IS '제조사';

COMMENT ON COLUMN MY_SCHEMA.car.model IS '모델';

COMMENT ON COLUMN MY_SCHEMA.car.car_grade IS '등급';

COMMENT ON COLUMN MY_SCHEMA.car.car_date IS '연식';

COMMENT ON COLUMN MY_SCHEMA.car.trans IS '변속기';

COMMENT ON COLUMN MY_SCHEMA.car.color IS '도색';

COMMENT ON COLUMN MY_SCHEMA.car.meter IS '주행거리';

COMMENT ON COLUMN MY_SCHEMA.car.price IS '가격';

/* 승용차 */
CREATE TABLE MY_SCHEMA.normal_car (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	size VARCHAR2(5) NOT NULL /* 크기 */
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

COMMENT ON TABLE MY_SCHEMA.normal_car IS '승용차';

COMMENT ON COLUMN MY_SCHEMA.normal_car.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.normal_car.size IS '크기';

/* 승합차 */
CREATE TABLE MY_SCHEMA.van (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	p_num NUMBER(2) NOT NULL /* 인승 */
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

COMMENT ON TABLE MY_SCHEMA.van IS '승합차';

COMMENT ON COLUMN MY_SCHEMA.van.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.van.p_num IS '인승';

/* 스포츠카 */
CREATE TABLE MY_SCHEMA.sport (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	engine NUMBER(2) NOT NULL /* 마력 */
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

COMMENT ON TABLE MY_SCHEMA.sport IS '스포츠카';

COMMENT ON COLUMN MY_SCHEMA.sport.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.sport.engine IS '마력';

/* 화물차 */
CREATE TABLE MY_SCHEMA.TABLE11 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE11 IS '화물차';

/* 화물차 */
CREATE TABLE MY_SCHEMA.truck (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	shape VARCHAR2(10) NOT NULL /* 형태 */
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

COMMENT ON TABLE MY_SCHEMA.truck IS '화물차';

COMMENT ON COLUMN MY_SCHEMA.truck.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.truck.shape IS '형태';

/* 화물차2 */
CREATE TABLE MY_SCHEMA.TABLE13 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE13 IS '화물차2';

/* 거래 */
CREATE TABLE MY_SCHEMA.contract (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	c_no NUMBER(5) NOT NULL, /* 차대번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_date DATE NOT NULL, /* 구매일시 */
	co_true NUMBER(1) NOT NULL /* 결제확인 */
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

COMMENT ON TABLE MY_SCHEMA.contract IS '거래';

COMMENT ON COLUMN MY_SCHEMA.contract.co_no IS '거래번호';

COMMENT ON COLUMN MY_SCHEMA.contract.c_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.contract.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.contract.co_date IS '구매일시';

COMMENT ON COLUMN MY_SCHEMA.contract.co_true IS '결제확인';

/* 검사 */
CREATE TABLE MY_SCHEMA.check (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	accident NUMBER(1) NOT NULL, /* 사고여부 */
	drive NUMBER(1) NOT NULL, /* 주행진단 */
	dashboard NUMBER(1) NOT NULL, /* 계기판수리/교체흔적 */
	regi NUMBER(1) NOT NULL, /* 등록증확인 */
	in NUMBER(1) NOT NULL, /* 차량내부진단 */
	out NUMBER(1) NOT NULL, /* 차량외부진단 */
	option NUMBER(1) NOT NULL, /* 옵션진단 */
	engine NUMBER(1) NOT NULL, /* 엔진룸진단 */
	bottom NUMBER(1) NOT NULL /* 하부진단 */
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

COMMENT ON TABLE MY_SCHEMA.check IS '검사';

COMMENT ON COLUMN MY_SCHEMA.check.co_no IS '차대번호';

COMMENT ON COLUMN MY_SCHEMA.check.accident IS '사고여부';

COMMENT ON COLUMN MY_SCHEMA.check.drive IS '주행진단';

COMMENT ON COLUMN MY_SCHEMA.check.dashboard IS '계기판수리/교체흔적';

COMMENT ON COLUMN MY_SCHEMA.check.regi IS '등록증확인';

COMMENT ON COLUMN MY_SCHEMA.check.in IS '차량내부진단';

COMMENT ON COLUMN MY_SCHEMA.check.out IS '차량외부진단';

COMMENT ON COLUMN MY_SCHEMA.check.option IS '옵션진단';

COMMENT ON COLUMN MY_SCHEMA.check.engine IS '엔진룸진단';

COMMENT ON COLUMN MY_SCHEMA.check.bottom IS '하부진단';

/* 진단점검 */
CREATE TABLE MY_SCHEMA.TABLE16 (
);

COMMENT ON TABLE MY_SCHEMA.TABLE16 IS '진단점검';

/* 차종 */
CREATE TABLE MY_SCHEMA.TABLE17 (
	COL2 <지정 되지 않음> NOT NULL /* 차종 */
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

COMMENT ON TABLE MY_SCHEMA.TABLE17 IS '차종';

COMMENT ON COLUMN MY_SCHEMA.TABLE17.COL2 IS '차종';

/* 광고 */
CREATE TABLE MY_SCHEMA.ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	a_ex_date DATE NOT NULL /* 종료시일 */
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

COMMENT ON TABLE MY_SCHEMA.ad IS '광고';

COMMENT ON COLUMN MY_SCHEMA.ad.ad_no IS '광고번호';

COMMENT ON COLUMN MY_SCHEMA.ad.add_no IS '등록번호';

COMMENT ON COLUMN MY_SCHEMA.ad.a_ex_date IS '종료시일';

/* 광고연장요청 */
CREATE TABLE MY_SCHEMA.add_ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	c_date DATE NOT NULL /* 변경시일 */
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

COMMENT ON TABLE MY_SCHEMA.add_ad IS '광고연장요청';

COMMENT ON COLUMN MY_SCHEMA.add_ad.ad_no IS '광고번호';

COMMENT ON COLUMN MY_SCHEMA.add_ad.id IS 'ID';

COMMENT ON COLUMN MY_SCHEMA.add_ad.c_date IS '변경시일';

/* 차량보증 */
CREATE TABLE MY_SCHEMA.guarantee (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	g_ex_date DATE NOT NULL /* 보증종료일 */
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

COMMENT ON TABLE MY_SCHEMA.guarantee IS '차량보증';

COMMENT ON COLUMN MY_SCHEMA.guarantee.co_no IS '거래번호';

COMMENT ON COLUMN MY_SCHEMA.guarantee.g_ex_date IS '보증종료일';

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

