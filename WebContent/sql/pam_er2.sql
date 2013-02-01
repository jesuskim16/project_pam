
/* Drop Tables */

DROP TABLE BOARD;
DROP TABLE BRANCHLOG;
DROP TABLE CUSTOMINFO;
DROP TABLE BRANCH;
DROP TABLE REBATE;
DROP TABLE PHONEMODEL;
DROP TABLE PHONEPRICE;

select * from rebate;

/* Drop Sequences */

DROP SEQUENCE BOARD_SEQ;
DROP SEQUENCE BRCLOG_SEQ;
DROP SEQUENCE BRC_SEQ;
DROP SEQUENCE CUSTOM_SEQ;
DROP SEQUENCE MODEL_SEQ;
DROP SEQUENCE PRICE_SEQ;
DROP SEQUENCE REBATE_SEQ;




/* Create Sequences */

CREATE SEQUENCE BOARD_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE BRCLOG_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE BRC_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE CUSTOM_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE MODEL_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE PRICE_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;
CREATE SEQUENCE REBATE_SEQ INCREMENT BY 1 START WITH 1 NOCACHE;



/* Create Tables */

CREATE TABLE BOARD
(
	SEQ NUMBER NOT NULL,
	BOARD_CHK NUMBER(2) NOT NULL,
	TITLE VARCHAR2(100) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	READCOUNT NUMBER DEFAULT 0,
	RP_SEQ NUMBER DEFAULT 0,
	WRITE_DATE DATE DEFAULT SYSDATE,
	WRITE_IP VARCHAR2(20),
	BRC_ID VARCHAR2(20) NOT NULL,
	FILENAME VARCHAR2(100),
	PRIMARY KEY (SEQ)
);

SELECT * FROM BRANCH;
CREATE TABLE BRANCH
(
	SEQ NUMBER NOT NULL UNIQUE,			--SEQ
	BRC_ID VARCHAR2(20) NOT NULL, 		--판매점 ID
	ATTACH_ID VARCHAR2(20),				--대리점 ID
	PASSWORD VARCHAR2(20) NOT NULL,		--패스워드
	BRC_NAME VARCHAR2(30) NOT NULL,		--판매점 이름
	BRC_PHONE VARCHAR2(20),				--판매점 전화번호
	BRC_ADDR1 VARCHAR2(200),			--판매점 주소
	BRC_ADDR2 VARCHAR2(200),			--판매점 상세 주소
	BRC_POST VARCHAR2(8),				--우편번호
	BRC_BOSS VARCHAR2(20) NOT NULL,		--대표자 이름
	BOSS_PHONE VARCHAR2(20),			--대표자 전화번호
	BRC_LEV NUMBER(2) DEFAULT 0,		--레벨(1: 대리점, 2:판매점)
	BRC_STATE NUMBER(2) DEFAULT 0,		--상태
	WRITE_ID VARCHAR2(20),				--작성자 ID
	WRITE_DATE DATE DEFAULT SYSDATE,	--작성일
	WRITE_IP VARCHAR2(20),				--작성자 IP
	PRIMARY KEY (BRC_ID)		
);


CREATE TABLE BRANCHLOG
(
	SEQ NUMBER NOT NULL,
	LOG_DATE DATE DEFAULT SYSDATE,
	LOG_IP VARCHAR2(20) NOT NULL,
	BRC_ID VARCHAR2(20) NOT NULL,
	PRIMARY KEY (SEQ)
);
 	


CREATE TABLE CUSTOMINFO
(
	SEQ NUMBER NOT NULL,
	CUST_NAME VARCHAR2(20),				--고객 이름
	CUST_PHONE VARCHAR2(20),			--고객 번호
	CONT_TERM VARCHAR2(20) NOT NULL,	--약정 기간
	OPEN_DATE DATE NOT NULL,			--개통일
	MEMO VARCHAR2(4000),				--메모
	WRITE_DATE DATE DEFAULT SYSDATE,	--작성일 
	WRITE_IP VARCHAR2(20),				--작성 IP
	BRC_ID VARCHAR2(20) NOT NULL,		--판매점 ID
	PRICE_NAME VARCHAR2(50) NOT NULL,	--요금제 
	MODEL_CODE VARCHAR2(50) NOT NULL,	--모델 코드
	REBATE number(8) NOT NULL,			--요금제
	CUST_BIRTH DATE NOT NULL,			--주민번호
	PRIMARY KEY (SEQ)
);
	

SELECT * FROM PHONEMODEL;
CREATE TABLE PHONEMODEL
(
	SEQ NUMBER NOT NULL UNIQUE,
	MODEL_CODE VARCHAR2(50) NOT NULL,
	MODEL_NAME VARCHAR2(50) NOT NULL,
	FILENAME VARCHAR2(100) NOT NULL,
	OPEN_DATE DATE NOT NULL,
	WRITE_DATE DATE DEFAULT SYSDATE,
	WRITE_IP VARCHAR2(20),
	MAKE_COMP VARCHAR2(20) NOT NULL,
	PRIMARY KEY (MODEL_CODE)
);

SELECT * FROM PHONEPRICE;
CREATE TABLE PHONEPRICE
(
	SEQ NUMBER NOT NULL UNIQUE,
	PRICE_NAME VARCHAR2(50) NOT NULL,
	PRICE NUMBER(8) NOT NULL,
	USE_CALL VARCHAR2(100),
	USE_SMS VARCHAR2(100),
	USE_DATA VARCHAR2(100),
	MEMO VARCHAR2(500),
	WRITE_DATE DATE DEFAULT SYSDATE,
	WRITE_IP VARCHAR2(20),
	PRIMARY KEY (PRICE_NAME)
);


CREATE TABLE REBATE
(
	SEQ NUMBER NOT NULL,
	LTE34 NUMBER(8) DEFAULT 0,
	LTE42 NUMBER(8) DEFAULT 0,
	LTE52 NUMBER(8) DEFAULT 0,
	LTE62 NUMBER(8) DEFAULT 0,
	LTE72 NUMBER(8) DEFAULT 0,
	LTE100 NUMBER(8) DEFAULT 0,
	MODEL_CODE VARCHAR2(50) NOT NULL,
	PRIMARY KEY (SEQ)
);



/* Create Foreign Keys */




	
	
	
	
	
	 
