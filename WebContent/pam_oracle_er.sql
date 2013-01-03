
/* Drop Tables */

DROP TABLE BOARD;
DROP TABLE BRANCHLOG;
DROP TABLE CUSTOMINFO;
DROP TABLE BRANCH;
DROP TABLE PHONEMODEL;
DROP TABLE PHONEPRICE;



/* Drop Sequences */

DROP SEQUENCE BOARD_SEQ;	
DROP SEQUENCE BRCLOG_SEQ;	
DROP SEQUENCE BRC_SEQ;		
DROP SEQUENCE CUSTOM_SEQ;	
DROP SEQUENCE MODEL_SEQ;	
DROP SEQUENCE PRICE_SEQ;	




/* Create Sequences */

CREATE SEQUENCE BOARD_SEQ INCREMENT BY 1 START WITH 1;		--게시판seq  
CREATE SEQUENCE BRCLOG_SEQ INCREMENT BY 1 START WITH 1;     --접속기록seq 
CREATE SEQUENCE BRC_SEQ INCREMENT BY 1 START WITH 1;        --지점seq   
CREATE SEQUENCE CUSTOM_SEQ INCREMENT BY 1 START WITH 1;     --고객seq   
CREATE SEQUENCE MODEL_SEQ INCREMENT BY 1 START WITH 1;      --모델seq   
CREATE SEQUENCE PRICE_SEQ INCREMENT BY 1 START WITH 1;      --요금제seq  



/* Create Tables */

CREATE TABLE BOARD								--[게시판]
(
	SEQ 		NUMBER 			NOT NULL,			--seq(PK)
	BOARD_CHK 	NUMBER(2) 		NOT NULL,			--게시판종류
	TITLE 		VARCHAR2(100) 	NOT NULL,			--제목
	CONTENT 	VARCHAR2(4000) 	NOT NULL,			--내용
	READCOUNT 	NUMBER 			DEFAULT 0,			--조회수
	FILENAME	VARCHAR2(100),						--파일명
	RP_SEQ 		NUMBER 			DEFAULT 0,			--댓글기준번호
	WRITE_DATE 	DATE 			DEFAULT SYSDATE,	--작성일
	WRITE_IP 	VARCHAR2(20),						--작성IP
	BRC_ID 		VARCHAR2(20) 	NOT NULL,			--지점ID(FK)
	PRIMARY KEY (SEQ)
);


CREATE TABLE BRANCH								--[지점]
(
	SEQ 		NUMBER 			NOT NULL UNIQUE,	--seq	
	BRC_ID 		VARCHAR2(20) 	NOT NULL,			--지점ID(PK)
	ATTACH_ID 	VARCHAR2(20) 	NOT NULL,			--관리점ID
	PASSWORD 	VARCHAR2(20) 	NOT NULL,			--비밀번호
	BRC_NAME 	VARCHAR2(30) 	NOT NULL,			--지점명
	BRC_PHONE 	VARCHAR2(20),						--지점전화번호
	BRC_ADDR1 	VARCHAR2(50),						--지점주소1
	BRC_ADDR2 	VARCHAR2(50),						--지점주소2
	BRC_POST 	VARCHAR2(8),						--우편번호
	BRC_BOSS 	VARCHAR2(20) 	NOT NULL,			--대표이름
	BOSS_PHONE 	VARCHAR2(20),						--대표연락처
	BRC_LEV 	NUMBER(2) 		DEFAULT '0',		--레벨(대리점:1, 판매점:2)
	BRC_STATE 	NUMBER(2) 		DEFAULT 0,			--상태(기본0,삭제1)
0
	PRIMARY KEY (BRC_ID)
);


CREATE TABLE BRANCHLOG							--[접속기록]
(
	SEQ 		NUMBER 			NOT NULL,			--seq(PK)
	LOG_DATE 	DATE 			DEFAULT SYSDATE,	--기록일
	LOG_IP 		VARCHAR2(20) 	NOT NULL,			--기록ip
	BRC_ID 		VARCHAR2(20) 	NOT NULL,			--지점ID(FK)
	PRIMARY KEY (SEQ)
);


