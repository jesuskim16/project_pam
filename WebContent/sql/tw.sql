select * from board;
delete from branchlog where seq=84;

INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval,'admin',  'administrator',   '1111',  '관리자', '00-000-0000',    '-',    '-', '000-000',   '관리자', '000-0000-0000',       0,  'administrator', '0.0.0.0' );
INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval,'manager1',  'administrator',   '1111',  '관리자', '00-000-0000',    '-',    '-', '000-000',   '관리자', '000-0000-0000',       1,  'administrator', '0.0.0.0' );
INSERT INTO	BRANCH (            SEQ,    BRC_ID, ATTACH_ID, PASSWORD, BRC_NAME,        BRC_PHONE, BRC_ADDR1, BRC_ADDR2,  BRC_POST, BRC_BOSS,     BOSS_PHONE, BRC_LEV, WRITE_ID, WRITE_IP )
			 VALUES(BRC_SEQ.nextval,'sales1',  'administrator',   '1111',  '관리자', '00-000-0000',    '-',    '-', '000-000',   '관리자', '000-0000-0000',       2			 
			 select * from custominfo;
			 
select * from board order by seq desc;

select * from PHONEPRICE


update PHONEPRICE set state_chk=2 where price_name like '%커플%';
SELECT * FROM rebate;
 

