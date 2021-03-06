
/* Drop Tables */

DROP TABLE BOARD;
DROP TABLE BRANCHLOG;
DROP TABLE CUSTOMINFO;
DROP TABLE BRANCH;
DROP TABLE PHONEMODEL purge;
DROP TABLE PHONEPRICE;

  select * from PHONEMODEL

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
	PRIMARY KEY (BRC_ID)
);

select * from BRANCH

ALTER TABLE branch ADD(write_date data DEFAULT SYSDATE)
select * from BRANCH


CREATE TABLE BRANCHLOG							--[접속기록]
(
	SEQ 		NUMBER 			NOT NULL,			--seq(PK)
	LOG_DATE 	DATE 			DEFAULT SYSDATE,	--기록일
	LOG_IP 		VARCHAR2(20) 	NOT NULL,			--기록ip
	BRC_ID 		VARCHAR2(20) 	NOT NULL,			--지점ID(FK)
	PRIMARY KEY (SEQ)
);

INSERT INTO BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
    VALUES(BRC_SEQ.nextval,'ksk',  'administrator',   '1111',  '관리자', '00-000-0000',    '-',    '-', '000-000',   '관리자', '000-0000-0000',       0,  'administrator', '0.0.0.0' );


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
	MAKE_COMP	VARCHAR2(50) 	NOT NULL,
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

ALTER TABLE PHONEMODEL DROP PRIMARY KEY 
DROP TABLE PHONEMODEL CASCADE CONSTRAINTS PURGE;

SELECT * from PHONEMODEL



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
			 
DELETE FROM phonemodel WHERE seq = 1;			    
			 
SELECT * FROM phonemodel;	
SELECT * FROM custominfo;

--make_comp(컬럼추가)
ALTER TABLE phonemodel ADD(make_comp varchar2(50));
DELETE FROM phonemodel;
ALTER TABLE phonemodel MODIFY(make_comp	varchar2(50) not null);

SELECT seq, brc_name, brc_id, brc_phone,
		brc_addr1, brc_addr2, brc_post,
		brc_boss, boss_phone, to_char(write_date, 'YYYY-MM-DD') AS write_date
		FROM BRANCH
		WHERE BRC_LEV='2'
		ORDER BY seq ASC;

		SELECT * FROM BRANCH;

select * from PHONEMODEL

	    SELECT 	count(*) as cnt
    	FROM	custominfo
    	WHERE '2013-01-01' <= open_date AND '2013-01-30' >= open_date AND model_code= 'iPhone5 32G'
    	
    	
 insert into custominfo(seq,cust_name, cust_phone,cust_birth, cont_term, open_date, memo,write_ip,brc_id ,price_name, model_code)
 values(custom_seq.nextval, '송태섭',' 010-1111-1111', '2013-01-09', '2013-01-01', '2013-01-03', '메모', '127.0.0.1',  'seller3', 'LTE커플52', 'iPhone5 32G')

 
begin
for i in 1..200 loop
   insert into custominfo(seq,cust_name, cust_phone,cust_birth, cont_term, open_date, memo,write_ip,brc_id ,price_name, model_code)
 	values(custom_seq.nextval, '채치수',' 010-1111-1111', '2013-01-20', '2013-01-11', '2013-01-23', '메모', '127.0.0.1',  'seller3', 'LTE커플100', 'LG-F180S');
end loop;
end;

	    SELECT 	seq, cust_name, model_code, price_name, cont_term, to_char(open_date,'YYYY-MM-DD') as open_date
    	FROM	custominfo

SELECT B.* 
FROM   (SELECT A.* ,rownum as rnum
    	FROM (	SELECT row_number()over (ORDER BY seq ASC) as rown,seq, cust_name, model_code, price_name, cont_term, to_char(open_date,'YYYY-MM-DD') as open_date
       			FROM custominfo
       			ORDER BY rownum DESC
       			) A 
       	) B
WHERE 1<= rnum AND rnum <= 1000


SELECT * FROM branch



	SELECT B.* 
	FROM   (SELECT A.* ,rownum as rnum
	    	FROM (	SELECT row_number()over (ORDER BY c.seq ASC) as rown, c.seq , c.cust_name, c.model_code, c.price_name, c.cont_term, to_char(c.open_date,'YYYY-MM-DD') as open_date
	       			FROM custominfo c join branch b
					using (brc_id)
	       			WHERE '2013-01-01' <= open_date AND '2013-01-15' >= open_date AND brc_name ='판매점4'
	       			ORDER BY rownum DESC
	       			) A 
	       	) B
    WHERE 1 <= rnum AND rnum <= 10
    
    SELECT * FROM branch
    SELECT * FROM custominfo
    
    SELECT count(*)
	FROM custominfo join branch
	using (brc_id)
	WHERE '2013-01-01' <= open_date AND '2013-01-15' >= open_date AND brc_name ='판매점4'
	
	select * from phonemodel
	
	update custominfo A 
	set A.memo = (SELECT make_comp FROM PHONEMODEL WHERE SEQ = 1)
	where A.model_code
	
	
	