CREATE TABLE CUSTOMINFO							--[고객]
(
	SEQ 		NUMBER 			NOT NULL,		--seq(PK)
	CUST_NAME 	VARCHAR2(20),					--고객명
	CUST_PHONE 	VARCHAR2(20),					--핸드폰번호
	CUST_BIRTH	DATE,							--생년월일	
	CONT_TERM 	VARCHAR2(20) 	NOT NULL,		--약정기간
	OPEN_DATE 	DATE 			NOT NULL,		--개통일
	MEMO 		VARCHAR2(4000),					--메모
	WRITE_DATE 	DATE 			DEFAULT SYSDATE,--작성일
	WRITE_IP 	VARCHAR2(20),					--작성IP
	BRC_ID 		VARCHAR2(20) 	NOT NULL,		--작섬ID(FK)
	PRICE_NAME 	VARCHAR2(50) 	NOT NULL,		--모델명(FK)
	MODEL_CODE 	VARCHAR2(50) 	NOT NULL,		--요금제(FK)
	PRIMARY KEY (SEQ)
);


CREATE TABLE PHONEMODEL
(
	SEQ 		NUMBER 			NOT NULL UNIQUE,--seq
	MODEL_CODE 	VARCHAR2(50) 	NOT NULL,		--모델명(ex.m440s)(PK)
	MODEL_NAME 	VARCHAR2(50) 	NOT NULL,		--제품명(ex.갤럭시s3)
	FILENAME 	VARCHAR2(100) 	NOT NULL,		--파일명(이미지)
	MAKE_COMP	VARCHAR2(50)	NOT NULL,		--제조사
	OPEN_DATE 	DATE 			NOT NULL,		--제조일	
	WRITE_DATE 	DATE 			DEFAULT SYSDATE,--작성일
	WRITE_IP 	VARCHAR2(20),					--작성IP
	PRIMARY KEY (MODEL_CODE)
);


CREATE TABLE PHONEPRICE
(
	SEQ 		NUMBER 			NOT NULL UNIQUE,--seq
	PRICE_NAME 	VARCHAR2(50) 	NOT NULL,		--요금제이름
	PRICE 		NUMBER(8) 		NOT NULL,		--요금
	USE_CALL 	VARCHAR2(100),					--무료통화
	USE_SMS 	VARCHAR2(100),					--무료문자
	USE_DATA 	VARCHAR2(100),					--무료데이터
	MEMO 		VARCHAR2(500),					--기타메모
	WRITE_DATE 	DATE 			DEFAULT SYSDATE,--작성일
	WRITE_IP 	VARCHAR2(20),					--작성IP
	PRIMARY KEY (PRICE_NAME)
);



/* Create Foreign Keys */

ALTER TABLE BOARD				--게시판에 지점(BRC_ID)참조
	ADD FOREIGN KEY (BRC_ID)
	REFERENCES BRANCH (BRC_ID)
;


ALTER TABLE BRANCHLOG			--접속기록에 지점(BRC_ID)참조
	ADD FOREIGN KEY (BRC_ID)
	REFERENCES BRANCH (BRC_ID)
;


ALTER TABLE CUSTOMINFO			--고객정보에 지점(BRC_ID)참조
	ADD FOREIGN KEY (BRC_ID)
	REFERENCES BRANCH (BRC_ID)
;

ALTER TABLE CUSTOMINFO			--고객정보에 모델정보(MODEL_CODE)참조
	ADD FOREIGN KEY (MODEL_CODE)
	REFERENCES PHONEMODEL (MODEL_CODE)
;

ALTER TABLE CUSTOMINFO			--고객정보에 요금제(PRICE_NAME)참조
	ADD FOREIGN KEY (PRICE_NAME)
	REFERENCES PHONEPRICE (PRICE_NAME)
;

INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval,'manager1',  'MGR_ID',   '1111',  '대리점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       1,  'ADMIN', '127.0.0.1' );
INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV,   WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval, 'seller1','manager1',   '1111',  '판매점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       2,  'manger1', '127.0.0.1' );
			 
DELETE FROM branch;			    
			 
SELECT * FROM phonemodel;	
SELECT * FROM custominfo;

--make_comp(컬럼추가)
ALTER TABLE phonemodel ADD(make_comp varchar2(50));
DELETE FROM phonemodel;
ALTER TABLE phonemodel MODIFY(make_comp	varchar2(50) not null);

SELECT B.* 
FROM   (SELECT A.* ,rownum as rnum
    	FROM (	SELECT  rownum,seq,board_chk,title,content,readcount,rp_seq, to_char(write_date , 'YYYY-MM-DD') as write_date,brc_id
       			FROM board
       			ORDER BY rownum DESC
       			) A 
       	) B
WHERE 1<= rnum AND rnum <= 10


		SELECT seq, brc_name, brc_id, brc_phone,
		brc_addr1, brc_addr2, brc_post,
		brc_boss, boss_phone, to_char(write_date, 'YYYY-MM-DD') AS write_date
		FROM BRANCH
		WHERE BRC_LEV='2'
		ORDER BY seq ASC;

		SELECT * FROM BRANCH;


