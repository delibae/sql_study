/* member_info */
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE member_info (
	id VARCHAR(10) NOT NULL, /* id */
	pw VARCHAR(10) NOT NULL, /* pw */
	f_name VARCHAR(10) NOT NULL, /* 새 컬럼 */
	l_name VARCHAR(10) NOT NULL, /* 새 컬럼2 */
	age SMALLINT NOT NULL, /* 새 컬럼3 */
	e_mail VARCHAR(15) NOT NULL /* 새 컬럼4 */
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX PK_member_info
	ON member_info (
		id ASC
	);

ALTER TABLE member_info
	ADD
		CONSTRAINT PK_member_info
		PRIMARY KEY (
			id
		);



/* 새 테이블 */
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE asset (
	id VARCHAR(10) NOT NULL, /* 새 컬럼 */
	cash DOUBLE NOT NULL, /* 새 컬럼2 */
	real_asset DOUBLE NOT NULL, /* 새 컬럼3 */
	loan DOUBLE NOT NULL /* 새 컬럼4 */
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX PK_asset
	ON asset (
		id ASC
	);

ALTER TABLE asset
	ADD
		CONSTRAINT PK_asset
		PRIMARY KEY (
			id
		);



/* 새 테이블3 */
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE consumption (
	cons_no DOUBLE NOT NULL, /* 새 컬럼5 */
	id VARCHAR(10) NOT NULL, /* 새 컬럼 */
	amount DOUBLE NOT NULL, /* 새 컬럼2 */
	method_code DOUBLE NOT NULL, /* 새 컬럼3 */
	category_code DOUBLE NOT NULL /* 새 컬럼4 */
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX PK_consumption
	ON consumption (
		cons_no ASC
	);

ALTER TABLE consumption
	ADD
		CONSTRAINT PK_consumption
		PRIMARY KEY (
			cons_no
		);



/* 새 테이블4 */
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE method (
	method_code DOUBLE NOT NULL, /* 새 컬럼 */
	method_name VARCHAR(10) NOT NULL /* 새 컬럼2 */
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX PK_method
	ON method (
		method_code ASC
	);

ALTER TABLE method
	ADD
		CONSTRAINT PK_method
		PRIMARY KEY (
			method_code
		);


/* 새 테이블5 */
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE category (
	category_code DOUBLE NOT NULL, /* 새 컬럼 */
	category_name VARCHAR(10) NOT NULL /* 새 컬럼2 */
);

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE UNIQUE INDEX PK_category
	ON category (
		category_code ASC
	);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			category_code
		);



ALTER TABLE asset
	ADD
		CONSTRAINT FK_member_info_TO_asset
		FOREIGN KEY (
			id
		)
		REFERENCES member_info (
			id
		);

ALTER TABLE consumption
	ADD
		CONSTRAINT FK_member_info_TO_consumption
		FOREIGN KEY (
			id
		)
		REFERENCES member_info (
			id
		);

ALTER TABLE consumption
	ADD
		CONSTRAINT FK_method_TO_consumption
		FOREIGN KEY (
			method_code
		)
		REFERENCES method (
			method_code
		);

ALTER TABLE consumption
	ADD
		CONSTRAINT FK_category_TO_consumption
		FOREIGN KEY (
			category_code
		)
		REFERENCES category (
			category_code
		);

