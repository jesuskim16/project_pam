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


INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval,'manager2',  'MGR_ID',   '1111',  '대리점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       1,  'ADMIN', '127.0.0.1' );
INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV,   WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval, 'seller21','manager2',   '1111',  '판매점1', '02-1234-5678',    '서울시',    '구로구', '123-456',   '김대표', '010-5678-1234',       2,  'manger2', '127.0.0.1' );
			 
			 
			 
			SELECT brc_id
	  		FROM BRANCH
	  		WHERE BRC_LEV='2' AND ATTACH_ID='manager1';
	  		
	  		
SELECT model_code, price_name
FROM CUSTOMINFO;



SELECT PRICE_NAME
FROM PHONEPRICE;

SELECT * FROM PHONEMODEL;
SELECT * FROM PHONEPRICE;
SELECT * FROM REBATE;
SELECT * FROM CUSTOMINFO;

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
	