SELECT * FROM BRANCH;
SELECT * FROM BOARD;
SELECT * FROM PHONEMODEL;
SELECT * FROM PHONEPRICE;
SELECT * FROM REBATE;
SELECT * FROM CUSTOMINFO;


SELECT B.* 
FROM (SELECT A.*, rownum AS rnum
	  FROM (SELECT cust_name, CUST_PHONE, CONT_TERM, OPEN_DATE, MEMO,
				   WRITE_DATE, WRITE_IP, BRC_ID, PRICE_NAME, MODEL_CODE, REBATE, to_char(CUST_BIRTH, 'YYYY-DD-MM') AS CUST_BIRTH 
	  			   FROM CUSTOMINFO) A) B
WHERE 11 <= rnum AND rnum <= 20
ORDER BY rnum ASC;

	SELECT rownum AS rnum, C.seq, C.cust_name, C.CUST_PHONE, C.CONT_TERM, to_char(C.OPEN_DATE, 'YYYY-MM-DD') AS OPEN_DATE, C.MEMO,
	   C.WRITE_DATE, C.WRITE_IP, C.BRC_ID, C.PRICE_NAME, C.MODEL_CODE, C.REBATE, to_char(C.CUST_BIRTH, 'YYYY-MM-DD') AS CUST_BIRTH,
	   P.MODEL_NAME	   
	FROM CUSTOMINFO C, PHONEMODEL P
	WHERE P.MODEL_CODE = C. MODEL_CODE;

SELECT * FROM CUSTOMINFO;

SELECT * FROM BRANCH;
SELECT B.* 
	FROM (SELECT A.*, rownum AS rnum
	  FROM (SELECT brc_id
	  		FROM BRANCH) A) B
ORDER BY rnum ASC;

SELECT * FROM BRANCH;
INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
VALUES(BRC_SEQ.nextval,'manager1',  'admin',   '1111',  '대리점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       1,  'ADMIN', '127.0.0.1' );

INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV,   WRITE_ID, WRITE_IP )
VALUES(BRC_SEQ.nextval, 'seller1','manager1',   '1111',  '판매점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       2,  'manger2', '127.0.0.1' );
			 
			 
SELECT * FROM BRANCH;			 
			SELECT brc_id
	  		FROM BRANCH
	  		WHERE BRC_LEV='2' AND ATTACH_ID='manager1';
	  		
	  		
SELECT model_code, price_name
FROM CUSTOMINFO;



SELECT PRICE_NAME
FROM PHONEPRICE;




ALTER TABLE REBATE
ADD(TEST NUMBER(8) DEFAULT 0);

ALTER TABLE REBATE
DROP COLUMN TEST;

SELECT MODEL_NAME
FROM PHONEMODEL p, CUSTOMINFO c
WHERE p.MODEL_CODE = c.MODEL_CODE AND c.seq=#seq#;

	SELECT A.*, (SELECT MODEL_NAME  FROM PHONEMODEL) AS MODEL_NAME
 	FROM (SELECT rownum AS rnum, seq, cust_name, CUST_PHONE, CONT_TERM, to_char(OPEN_DATE, 'YYYY-DD-MM') AS OPEN_DATE, MEMO,
	 	         WRITE_DATE, WRITE_IP, BRC_ID, PRICE_NAME, MODEL_CODE, REBATE, to_char(CUST_BIRTH, 'YYYY-DD-MM') AS CUST_BIRTH
	  	  FROM CUSTOMINFO) A;
	WHERE c.seq=#seq#
	
SELECT rownum AS rnum, C.seq, C.cust_name, C.CUST_PHONE, C.CONT_TERM, to_char(C.OPEN_DATE, 'YYYY-DD-MM') AS OPEN_DATE, C.MEMO,
	   C.WRITE_DATE, C.WRITE_IP, C.BRC_ID, C.PRICE_NAME, C.MODEL_CODE, C.REBATE, to_char(C.CUST_BIRTH, 'YYYY-DD-MM') AS CUST_BIRTH,
	   P.MODEL_NAME	   
FROM CUSTOMINFO C, PHONEMODEL P
WHERE P.MODEL_CODE = C. MODEL_CODE AND C.seq=#seq#;
	

SELECT *
FROM BRANCH
WHERE BRC_LEV='2';
	  		
SELECT *
FROM PHONEPRICE;


ALTER TABLE REBATE
RENAME COLUMN LTE TO LTE34; NUMBER(8) DEFAULT 0;


	SELECT count(*)
	FROM CUSTOMINFO
	WHERE BRC_ID='';
	
		SELECT *
	FROM CUSTOMINFO;

	SELECT * FROM BRANCH;
	
	SELECT * FROM BRANCH;
	SELECT count(*)
	FROM BRANCH
	WHERE BRC_LEV='2' AND ATTACH_ID=#managerID#;
	
	SELECT * FROM REBATE;
	
	ALTER TABLE REBATE
	RENAME COLUMN 테스트요금제 TO 요금제;
	
	
	ALTER TABLE REBATE
	RENAME COLUMN 'LTE72' TO 'LTE';
	
	
	SELECT * FROM branch;
	SELECT row_number()over (ORDER BY c.seq ASC) as rown, c.seq , c.cust_name, c.model_code, c.price_name, c.cont_term, to_char(c.open_date,'YYYY-MM-DD') as open_date, b.brc_lev 
	       			FROM custominfo c join branch b
					using (brc_id)
	       			 
					ORDER BY rownum DESC;
					
					
					
					
					
					
INSERT INTO BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
    VALUES(BRC_SEQ.nextval,'admin3',  'administrator',   'pass',  '관리자', '00-000-0000',    '-',    '-', '000-000',   '관리자', '000-0000-0000',       0,  'administrator', '0.0.0.0' );
