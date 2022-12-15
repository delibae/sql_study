/* 새 테이블 */
CREATE TABLE aaa (
	djf <지정 되지 않음> NOT NULL /* 새 컬럼 */
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

COMMENT ON TABLE aaa IS '새 테이블';

COMMENT ON COLUMN aaa.djf IS '새 컬럼';

/* 등록 */
CREATE TABLE add (
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_no NUMBER(5) NOT NULL /* 차대번호 */
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

COMMENT ON TABLE add IS '등록';

COMMENT ON COLUMN add.add_no IS '등록번호';

COMMENT ON COLUMN add.id IS 'ID';

COMMENT ON COLUMN add.co_no IS '차대번호';

/* 승용차 */
CREATE TABLE normal_car (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	size VARCHAR2(5) NOT NULL /* 크기 */
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

COMMENT ON TABLE normal_car IS '승용차';

COMMENT ON COLUMN normal_car.co_no IS '차대번호';

COMMENT ON COLUMN normal_car.size IS '크기';

/* 검사 */
CREATE TABLE check (
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

COMMENT ON TABLE check IS '검사';

COMMENT ON COLUMN check.co_no IS '차대번호';

COMMENT ON COLUMN check.accident IS '사고여부';

COMMENT ON COLUMN check.drive IS '주행진단';

COMMENT ON COLUMN check.dashboard IS '계기판수리/교체흔적';

COMMENT ON COLUMN check.regi IS '등록증확인';

COMMENT ON COLUMN check.in IS '차량내부진단';

COMMENT ON COLUMN check.out IS '차량외부진단';

COMMENT ON COLUMN check.option IS '옵션진단';

COMMENT ON COLUMN check.engine IS '엔진룸진단';

COMMENT ON COLUMN check.bottom IS '하부진단';

/* 딜러회원 */
CREATE TABLE dealer (
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

COMMENT ON TABLE dealer IS '딜러회원';

COMMENT ON COLUMN dealer.id IS 'ID';

COMMENT ON COLUMN dealer.d_grade IS '회원등급';

COMMENT ON COLUMN dealer.d_name IS '이름';

COMMENT ON COLUMN dealer.d_id2 IS '주민번호';

COMMENT ON COLUMN dealer.d_age IS '나이';

COMMENT ON COLUMN dealer.d_birth IS '생년월일';

COMMENT ON COLUMN dealer.d_phone IS '핸드폰번호';

COMMENT ON COLUMN dealer.d_add IS '주소';

COMMENT ON COLUMN dealer.d_bgrade IS '신용등급';

COMMENT ON COLUMN dealer.d_com IS '소속회사_연락처';

/* 일반회원 */
CREATE TABLE nomal (
	id VARCHAr2(10) NOT NULL, /* ID */
	grade NUMBER(2) NOT NULL, /* 회원등급 */
	name VARCHAR2(5) NOT NULL, /* 이름 */
	id2 NUMBER(13) NOT NULL, /* 주민번호 */
	age NUMBER(3) NOT NULL, /* 나이 */
	birth NUMBER(6) NOT NULL, /* 생년월일 */
	phone NUMBER(11) NOT NULL, /* 핸드폰번호 */
	add VARCHAR2(20) NOT NULL /* 주소 */
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

COMMENT ON TABLE nomal IS '일반회원';

COMMENT ON COLUMN nomal.id IS 'ID';

COMMENT ON COLUMN nomal.grade IS '회원등급';

COMMENT ON COLUMN nomal.name IS '이름';

COMMENT ON COLUMN nomal.id2 IS '주민번호';

COMMENT ON COLUMN nomal.age IS '나이';

COMMENT ON COLUMN nomal.birth IS '생년월일';

COMMENT ON COLUMN nomal.phone IS '핸드폰번호';

COMMENT ON COLUMN nomal.add IS '주소';

/* 차량보증 */
CREATE TABLE guarantee (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	g_ex_date DATE NOT NULL /* 보증종료일 */
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

COMMENT ON TABLE guarantee IS '차량보증';

COMMENT ON COLUMN guarantee.co_no IS '거래번호';

COMMENT ON COLUMN guarantee.g_ex_date IS '보증종료일';

/* 거래 */
CREATE TABLE contract (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	c_no NUMBER(5) NOT NULL, /* 차대번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_date DATE NOT NULL, /* 구매일시 */
	co_true NUMBER(1) NOT NULL /* 결제확인 */
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

COMMENT ON TABLE contract IS '거래';

COMMENT ON COLUMN contract.co_no IS '거래번호';

COMMENT ON COLUMN contract.c_no IS '차대번호';

COMMENT ON COLUMN contract.id IS 'ID';

COMMENT ON COLUMN contract.co_date IS '구매일시';

COMMENT ON COLUMN contract.co_true IS '결제확인';

/* 광고 */
CREATE TABLE ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	a_ex_date DATE NOT NULL /* 종료시일 */
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

COMMENT ON TABLE ad IS '광고';

COMMENT ON COLUMN ad.ad_no IS '광고번호';

COMMENT ON COLUMN ad.add_no IS '등록번호';

COMMENT ON COLUMN ad.a_ex_date IS '종료시일';

/* 자동차 */
CREATE TABLE car (
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

COMMENT ON TABLE car IS '자동차';

COMMENT ON COLUMN car.co_no IS '차대번호';

COMMENT ON COLUMN car.maker IS '제조사';

COMMENT ON COLUMN car.model IS '모델';

COMMENT ON COLUMN car.car_grade IS '등급';

COMMENT ON COLUMN car.car_date IS '연식';

COMMENT ON COLUMN car.trans IS '변속기';

COMMENT ON COLUMN car.color IS '도색';

COMMENT ON COLUMN car.meter IS '주행거리';

COMMENT ON COLUMN car.price IS '가격';

/* 화물차 */
CREATE TABLE truck (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	shape VARCHAR2(10) NOT NULL /* 형태 */
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

COMMENT ON TABLE truck IS '화물차';

COMMENT ON COLUMN truck.co_no IS '차대번호';

COMMENT ON COLUMN truck.shape IS '형태';

/* 스포츠카 */
CREATE TABLE sport (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	engine NUMBER(2) NOT NULL /* 마력 */
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

COMMENT ON TABLE sport IS '스포츠카';

COMMENT ON COLUMN sport.co_no IS '차대번호';

COMMENT ON COLUMN sport.engine IS '마력';

/* 승합차 */
CREATE TABLE van (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	p_num NUMBER(2) NOT NULL /* 인승 */
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

COMMENT ON TABLE van IS '승합차';

COMMENT ON COLUMN van.co_no IS '차대번호';

COMMENT ON COLUMN van.p_num IS '인승';

/* 광고연장요청 */
CREATE TABLE add_ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	c_date DATE NOT NULL /* 변경시일 */
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

COMMENT ON TABLE add_ad IS '광고연장요청';

COMMENT ON COLUMN add_ad.ad_no IS '광고번호';

COMMENT ON COLUMN add_ad.id IS 'ID';

COMMENT ON COLUMN add_ad.c_date IS '변경시일';

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