SELECT row_number()over (ORDER BY c.seq ASC) as rown, c.seq , c.cust_name, c.model_code, c.price_name, c.cont_term, to_char(open_date,'YYYY-MM-DD') as open_date
FROM custominfo c join branch b
using (brc_id)

select * from branch

SELECT brc_id 
FROM branch
WHERE brc_id like 

SELECT NVL(brc_id , 'empty') as brc_id
FROM branch
WHERE brc_id like 'manager3'



SELECT trim(substr(zipcode, 1,3)) AS zipcode1, trim(substr(zipcode, 5,7)) AS zipcode2 , sido || ' ' || gugun || ' ' || dong || ' ' || ri || ' ' || bunji AS addr1
FROM zipcode
WHERE dong LIKE '%구로%'


select * from zipcode

SELECT attach_id, brc_name 
FROM branch
WHERE brc_lev = 1

SELECT seq , brc_id, attach_id, password, brc_name, brc_phone, brc_addr1, brc_addr2,
	   brc_post, brc_boss, boss_phone, brc_lev
FROM branch

SELECT seq , brc_id, attach_id , brc_name, brc_addr1, brc_addr2, brc_boss, brc_lev,
	   substr(brc_phone , 0 , instr(brc_phone , '-', 1, 1) - 1 ) as brc_phone1 ,
	   substr(brc_phone , instr(brc_phone , '-', 1, 1) +1, instr(brc_phone , '-', 2, 2) - 4 ) as brc_phone2,
	   substr(brc_phone , instr(brc_phone , '-', 2, 2) +1, instr(brc_phone , '-', 2, 2) - 3 ) as brc_phone3,
	   substr(brc_post , 0 , instr(brc_post , '-', 1, 1) - 1 ) as brc_post1,
	   substr(brc_post , instr(brc_post , '-', 1, 1) + 1, instr(brc_post , '-', 1, 1) + 2) as brc_post2,
	   substr(boss_phone , 0 , instr(boss_phone , '-', 1, 1) - 1 ) as boss_phone1,
	   substr(brc_phone , instr(brc_phone , '-', 1, 1) +1, instr(brc_phone , '-', 2, 2) - 4 ) as boss_phone2,
	   substr(brc_phone , instr(brc_phone , '-', 2, 2) +1, instr(brc_phone , '-', 2, 2) - 3 ) as boss_phone3
FROM branch
 
SELECT 	   substr(boss_phone , 0 , instr(boss_phone , '-', 1, 1) - 1 ) as boss_phone1,
	   substr(brc_phone , instr(brc_phone , '-', 1, 1) +1, instr(brc_phone , '-', 2, 2) - 4 ) as boss_phone2,
	   substr(brc_phone , instr(brc_phone , '-', 2, 2) +1, instr(brc_phone , '-', 2, 2) - 3 ) as boss_phone3
FROM branch

SELECT * 
FROM branch

select * from phonemodel

UPDATE BRANCH
set brc_state = 1


SELECT B.*
FROM(SELECT A.* , rownum as rnum
	 FROM  (SELECT  row_number()over (ORDER BY seq ASC) as rown, seq , brc_id, attach_id, password, brc_name, brc_phone, brc_addr1, brc_addr2,
			   brc_post, brc_boss, boss_phone, brc_lev, to_char(write_date , 'YYYY-MM-DD') AS write_date
		    FROM branch
		    WHERE brc_lev != 0
		    ORDER BY rown DESC ) A ) B
WHERE 1 <= rnum AND rnum <= 10

	SELECT count(*)
	FROM branch
	WHERE brc_lev != 0 
	
	
DELETE FROM branch
WHERE seq = 66

SELECT * FROM CUSTOMINFO
WHERE brc_id = 'seller9'

SELECT count(*)
FROM PHONEMODEL

ALTER TABLE PHONEMODEL 
ADD(state_chk number default 0)

INSERT INTO PHONEMODEL(make_comp)
VALUES("");

SELECT B.*
FROM(SELECT A.* , rownum as rnum
	 FROM  (SELECT  row_number()over (ORDER BY seq ASC) as rown, seq, model_code, model_name, filename, open_date, to_char(write_date ,'YYYY-MM-DD') AS write_date, write_ip, make_comp, state_chk			  
		    FROM PHONEMODEL
		    ORDER BY rown DESC ) A ) B
WHERE 1 <= rnum AND rnum <= 10



SELECT B.*   
FROM   (SELECT A.* ,rownum as rnum       
		FROM ( SELECT row_number()over (ORDER BY c.seq ASC) as rown, c.seq , c.cust_name,
						c.model_code, c.price_name, c.cont_term, to_char(c.open_date,'YYYY-MM-DD') as open_date, rebate          
			   FROM custominfo c join branch b      
			   using (brc_id)                        
			   WHERE '2012-01-01' <= open_date AND '2013-02-01' >= open_date AND brc_name = '판매점1'                          
			             ) A           ) B         
WHERE 1 <= rnum AND rnum <= 10 
 ORDER BY rownum DESC

 select * from BRANCH
 	SELECT attach_id, brc_name
	FROM branch
	WHERE brc_lev = 1 AND brc_state = 1