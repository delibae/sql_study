/* 등록 */
CREATE TABLE add_car (
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_no NUMBER(5) NOT NULL /* 차대번호 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_add_car
	ON add_car (
		add_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE add_car
	ADD
		CONSTRAINT PK_add_car
		PRIMARY KEY (
			add_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 승용차 */
CREATE TABLE normal_car (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	car_size VARCHAR2(5) NOT NULL /* 크기 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_normal_car
	ON normal_car (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE normal_car
	ADD
		CONSTRAINT PK_normal_car
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 검사 */
CREATE TABLE check_car (
	co_no NUMBER(5) NOT NULL, 
	accident CHAR(1) NOT NULL, 
	drive CHAR(1) NOT NULL, 
	dashboard CHAR(1) NOT NULL, 
	regi CHAR(1) NOT NULL, 
	car_in CHAR(1) NOT NULL,
	car_out CHAR(1) NOT NULL, 
	car_option CHAR(1) NOT NULL, 
	engine CHAR(1) NOT NULL,
	bottom CHAR(1) NOT NULL
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_check_car
	ON check_car (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE check_car
	ADD
		CONSTRAINT PK_check_car
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;


/* 딜러회원 */
CREATE TABLE dealer_ID (
	id VARCHAr2(10) NOT NULL, /* ID */
	d_grade NUMBER(2) NOT NULL, /* 회원등급 */
	d_name VARCHAR2(5) NOT NULL, /* 이름 */
	d_id2 NUMBER(13) NOT NULL, /* 주민번호 */
	d_age NUMBER(3) NOT NULL, /* 나이 */
	d_birth NUMBER(6) NOT NULL, /* 생년월일 */
	d_phone NUMBER(11) NOT NULL, /* 핸드폰번호 */
	d_addr VARCHAR2(20) NOT NULL, /* 주소 */
	d_bgrade NUMBER(1) NOT NULL, /* 신용등급 */
	d_com NUMBER(10) NOT NULL /* 소속회사_연락처 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_dealer_ID
	ON dealer_ID (
		id ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE dealer_ID
	ADD
		CONSTRAINT PK_dealer_ID
		PRIMARY KEY (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;


/* 일반회원 */
CREATE TABLE normal_ID (
	id VARCHAr2(10) NOT NULL, /* ID */
	grade NUMBER(2) NOT NULL, /* 회원등급 */
	n_name VARCHAR2(5) NOT NULL, /* 이름 */
	id2 NUMBER(13) NOT NULL, /* 주민번호 */
	age NUMBER(3) NOT NULL, /* 나이 */
	birth NUMBER(6) NOT NULL, /* 생년월일 */
	phone NUMBER(11) NOT NULL, /* 핸드폰번호 */
	addr VARCHAR2(20) NOT NULL /* 주소 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_normal_ID
	ON normal_ID (
		id ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE normal_ID
	ADD
		CONSTRAINT PK_normal_ID
		PRIMARY KEY (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 차량보증 */
CREATE TABLE guarantee (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	g_ex_date DATE NOT NULL /* 보증종료일 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_guarantee
	ON guarantee (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE guarantee
	ADD
		CONSTRAINT PK_guarantee
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;


/* 거래 */
CREATE TABLE contract (
	co_no NUMBER(5) NOT NULL, /* 거래번호 */
	c_no NUMBER(5) NOT NULL, /* 차대번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	co_date DATE NOT NULL, /* 구매일시 */
	co_true NUMBER(1) NOT NULL /* 결제확인 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_contract
	ON contract (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE contract
	ADD
		CONSTRAINT PK_contract
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 광고 */
CREATE TABLE ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	add_no NUMBER(5) NOT NULL, /* 등록번호 */
	a_ex_date DATE NOT NULL /* 종료시일 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_ad
	ON ad (
		ad_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE ad
	ADD
		CONSTRAINT PK_ad
		PRIMARY KEY (
			ad_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



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
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_car
	ON car (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE car
	ADD
		CONSTRAINT PK_car
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 화물차 */
CREATE TABLE truck (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	shape VARCHAR2(10) NOT NULL /* 형태 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_truck
	ON truck (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE truck
	ADD
		CONSTRAINT PK_truck
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 스포츠카 */
CREATE TABLE sport (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	engine NUMBER(2) NOT NULL /* 마력 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_sport
	ON sport (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE sport
	ADD
		CONSTRAINT PK_sport
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



/* 승합차 */
CREATE TABLE van (
	co_no NUMBER(5) NOT NULL, /* 차대번호 */
	p_num NUMBER(2) NOT NULL /* 인승 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_van
	ON van (
		co_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE van
	ADD
		CONSTRAINT PK_van
		PRIMARY KEY (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;


/* 광고연장요청 */
CREATE TABLE add_ad (
	ad_no NUMBER(5) NOT NULL, /* 광고번호 */
	id VARCHAr2(10) NOT NULL, /* ID */
	c_date DATE NOT NULL /* 변경시일 */
)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	LOGGING
	NOCOMPRESS
	NOCACHE
	NOPARALLEL
	NOROWDEPENDENCIES
	DISABLE ROW MOVEMENT;

CREATE UNIQUE INDEX PK_add_ad
	ON add_ad (
		ad_no ASC
	)
	STORAGE (
		BUFFER_POOL DEFAULT
	)
	NOLOGGING
	NOCOMPRESS
	NOSORT
	NOPARALLEL;

ALTER TABLE add_ad
	ADD
		CONSTRAINT PK_add_ad
		PRIMARY KEY (
			ad_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;



ALTER TABLE add_car
	ADD
		CONSTRAINT FK_normal_ID_TO_add_car
		FOREIGN KEY (
			id
		)
		REFERENCES normal_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE add_car
	ADD
		CONSTRAINT FK_dealer_ID_TO_add_car
		FOREIGN KEY (
			id
		)
		REFERENCES dealer_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE add_car
	ADD
		CONSTRAINT FK_car_TO_add_car
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE normal_car
	ADD
		CONSTRAINT FK_car_TO_normal_car
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE check_car
	ADD
		CONSTRAINT FK_car_TO_check_car
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE guarantee
	ADD
		CONSTRAINT FK_contract_TO_guarantee
		FOREIGN KEY (
			co_no
		)
		REFERENCES contract (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE contract
	ADD
		CONSTRAINT FK_normal_ID_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES normal_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE contract
	ADD
		CONSTRAINT FK_dealer_ID_TO_contract
		FOREIGN KEY (
			id
		)
		REFERENCES dealer_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE contract
	ADD
		CONSTRAINT FK_car_TO_contract
		FOREIGN KEY (
			c_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE ad
	ADD
		CONSTRAINT FK_add_car_TO_ad
		FOREIGN KEY (
			add_no
		)
		REFERENCES add_car (
			add_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE ad
	ADD
		CONSTRAINT FK_add_ad_TO_ad
		FOREIGN KEY (
			ad_no
		)
		REFERENCES add_ad (
			ad_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE truck
	ADD
		CONSTRAINT FK_car_TO_truck
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE sport
	ADD
		CONSTRAINT FK_car_TO_sport
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE van
	ADD
		CONSTRAINT FK_car_TO_van
		FOREIGN KEY (
			co_no
		)
		REFERENCES car (
			co_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE add_ad
	ADD
		CONSTRAINT FK_normal_ID_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES normal_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE add_ad
	ADD
		CONSTRAINT FK_dealer_ID_TO_add_ad
		FOREIGN KEY (
			id
		)
		REFERENCES dealer_ID (
			id
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

