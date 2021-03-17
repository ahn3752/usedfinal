--------------------------------------------------------
--  ������ ������ - ������-3��-01-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AUCTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."AUCTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 43 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."BID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 69 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 62 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."CART_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 75 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INQUIRY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."INQUIRY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 52 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDERDETAIL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."ORDERDETAIL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."PAY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 87 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."RESERVE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEWBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."REVIEWBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "USED"."REVIEW_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AUCTION
--------------------------------------------------------

  CREATE TABLE "USED"."AUCTION" 
   (	"AIDX" NUMBER, 
	"MID" VARCHAR2(30 BYTE), 
	"ATITLE" VARCHAR2(100 BYTE), 
	"LCATEGORY" VARCHAR2(50 BYTE), 
	"MCATEGORY" VARCHAR2(50 BYTE), 
	"ATTACHEDFILE1" VARCHAR2(500 BYTE), 
	"SDATE" DATE DEFAULT sysdate, 
	"EDATE" DATE, 
	"SPRICE" VARCHAR2(100 BYTE), 
	"EPRICE" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(100 BYTE) DEFAULT '���������', 
	"ACONTENT" VARCHAR2(1000 BYTE), 
	"BPRICE" VARCHAR2(100 BYTE), 
	"BIDCOUNT" VARCHAR2(100 BYTE) DEFAULT '0', 
	"MESSAGE" VARCHAR2(50 BYTE) DEFAULT '������'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BID
--------------------------------------------------------

  CREATE TABLE "USED"."BID" 
   (	"BIDX" NUMBER, 
	"AIDX" NUMBER, 
	"MID" VARCHAR2(30 BYTE), 
	"BPRICE" NUMBER, 
	"BDATE" DATE DEFAULT sysdate, 
	"BSTATUS" VARCHAR2(50 BYTE) DEFAULT '������'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "USED"."BOARD" 
   (	"IDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"TITLE" VARCHAR2(50 BYTE), 
	"CONTENTS" VARCHAR2(2000 BYTE), 
	"FLAG" VARCHAR2(30 BYTE) DEFAULT 'free', 
	"BGROUP" NUMBER DEFAULT 0, 
	"BSTEP" NUMBER DEFAULT 0, 
	"BINDENT" NUMBER DEFAULT 0, 
	"HITS" NUMBER DEFAULT 0, 
	"POSTDATE" DATE DEFAULT sysdate, 
	"ATTACHEDFILE" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "USED"."CART" 
   (	"CIDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"IDX" NUMBER, 
	"BUYCOUNT" NUMBER, 
	"ADDDATE" DATE DEFAULT sysdate, 
	"SELLERID" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "USED"."CHAT" 
   (	"ROOMID" VARCHAR2(50 BYTE), 
	"SENDER" VARCHAR2(50 BYTE), 
	"MESSAGE" VARCHAR2(2000 BYTE), 
	"TIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHATROOMLIST
--------------------------------------------------------

  CREATE TABLE "USED"."CHATROOMLIST" 
   (	"ROOMID" VARCHAR2(50 BYTE), 
	"USERID1" VARCHAR2(50 BYTE), 
	"USERID2" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMENT
--------------------------------------------------------

  CREATE TABLE "USED"."COMENT" 
   (	"CNO" NUMBER, 
	"BNO" NUMBER, 
	"CONTENTS" VARCHAR2(500 BYTE), 
	"WRITER" VARCHAR2(100 BYTE), 
	"POSTDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INQUIRY
--------------------------------------------------------

  CREATE TABLE "USED"."INQUIRY" 
   (	"IDX" NUMBER, 
	"SENDER" VARCHAR2(50 BYTE), 
	"ADMIN" VARCHAR2(50 BYTE) DEFAULT 'admin', 
	"CONTENT" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(50 BYTE) DEFAULT '������'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "USED"."MEMBER" 
   (	"IDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"PASS" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(500 BYTE), 
	"GENDER" VARCHAR2(20 BYTE), 
	"REGIDATE" DATE DEFAULT sysdate, 
	"GRADE" VARCHAR2(10 BYTE) DEFAULT USER, 
	"ENABLE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERDETAIL
--------------------------------------------------------

  CREATE TABLE "USED"."ORDERDETAIL" 
   (	"IDX" NUMBER, 
	"ORDERNUM" VARCHAR2(100 BYTE), 
	"CIDX" VARCHAR2(50 BYTE), 
	"COUNT" NUMBER, 
	"ID" VARCHAR2(50 BYTE), 
	"SELLERID" VARCHAR2(50 BYTE), 
	"STATUS" VARCHAR2(50 BYTE) DEFAULT '�����Ϸ�', 
	"PIDX" NUMBER, 
	"PRICE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "USED"."ORDERS" 
   (	"ORDERNUM" VARCHAR2(100 BYTE), 
	"ID" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(50 BYTE), 
	"SUM" NUMBER, 
	"ORDERDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "USED"."PAY" 
   (	"ID" VARCHAR2(50 BYTE), 
	"SUM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "USED"."PRODUCT" 
   (	"IDX" NUMBER, 
	"PNAME" VARCHAR2(50 BYTE), 
	"LCATEGORY" VARCHAR2(30 BYTE), 
	"MCATEGORY" VARCHAR2(30 BYTE), 
	"PRICE" NUMBER, 
	"ATTACHEDFILE1" VARCHAR2(500 BYTE), 
	"POSTDATE" DATE DEFAULT sysdate, 
	"TRADERULE" VARCHAR2(20 BYTE), 
	"RESULT" VARCHAR2(20 BYTE), 
	"CONTENTS" VARCHAR2(500 BYTE), 
	"COUNT" NUMBER(*,0), 
	"ID" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(500 BYTE), 
	"RESERVATION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_QNA
--------------------------------------------------------

  CREATE TABLE "USED"."PRODUCT_QNA" 
   (	"PRODUCTNUM" NUMBER, 
	"USERID" VARCHAR2(50 BYTE), 
	"QNANUM" NUMBER, 
	"QNACON" VARCHAR2(2000 BYTE), 
	"QNADATE" DATE DEFAULT sysdate, 
	"QNATITLE" VARCHAR2(50 BYTE), 
	"BGROUP" NUMBER DEFAULT 0, 
	"BSTEP" NUMBER DEFAULT 0, 
	"BINDENT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "USED"."RESERVATION" 
   (	"IDX" NUMBER, 
	"PIDX" NUMBER, 
	"ID" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEWBOARD
--------------------------------------------------------

  CREATE TABLE "USED"."REVIEWBOARD" 
   (	"IDX" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"TITLE" VARCHAR2(50 BYTE), 
	"CONTENTS" VARCHAR2(2000 BYTE), 
	"FLAG" VARCHAR2(30 BYTE) DEFAULT 'review', 
	"BGROUP" NUMBER DEFAULT 0, 
	"BSTEP" NUMBER DEFAULT 0, 
	"BINDENT" NUMBER DEFAULT 0, 
	"HITS" NUMBER DEFAULT 0, 
	"POSTDATE" DATE DEFAULT sysdate, 
	"ATTACHEDFILE" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into USED.AUCTION
SET DEFINE OFF;
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (31,'shopper01','asd','man_fashion','mtm','feef45d8-265b-4cbc-a1f5-f68a7cba894f.jpg',to_date('21/02/25','RR/MM/DD'),to_date('21/02/25','RR/MM/DD'),'10000','100000','������','dsd','12000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (36,'ekrtbtb@nate.com','�Ȱ���','man_fashion','mtm','cb5ecdc7-2976-4785-a3f5-a2480e952c03.jpg',to_date('21/02/27','RR/MM/DD'),to_date('21/03/06','RR/MM/DD'),'20000','50000','���������','ƼŸ�� �Ȱ���','40000','1','������');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (37,'ekrtbtb@nate.com','�ſ�','life','life','ce6551cd-2e5d-40ce-bcdb-8636c142a29f.jpg',to_date('21/02/27','RR/MM/DD'),to_date('21/02/27','RR/MM/DD'),'15000','35000','�����Ϸ�','���Űſ� �Ǹ��մϴ�','34000','3','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (33,'kosmo001','dsa','man_fashion','longt','a05a939b-0ef4-4236-9c03-5e443c2a3f15.jpg',to_date('21/02/25','RR/MM/DD'),to_date('21/02/25','RR/MM/DD'),'10000','100000','������','sad','12000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (5,'beom1234','�ð� �Ǹ��մϴ�','man_fashion','padding','8709db38-651e-4aa2-b576-ff43696ffe2b.jpg',to_date('21/02/17','RR/MM/DD'),to_date('21/02/17','RR/MM/DD'),'10000','100000','������','�±�ȣ�̾� �Ǹ��մϴ�','95000','4','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (7,'beom1234','Ŭ��ġ','man_fashion','wallet','4d949926-af69-4907-99cc-a151e6eb188d.jpg',to_date('21/02/17','RR/MM/DD'),to_date('21/02/17','RR/MM/DD'),'100000','500000','������','���� ������ Ŭ��ġ �Ǹ��մϴ�<br />
���� ���� ��Ź�����','350000','6','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (9,'beom1234','�ȭ','sports','soccer','bd6d8e57-4e1b-45d8-a4d8-327351c695a4.jpg',to_date('21/02/17','RR/MM/DD'),to_date('21/02/17','RR/MM/DD'),'10000','100000','������','����Ű ���Ӹƽ�','50000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (35,'ekrtbtb@nate.com','ī�޶�','digital','camera','7f27a01e-50ec-48f0-bc3b-01336e5ef225.jpg',to_date('21/02/27','RR/MM/DD'),to_date('21/03/06','RR/MM/DD'),'500000','800000','���������','���� ī�޶�','600000','2','������');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (11,'beom1234','�ȭ','sports','soccer','847e91bf-1791-455c-b82c-9b8a0bdc8699.jpg',to_date('21/02/18','RR/MM/DD'),to_date('21/02/18','RR/MM/DD'),'10000','100000','������','����Ű ����ƽ�','50000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (13,'vngkgk87','����','woman_fashion','cap','9b0af9d1-f26b-4cc0-ac13-898d0e2d1de9.jpg',to_date('21/02/18','RR/MM/DD'),to_date('21/02/18','RR/MM/DD'),'10000','45000','������','������ ����ũ �÷����� �Ǹ��մϴ�','23000','2','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (41,'shopper01','�ð�','man_fashion','bag','bb6d71fd-c5f9-4397-8560-12f1d68b2946.jpg',to_date('21/02/27','RR/MM/DD'),to_date('21/03/02','RR/MM/DD'),'600000','800000','���������','�±�ȣ�̾�','600000','0','������');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (22,'seller4','���Űſ�','sports','camping','5ed8e5a8-2388-454e-8324-3ed9e21515e1.jpg',to_date('21/02/23','RR/MM/DD'),to_date('21/02/23','RR/MM/DD'),'10000','30000','�����Ϸ�','�ſ��Ǹ��մϴ�<br />
<br />
&nbsp;','25000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (24,'seller3','�ð�','man_fashion','wallet','adaa5f99-052f-4b4d-9bd7-82a0460f2407.jpg',to_date('21/02/23','RR/MM/DD'),to_date('21/02/23','RR/MM/DD'),'500000','850000','�����','�±�ȣ�̾� �ð� �Ǹ��մϴ�.','790000','4','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (27,'beom1234','�ȭ','sports','soccer','684024fe-61aa-44cd-92f5-b4420b4d404e.jpg',to_date('21/02/24','RR/MM/DD'),to_date('21/02/24','RR/MM/DD'),'80000','160000','�����Ϸ�','����Ű ����ƽ�97 �Ǹ��մϴ�.','150000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (42,'ekrtbtb@nate.com','��Ʈ','sports','camping','06242235-6be6-4c12-a79e-848d393e27c5.jpg',to_date('21/02/27','RR/MM/DD'),to_date('21/03/06','RR/MM/DD'),'300000','500000','���������','��ٵ�<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/IeKDPjo3LEU" width="640"></iframe>','0','0','������');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (29,'seller001','����','man_fashion','bag','b8940789-6d1e-42f5-b77f-0214036c3d43.jpg',to_date('21/02/24','RR/MM/DD'),to_date('21/02/25','RR/MM/DD'),'400000','800000','������','���� Ŭ��ġ�� �Ǹ��մϴ�<br />
<br />
&nbsp;','770000','5','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (6,'kmin1234','Ŀ�Ǹӽ�','digital','appliance','ae7f7bc8-4b7e-4bd2-94ce-4317b7926a46.jpg',to_date('21/02/17','RR/MM/DD'),to_date('21/02/17','RR/MM/DD'),'10000','100000','������','�ϸ� Ŀ�Ǹӽ� �Ǹ��մϴ�.','30000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (12,'beom1234','��� ����','woman_fashion','bag','8d792162-18ad-4179-8e19-4ba6c10d8f31.jpg',to_date('21/02/18','RR/MM/DD'),to_date('21/02/18','RR/MM/DD'),'100000','700000','������','��� ���̴����� ������ �Ǹ��մϴ�<br />
���� ���� ��Ź�����','300000','3','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (14,'ksoo1234','��Ʈ','sports','camping','9b913e71-4186-4ea4-9d77-a369251de5a9.jpg',to_date('21/02/18','RR/MM/DD'),to_date('21/02/18','RR/MM/DD'),'500000','900000','������','����� 8 x 9 �߰�<br />
5ȸ ��� Ǯ ����ǰ','700000','5','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (25,'beom1234','dsa','man_fashion','padding','c85275af-06a5-4307-b9d7-e9dd43f5a5c2.jpg',to_date('21/02/23','RR/MM/DD'),to_date('21/02/23','RR/MM/DD'),'10000','100000','������','sdad','12000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (23,'beom1234','��� �׽�Ʈ','man_fashion','bag','069f2380-050e-4a61-9f69-04c27a9d5f27.jpg',to_date('21/02/23','RR/MM/DD'),to_date('21/02/23','RR/MM/DD'),'10000','100000','������','dsad','12000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (34,'kosmo001','dsa','woman_fashion','shirts','41305c7e-250a-4221-b487-e131c1fdcda3.jpg',to_date('21/02/25','RR/MM/DD'),to_date('21/02/25','RR/MM/DD'),'10000','1000000','������','dsa','12000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (3,'asdf1234','��� �׽�Ʈ','woman_fashion','padding','ad1094f1-c973-4394-813b-f886a0e816e0.jpg',to_date('21/02/17','RR/MM/DD'),to_date('21/02/17','RR/MM/DD'),'10000','100000','������','��������','30000','4','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (16,'vngkgk87','����','sports','camping','b152a76f-9731-4061-aa27-d6c860f8d49b.jpg',to_date('21/02/19','RR/MM/DD'),to_date('21/02/22','RR/MM/DD'),'100000','1000000','�����Ϸ�','����� ����<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/Tw6xGNEhsZ8" width="640"></iframe>','900000','1','���ۿϷ�');
Insert into USED.AUCTION (AIDX,MID,ATITLE,LCATEGORY,MCATEGORY,ATTACHEDFILE1,SDATE,EDATE,SPRICE,EPRICE,STATUS,ACONTENT,BPRICE,BIDCOUNT,MESSAGE) values (21,'seller4','������','digital','mobile','aa2afafe-0936-425a-8066-8d4a1c7397f7.jpg',to_date('21/02/23','RR/MM/DD'),to_date('21/02/24','RR/MM/DD'),'500000','1000000','������','������12 �Ǹ��մϴ�','990000','1','���ۿϷ�');
REM INSERTING into USED.BID
SET DEFINE OFF;
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (55,31,'zood1234',12000,to_date('21/02/25','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (56,33,'seller001',12000,to_date('21/02/25','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (54,29,'shopper01',770000,to_date('21/02/25','RR/MM/DD'),'�����Ϸ�');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (22,7,'zood1234',330000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (24,7,'kosmo001',350000,to_date('21/02/17','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (26,12,'vngkgk87',150000,to_date('21/02/18','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (27,12,'kmin1234',230000,to_date('21/02/18','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (28,13,'kmin1234',20000,to_date('21/02/18','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (29,12,'ksoo1234',300000,to_date('21/02/18','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (31,14,'kosmo001',550000,to_date('21/02/18','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (34,13,'kosmo071',23000,to_date('21/02/18','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (35,14,'kosmo071',700000,to_date('21/02/18','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (44,24,'vngkgk87',610000,to_date('21/02/23','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (45,24,'beom1234',680000,to_date('21/02/23','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (41,21,'buyer1',990000,to_date('21/02/23','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (42,22,'buyer1',25000,to_date('21/02/23','RR/MM/DD'),'�����Ϸ�');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (46,24,'kosmo003',730000,to_date('21/02/23','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (49,27,'kosmo0498',150000,to_date('21/02/24','RR/MM/DD'),'�����Ϸ�');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (58,35,'shopper01',510000,to_date('21/02/27','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (59,36,'shopper01',40000,to_date('21/02/27','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (60,37,'shopper01',30000,to_date('21/02/27','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (62,37,'beom1234',31000,to_date('21/02/27','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (64,35,'beom1234',600000,to_date('21/02/27','RR/MM/DD'),'������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (68,37,'shopper01',34000,to_date('21/02/27','RR/MM/DD'),'�����Ϸ�');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (9,3,'bomi1012',12000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (10,3,'bomi1012',13000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (11,3,'bomi1012',14000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (13,5,'vngkgk87',30000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (15,5,'song1234',90000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (17,6,'ksoo1234',30000,to_date('21/02/17','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (19,7,'kmin1234',210000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (30,14,'bomi1012',510000,to_date('21/02/18','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (32,14,'song1234',600000,to_date('21/02/18','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (33,14,'bomi0498',630000,to_date('21/02/18','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (43,23,'chan1234',12000,to_date('21/02/23','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (47,25,'kosmo001',12000,to_date('21/02/23','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (40,16,'song1234',900000,to_date('21/02/22','RR/MM/DD'),'�����Ϸ�');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (51,29,'chan1234',550000,to_date('21/02/24','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (52,29,'ksoo1234',560000,to_date('21/02/24','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (12,3,'bomi1012',30000,to_date('21/02/17','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (14,5,'chan1234',31000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (16,5,'chan1234',95000,to_date('21/02/17','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (18,7,'song1234',110000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (20,7,'ksoo1234',220000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (21,7,'chan1234',300000,to_date('21/02/17','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (23,9,'kosmo001',50000,to_date('21/02/17','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (25,11,'kosmo071',50000,to_date('21/02/18','RR/MM/DD'),'���������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (48,24,'bomi0498',790000,to_date('21/02/23','RR/MM/DD'),'�����');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (50,29,'song1234',480000,to_date('21/02/24','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (53,29,'kmin1234',600000,to_date('21/02/24','RR/MM/DD'),'��������');
Insert into USED.BID (BIDX,AIDX,MID,BPRICE,BDATE,BSTATUS) values (57,34,'seller001',12000,to_date('21/02/25','RR/MM/DD'),'���������');
REM INSERTING into USED.BOARD
SET DEFINE OFF;
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (59,'beom1234','Ʋ���� ���� ���ΰ���???','<h1>ƲƲ �Ÿ��µ� ���� ������ �𸣰���</h1>
','free',0,0,0,1,to_date('21/02/18','RR/MM/DD'),'3538715d-dd05-4555-8965-ea0e2954492a.jpg');
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (43,'kosmo001','���ǵ帳�ϴ�','��۷�� �����ΰ���?','free',0,0,0,4,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (44,'ksoo1234','������ ��õ��Ź�����','172cm 80kg ��ҿ� XL�Խ��ϴ� ����Ű 0253842��ǰ ������ �������?','free',0,0,0,2,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (46,'bomi1012','��ǰ �����Դϴ�','������ ��ǰ ���ǵ帳�ϴ�. �� ��������?','free',0,0,0,2,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (47,'seller2','��ǰ �����Դϴ�','������ ��ǰ ���ǵ帳�ϴ�. �� ��������?','free',0,0,0,3,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (48,'buyer2','��ǰ �����Դϴ�','������ ��ǰ ���ǵ帳�ϴ�. �� ��������?','free',0,0,0,7,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (49,'seller3','��ǰ �����Դϴ�','������ ��ǰ ���ǵ帳�ϴ�. �� ��������?','free',0,0,0,6,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (50,'kosmo071','����x ���� �Ű��մϴ�','�ù�� ������ �Ⱥ����� ������ ���¾��Ф�','free',0,0,0,13,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (51,'kosmo002','�߰��ε� ���԰� �ǳ���?','����Ű �Ź� ���԰� �ǳ���?','free',0,0,0,7,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (53,'zood1234','���ŷ� ���� ���ǵ帳�ϴ�','���ŷ��� ��� �ؾ� �ϳ���?','free',0,0,0,11,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (54,'vngkgk87','������ ���ǵ帳�ϴ�','���� ���� ���� ������ �׷��� ����Ƽ���� 392910��ǰ ������ ��õ��','free',0,0,0,8,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (55,'vngkgk88','������ ���ǵ帳�ϴ�','���� ���� ���� ������ �׷��� ����Ƽ���� 392910��ǰ ������ ��õ��','free',0,0,0,5,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (56,'buyer3','��ǰȮ�����ּ���','���� ���� ���� ������ �׷��� ����Ƽ���� 392910��ǰ ������ ��õ��','free',0,0,0,5,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (57,'asdf1234','������ ����','���� ��� �Ź� ����� 255�ε� �����ν�Ʈ�� �������� �������?','free',0,0,0,8,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (58,'vngkgk87','���Ⱑ...','���ϴ� ������??','free',0,0,0,12,to_date('21/02/18','RR/MM/DD'),null);
Insert into USED.BOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (60,'beom1234','��������','�ð��� �Ȱ���','free',0,0,0,5,to_date('21/02/18','RR/MM/DD'),'9c428080-b21c-4089-922d-90b4892b92c9.jpg');
REM INSERTING into USED.CART
SET DEFINE OFF;
Insert into USED.CART (CIDX,ID,IDX,BUYCOUNT,ADDDATE,SELLERID,PRICE) values (43,'kosmo001',51,1,to_date('21/02/18','RR/MM/DD'),'beom1234',30000);
REM INSERTING into USED.CHAT
SET DEFINE OFF;
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('b5a0a90f-2eed-4e1c-8ddf-dc68c7ef12e6','shopper01','�ȳ��ϼ���',to_date('21/02/25','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('b5a0a90f-2eed-4e1c-8ddf-dc68c7ef12e6','shopper01','�ŷ� �����Ѱ���??',to_date('21/02/25','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('b5a0a90f-2eed-4e1c-8ddf-dc68c7ef12e6','seller001','�� �ŷ���û �����ּ���',to_date('21/02/25','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','beom1234','�� �����մϴ� ',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','beom1234','�� �����մϴ�',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','beom1234','�ŷ���û �����ּ���',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','kosmo071','�ȳ��ϼ���',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','kosmo071','�ŷ� �����Ѱ���',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('047d2e04-2b60-47b9-8438-065a2a253a5b','vngkgk87','�� �����մϴ�',to_date('21/02/22','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('047d2e04-2b60-47b9-8438-065a2a253a5b','vngkgk87','�ŷ���û �����ּ���\',to_date('21/02/22','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('03424d68-fc2c-4a8f-9e87-f2af540f0bed','seller4','�� �����մϴ�',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('03424d68-fc2c-4a8f-9e87-f2af540f0bed','seller4','�ŷ���û �����ּ���',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('94a6e3b6-7cb6-4545-840e-c0e941fe174b','kosmo0498','�ȳ��ϼ���?',to_date('21/02/24','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('94a6e3b6-7cb6-4545-840e-c0e941fe174b','kosmo0498','�ŷ� �����Ѱ���?',to_date('21/02/24','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('94a6e3b6-7cb6-4545-840e-c0e941fe174b','beom1234','�� �����մϴ�',to_date('21/02/24','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('94a6e3b6-7cb6-4545-840e-c0e941fe174b','beom1234','�ŷ���û �����ּ���',to_date('21/02/24','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('350f8127-bd38-4673-ae23-602e22c5ce72','vngkgk87','����',to_date('21/02/27','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('350f8127-bd38-4673-ae23-602e22c5ce72','ekrtbtb@nate.com','����',to_date('21/02/27','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('7deb61e7-9a5a-4cb9-9504-b0027d687267','ekrtbtb@nate.com','�� �����մϴ�',to_date('21/02/27','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('7deb61e7-9a5a-4cb9-9504-b0027d687267','ekrtbtb@nate.com','�ŷ���û �����ּ���',to_date('21/02/27','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('7bdddc02-8cb8-412b-a83f-f4d1a516cb8f','vngkgk87','zxczxczxc',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('21cfa064-f827-4fa3-bbbc-e79ce74298a5','chan1234','�ȳ��ϼ���',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c33cd7fc-9f54-4b1d-8526-bd1ccfb46fd1','song1234','�Ⱦƶ�',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c33cd7fc-9f54-4b1d-8526-bd1ccfb46fd1','beom1234','�˾Ҵ�',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c33cd7fc-9f54-4b1d-8526-bd1ccfb46fd1','song1234','����',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','beom1234','�� �����մϴ�',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','beom1234','�ŷ���û �����ּ���',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('047d2e04-2b60-47b9-8438-065a2a253a5b','song1234','�ȳ��ϼ���',to_date('21/02/22','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('047d2e04-2b60-47b9-8438-065a2a253a5b','song1234','�ŷ� �����Ѱ���?',to_date('21/02/22','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('000e6bb7-81f1-4b01-a7be-76a93d41f9e7','bomi0498','�ȳ��ϼ���?',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c33cd7fc-9f54-4b1d-8526-bd1ccfb46fd1','song1234','�ȳ��ϼ���',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','kosmo001','�ȳ��ϼ���',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','kosmo001','�ŷ� �����Ѱ���',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','beom1234','�ŷ���õ �����ּ���',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','kosmo001','�� �˰ڽ��ϴ�',to_date('21/02/17','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','kosmo071','�ȳ��ϼ���',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('a638f298-013e-473d-86f5-afa1146f6489','kosmo071','�ŷ� �����Ѱ���?',to_date('21/02/18','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('03424d68-fc2c-4a8f-9e87-f2af540f0bed','buyer1','�ȳ��ϼ���',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('03424d68-fc2c-4a8f-9e87-f2af540f0bed','buyer1','�ŷ� �����Ѱ���?',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('000e6bb7-81f1-4b01-a7be-76a93d41f9e7','bomi0498','�ŷ� �����Ѱ���?',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('000e6bb7-81f1-4b01-a7be-76a93d41f9e7','seller3','�� �����մϴ�',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('000e6bb7-81f1-4b01-a7be-76a93d41f9e7','seller3','�ŷ���û �����ּ���',to_date('21/02/23','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('7deb61e7-9a5a-4cb9-9504-b0027d687267','shopper01','�ȳ��ϼ���',to_date('21/02/27','RR/MM/DD'));
Insert into USED.CHAT (ROOMID,SENDER,MESSAGE,TIME) values ('7deb61e7-9a5a-4cb9-9504-b0027d687267','shopper01','�ŷ� �����Ѱ���??',to_date('21/02/27','RR/MM/DD'));
REM INSERTING into USED.CHATROOMLIST
SET DEFINE OFF;
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('25849060-2cce-4d39-b9f8-385ecd8a3dbf','vngkgk87','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('80c93320-fb36-4696-935e-6cfc73196a53','vngkgk87','zood1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('b5a0a90f-2eed-4e1c-8ddf-dc68c7ef12e6','shopper01','seller001');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('a638f298-013e-473d-86f5-afa1146f6489','kosmo071','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('047d2e04-2b60-47b9-8438-065a2a253a5b','song1234','vngkgk87');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('03424d68-fc2c-4a8f-9e87-f2af540f0bed','buyer1','seller4');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('94a6e3b6-7cb6-4545-840e-c0e941fe174b','kosmo0498','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('350f8127-bd38-4673-ae23-602e22c5ce72','vngkgk87','ekrtbtb@nate.com');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('7bdddc02-8cb8-412b-a83f-f4d1a516cb8f','vngkgk87','asdf1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('21cfa064-f827-4fa3-bbbc-e79ce74298a5','chan1234','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('000e6bb7-81f1-4b01-a7be-76a93d41f9e7','bomi0498','seller3');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('c33cd7fc-9f54-4b1d-8526-bd1ccfb46fd1','song1234','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('c902ea21-a8d9-4567-b361-5ed6514a54d1','kosmo001','beom1234');
Insert into USED.CHATROOMLIST (ROOMID,USERID1,USERID2) values ('7deb61e7-9a5a-4cb9-9504-b0027d687267','shopper01','ekrtbtb@nate.com');
REM INSERTING into USED.COMENT
SET DEFINE OFF;
Insert into USED.COMENT (CNO,BNO,CONTENTS,WRITER,POSTDATE) values (100,21,'��� ���ִ�','bomi1012',to_date('21/02/21','RR/MM/DD'));
REM INSERTING into USED.INQUIRY
SET DEFINE OFF;
Insert into USED.INQUIRY (IDX,SENDER,ADMIN,CONTENT,TITLE,STATUS) values (1,'vngkgk87','admin','��������� �亯 �� ���ּ���','����Ű �ĵ�Ƽ 100������ ����ֳ���?','������');
Insert into USED.INQUIRY (IDX,SENDER,ADMIN,CONTENT,TITLE,STATUS) values (2,'beom1234','admin','�ù�','�������� ��۵ǳ���?','������');
Insert into USED.INQUIRY (IDX,SENDER,ADMIN,CONTENT,TITLE,STATUS) values (3,'kosmo001','admin','������ ���� �ߺ���~','���ǵ帳�ϴ�','������');
REM INSERTING into USED.MEMBER
SET DEFINE OFF;
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (16,'bomi1012','1234','������','vngkgk1@daum.net','01024807118','05678-���� ���ı� ���Ĵ��36���� 15-3-1-','����',to_date('21/02/15','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (49,'shopper001','123456','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/25','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (20,'admin','1234','�Ǹ���1','vngkgk2@daum.net','01024801111','05693-���� ���ı� ������ 2-1-','����',to_date('21/02/17','RR/MM/DD'),'ADMIN',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (21,'seller2','1234','�Ǹ���2','vngkgk3@daum.net','01024802222','05693-���� ���ı� ������ 6-2-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (28,'asdf1234','1234','�׽�Ʈ','ahn3752@naver.com','01024807118','06027-���� ������ �б����� 102-�Ե�����Ʈ101��603ȣ-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (41,'ekrtbtb@nate.com',null,'BEOM',null,null,null,null,to_date('21/02/21','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (45,'kosmo0498','1234','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/24','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (46,'kosmo498','1234','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/24','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (47,'seller001','123456','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/24','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (50,'shopper010','123456','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/27','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (51,'shopper011','123456','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/27','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (24,'seller3','1234','�Ǹ���3','vngkgk4@daum.net','01024804444','06267-���� ������ ������� 238-2-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (25,'seller4','1234','�Ǹ���4','vngkgk5@daum.net','01024805555','06120-���� ������ ������� 478-1-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (26,'buyer3','1234','������3','vngkgk6@daum.net','01023456789','06313-���� ������ ������ 4-1-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (29,'beom1234','1234','ȫ����','seller1@email.com','01024801111','08505-���� ��õ�� ���������2�� 123-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (30,'song1234','1234','��ġ��','seller2@email.com','01024802222','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (31,'zood1234','1234','���ֿ�','seller3@email.com','01048803752','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (32,'kmin1234','1234','�̰���','buyer1@email.com','01024804444','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (33,'ksoo1234','1234','���Ǽ�','buyer2@email.com','01024805555','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (34,'chan1234','1234','������','buyer3@email.com','01048803752','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (35,'kosmo001','1234','�ڽ���1','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (37,'qwer1111','1234','�׽�Ʈ','ekrtbtb@nate.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/18','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (40,'kosmo0071','kosmo0071','ȫ����','ekrtbtb@naver.com','01024807118','06165-���� ������ �Ｚ�� 150-5-2��-','����',to_date('21/02/18','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (42,'qwerty123','1234','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/22','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (44,'kosmo12345','1234','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/23','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (17,'bomi0498','1234','������','ekrtbtb@naver.com','01024807118','06165-���� ������ �Ｚ�� 150-5-1-','����',to_date('21/02/15','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (18,'vngkgk87','1234','ȫ����','vngkgk7@daum.net','01024807118','07803-���� ������ ������ 375-1-','����',to_date('21/02/16','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (19,'vngkgk88','1234','ȫ����','vngkgk8@daum.net','01024807118','06000-���� ������ ������� 708-1-','����',to_date('21/02/16','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (36,'kosmo002','kosmo1234','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (38,'kosmo071','kosmo071','����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/18','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (39,'kosmo003','kosmo003','ȫ����','ekrtbtb@naver.com','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/18','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (43,'buyer1234','1234','�׽�Ʈ','vngkgk87@daum.net','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/23','RR/MM/DD'),'USED',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (22,'buyer1','1234','������1','vngkgk9@daum.net','01024803333','05762-���� ���ı� ���̳��� 1-1-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (23,'buyer2','1234','������2','vngkgk10@daum.net','01024804444','05535-���� ���ı� ������� 13-1-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (27,'buyer4','1234','������4','vngkgk11@daum.net','01098765432','06120-���� ������ ������� 480-1-','����',to_date('21/02/17','RR/MM/DD'),'USER',1);
Insert into USED.MEMBER (IDX,ID,PASS,NAME,EMAIL,PHONE,ADDRESS,GENDER,REGIDATE,GRADE,ENABLE) values (48,'shopper01','123456','ȫ����','vngkgk87@daum.net','01024807118','08505-���� ��õ�� ���굿 426-5-4��-','����',to_date('21/02/24','RR/MM/DD'),'USER',1);
REM INSERTING into USED.ORDERDETAIL
SET DEFINE OFF;
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (1,'7826230b-b60d-46b8-b776-6cc672ad94bf','4',1,'bomi0498','bomi1012','�����',21,null);
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (18,'6a48565c-60bf-4d34-bb43-c1c5bd724278','62',1,'chan1234','vngkgk87','�����Ϸ�',65,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (21,'f736a155-1cae-4399-9a4f-bb7499e71c63','71',1,'shopper01','beom1234','�������',70,'60000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (21,'f736a155-1cae-4399-9a4f-bb7499e71c63','69',1,'shopper01','seller001','�ŷ��Ϸ�',79,'50000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (3,'6175ca3a-5bb5-4212-9df1-1dd14bb76239','10',1,'kosmo001','kmin1234','�ŷ��Ϸ�',32,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (3,'6175ca3a-5bb5-4212-9df1-1dd14bb76239','11',2,'kosmo001','beom1234','�����',27,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (4,'34340b12-2360-49dc-b5a8-3a88549e615a','17',1,'kosmo001','ksoo1234','�ŷ��Ϸ�',33,'1000000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (4,'34340b12-2360-49dc-b5a8-3a88549e615a','15',2,'kosmo001','chan1234','�����',36,'40000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (7,'ef7d5a6c-c26c-440e-afa2-e95db771402c','26',1,'beom1234','chan1234','�������',35,'10000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (7,'ef7d5a6c-c26c-440e-afa2-e95db771402c','27',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (7,'ef7d5a6c-c26c-440e-afa2-e95db771402c','29',1,'beom1234','kmin1234','�����Ϸ�',32,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (11,'19212a62-754d-4cb5-9ba5-b25f62f4ade2','42',1,'kosmo001','beom1234','�������',46,'50000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (11,'19212a62-754d-4cb5-9ba5-b25f62f4ade2','39',1,'kosmo001','beom1234','�ŷ��Ϸ�',51,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (11,'19212a62-754d-4cb5-9ba5-b25f62f4ade2','41',1,'kosmo001','beom1234','�ŷ��Ϸ�',49,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (14,'ce2a8ac2-81c7-45a5-8b64-19abb5854927','55',1,'song1234','beom1234','�����',60,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (14,'ce2a8ac2-81c7-45a5-8b64-19abb5854927','52',1,'song1234','vngkgk87','�������',65,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (17,'8d2e03eb-0505-4259-ae30-f47e57c2a409','57',1,'buyer1','seller4','�ŷ��Ϸ�',67,'33000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (17,'8d2e03eb-0505-4259-ae30-f47e57c2a409','59',1,'buyer1','beom1234','�������',60,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (20,'86a158c4-dba6-4419-8516-4f4929afcded','66',1,'kosmo0498','beom1234','�ŷ��Ϸ�',71,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (20,'86a158c4-dba6-4419-8516-4f4929afcded','67',1,'kosmo0498','beom1234','�������',70,'60000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (22,'05866d26-4891-45d6-81fd-cbe4ba140e39','74',1,'shopper01','seller001','�������',79,'50000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (22,'05866d26-4891-45d6-81fd-cbe4ba140e39','72',1,'shopper01','ekrtbtb@nate.com','�ŷ��Ϸ�',83,'35000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (2,'b9517b0d-25c8-4bd8-be02-c1aef9222c0d','5',3,'asdf1234','vngkgk87','�ŷ��Ϸ�',22,'10000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (8,'eb050ef4-c4bc-4311-b726-7b838ff3f0a8','30',1,'kmin1234','ksoo1234','�ŷ��Ϸ�',33,'1000000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (8,'eb050ef4-c4bc-4311-b726-7b838ff3f0a8','31',3,'kmin1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (9,'847b2956-b310-41f4-9edf-fb1c4339314a','35',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (9,'847b2956-b310-41f4-9edf-fb1c4339314a','33',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (9,'847b2956-b310-41f4-9edf-fb1c4339314a','34',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (13,'28fbd1c4-b8a5-4e02-a038-788eb5404793','49',1,'kosmo071','beom1234','�������',51,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (13,'28fbd1c4-b8a5-4e02-a038-788eb5404793','48',1,'kosmo071','beom1234','�ŷ��Ϸ�',60,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (16,'3469fff6-de9a-49f9-a4d4-a2e35f4468e2','56',1,'song1234','vngkgk87','�ŷ��Ϸ�',64,'10000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (19,'254b1916-f40c-423c-92f0-be6b7acdd134','65',1,'bomi0498','vngkgk87','�������',65,'20000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (19,'254b1916-f40c-423c-92f0-be6b7acdd134','63',1,'bomi0498','seller3','�ŷ��Ϸ�',68,'1000000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (5,'ffbf11fc-bc9b-476b-9f46-4c09bee9bbe0','23',1,'vngkgk87','chan1234','�ŷ��Ϸ�',35,'10000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (5,'ffbf11fc-bc9b-476b-9f46-4c09bee9bbe0','21',1,'vngkgk87','chan1234','�����',36,'40000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (5,'ffbf11fc-bc9b-476b-9f46-4c09bee9bbe0','22',1,'vngkgk87','chan1234','�����',36,'40000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (6,'f9961224-2792-40e5-bf99-7509c28b77a5','24',1,'vngkgk87','chan1234','�ŷ��Ϸ�',36,'40000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (6,'f9961224-2792-40e5-bf99-7509c28b77a5','25',1,'vngkgk87','chan1234','�ŷ��Ϸ�',35,'10000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (10,'7b7a3128-7eb4-4ee7-a3e6-00c817f21740','38',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (10,'7b7a3128-7eb4-4ee7-a3e6-00c817f21740','36',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (10,'7b7a3128-7eb4-4ee7-a3e6-00c817f21740','37',1,'beom1234','ksoo1234','�������',34,'5000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (12,'9eb0e131-2a70-4f2e-8dfb-e124f4b82fae','46',1,'kosmo071','beom1234','�������',49,'30000');
Insert into USED.ORDERDETAIL (IDX,ORDERNUM,CIDX,COUNT,ID,SELLERID,STATUS,PIDX,PRICE) values (12,'9eb0e131-2a70-4f2e-8dfb-e124f4b82fae','44',2,'kosmo071','beom1234','�ŷ��Ϸ�',51,'30000');
REM INSERTING into USED.ORDERS
SET DEFINE OFF;
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('7826230b-b60d-46b8-b776-6cc672ad94bf','bomi0498','������','���� ������ �б����� 102','01024807118',1000,to_date('21/02/15','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('6a48565c-60bf-4d34-bb43-c1c5bd724278','chan1234','�׽�Ʈ','���� ������ ������� 708','01024807118',20000,to_date('21/02/23','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('f736a155-1cae-4399-9a4f-bb7499e71c63','shopper01','ȫ����','���� ��õ�� ���굿 426-5','01024807118',110000,to_date('21/02/25','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('6175ca3a-5bb5-4212-9df1-1dd14bb76239','kosmo001','ȫ����','���� ������ �Ｚ�� 150-5','01024807118',60000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('34340b12-2360-49dc-b5a8-3a88549e615a','kosmo001','ȫ����','���� ��õ�� ������� 70','01024807118',1080000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('ef7d5a6c-c26c-440e-afa2-e95db771402c','beom1234','ȫ����','���� ������ ����õ�� 163','01024807118',35000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('7b7a3128-7eb4-4ee7-a3e6-00c817f21740','beom1234','ȫ����','���� ȫõ�� ȭ�̸� �̳�������� 1','01024807118',15000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('19212a62-754d-4cb5-9ba5-b25f62f4ade2','kosmo001','ȫ����','���� ������ �Ｚ�� 150-5','01024807118',110000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('ce2a8ac2-81c7-45a5-8b64-19abb5854927','song1234','ȫ����','���� ��õ�� ���굿 426-5','01024807118',50000,to_date('21/02/22','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('3ce2052c-082f-41b1-8ff5-86e9c1510314','song1234','ȫ����','���� ��õ�� ���굿 426-5','01024807118',50000,to_date('21/02/22','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('8d2e03eb-0505-4259-ae30-f47e57c2a409','buyer1','�׽�Ʈ','���� ��õ�� ������� 70','01024807118',63000,to_date('21/02/23','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('86a158c4-dba6-4419-8516-4f4929afcded','kosmo0498','ȫ����','���� ��õ�� ���굿 426-5','01024807118',90000,to_date('21/02/24','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('05866d26-4891-45d6-81fd-cbe4ba140e39','shopper01','ȫ����','���� ���ı� ���ĵ� 182-9','01024807118',85000,to_date('21/02/27','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('b9517b0d-25c8-4bd8-be02-c1aef9222c0d','asdf1234','ȫ����','���� ������ ������ 333','01024807118',10000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('eb050ef4-c4bc-4311-b726-7b838ff3f0a8','kmin1234','ȫ����','���� ���ı� ������ 2','01024807118',1005000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('847b2956-b310-41f4-9edf-fb1c4339314a','beom1234','ȫ����','���� ������ ������ 1','01024807118',15000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('28fbd1c4-b8a5-4e02-a038-788eb5404793','kosmo071','ȫ����','���� ���ı� ������ 134','01024807118',60000,to_date('21/02/18','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('3469fff6-de9a-49f9-a4d4-a2e35f4468e2','song1234','�׽�Ʈ','��� û�ֽ� ��籸 1��ȯ�� 1202-1','01024807118',10000,to_date('21/02/22','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('254b1916-f40c-423c-92f0-be6b7acdd134','bomi0498','ȫ����','���� ��õ�� ���굿 426-5','01024807118',1020000,to_date('21/02/23','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('ffbf11fc-bc9b-476b-9f46-4c09bee9bbe0','vngkgk87','ȫ����','���� ��õ�� ����� 3','01024807118',90000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('f9961224-2792-40e5-bf99-7509c28b77a5','vngkgk87','ȫ����','���� ������ ������� 403','01024807118',50000,to_date('21/02/17','RR/MM/DD'));
Insert into USED.ORDERS (ORDERNUM,ID,NAME,ADDRESS,PHONE,SUM,ORDERDATE) values ('9eb0e131-2a70-4f2e-8dfb-e124f4b82fae','kosmo071','ȫ����','���� ���ı� ������ 2','01024807118',60000,to_date('21/02/18','RR/MM/DD'));
REM INSERTING into USED.PAY
SET DEFINE OFF;
Insert into USED.PAY (ID,SUM) values ('bomi1012','980000');
Insert into USED.PAY (ID,SUM) values ('shopper001','0');
Insert into USED.PAY (ID,SUM) values ('bomi0498','9000');
Insert into USED.PAY (ID,SUM) values ('ekrtbtb@nate.com','35000');
Insert into USED.PAY (ID,SUM) values ('seller2','0');
Insert into USED.PAY (ID,SUM) values ('asdf1234','1020000');
Insert into USED.PAY (ID,SUM) values ('kosmo0498','820000');
Insert into USED.PAY (ID,SUM) values ('kosmo498','0');
Insert into USED.PAY (ID,SUM) values ('seller001','50000');
Insert into USED.PAY (ID,SUM) values ('shopper010','0');
Insert into USED.PAY (ID,SUM) values ('shopper011','0');
Insert into USED.PAY (ID,SUM) values ('seller3','1000000');
Insert into USED.PAY (ID,SUM) values ('seller4','33000');
Insert into USED.PAY (ID,SUM) values ('buyer3','0');
Insert into USED.PAY (ID,SUM) values ('beom1234','669000');
Insert into USED.PAY (ID,SUM) values ('song1234','10000');
Insert into USED.PAY (ID,SUM) values ('zood1234','0');
Insert into USED.PAY (ID,SUM) values ('kmin1234','80000');
Insert into USED.PAY (ID,SUM) values ('ksoo1234','700000');
Insert into USED.PAY (ID,SUM) values ('chan1234','885000');
Insert into USED.PAY (ID,SUM) values ('kosmo001','0');
Insert into USED.PAY (ID,SUM) values ('qwer1111','0');
Insert into USED.PAY (ID,SUM) values ('kosmo0071','0');
Insert into USED.PAY (ID,SUM) values ('qwerty123','0');
Insert into USED.PAY (ID,SUM) values ('kosmo12345','0');
Insert into USED.PAY (ID,SUM) values ('vngkgk87','2862882');
Insert into USED.PAY (ID,SUM) values ('vngkgk88','0');
Insert into USED.PAY (ID,SUM) values ('kosmo002','0');
Insert into USED.PAY (ID,SUM) values ('kosmo071','270000');
Insert into USED.PAY (ID,SUM) values ('kosmo003','0');
Insert into USED.PAY (ID,SUM) values ('buyer1234','0');
Insert into USED.PAY (ID,SUM) values ('buyer1','942000');
Insert into USED.PAY (ID,SUM) values ('buyer2','0');
Insert into USED.PAY (ID,SUM) values ('buyer4','0');
Insert into USED.PAY (ID,SUM) values ('shopper01','931000');
REM INSERTING into USED.PRODUCT
SET DEFINE OFF;
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (66,'���','beauty','perfume',25000,'a374afbc-caf7-4af1-9e3f-fdd7d57627c4.jpg',to_date('21/02/23','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','����Ǹ��մϴ�',1,'seller4',null,'buyer1');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (67,'�е�','man_fashion','padding',33000,'957f289d-5df7-464c-844f-bb9fe4262b4c.jpg',to_date('21/02/23','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','������ �е� �Ǹ��մϴ�',13,'seller4',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (80,'����','woman_fashion','wallet',70000,'4b73fdf8-2846-4b10-b331-0102f2450c81.jpg',to_date('21/02/25','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','�丮��ġ ������ ����<br />
�Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'seller001','����Ư���� ��õ�� ���굿','shopper01');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (83,'������','woman_fashion','jeans',35000,'a7878fc9-bb05-4eb0-be61-e898d4bcf69a.jpg',to_date('21/02/27','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���� ������<br />
�Ǹ��մϴ�',29,'ekrtbtb@nate.com',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (84,'���ڹ�','woman_fashion','bag',30000,'42421075-fcba-43a7-b8c1-43e0361de9fa.jpg',to_date('21/02/27','RR/MM/DD'),'���ŷ�','�Ǹ���','Ĳ�� ���ڹ� �Ǹ��մϴ�<br />
���ŷ� ��������д���',1,'ekrtbtb@nate.com','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (85,'�̾���','digital','mobile',10000,'84df33c9-dbb8-47a5-9d04-6ae4d67a0938.jpg',to_date('21/02/27','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','���̸��� �̾���<br />
���ŷ� ä���ּ���',1,'ekrtbtb@nate.com','����Ư���� ��õ�� ���굿','shopper01');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (28,'���콺�Ǹ�','woman_fashion','blouse',10000,'ee8e538a-981c-4a5b-9e04-316170c6d845.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�ɹ��� ������ ���콺',5,'zood1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (29,'�ϸ� Ŀ�Ǹӽ� �Ǹ��մϴ�','digital','appliance',50000,'44485729-c611-4967-b6a6-fd9832c7ac86.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','Ŀ�Ǹӽ� �Ǹ��մϴ�',4,'zood1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (38,'���̽�','digital','mobile',20000,'1d0f52ca-20ec-445a-a494-8dc54ab66adc.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','������ ���̽� 8�� �ϰ� �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (39,'������','man_fashion','cap',10000,'981a54a2-355b-4878-a547-d1b698fa8586.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','������ free������ �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (40,'����','life','furniture',40000,'541c56d2-b94f-4b44-8a61-4b32ae154ccd.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (46,'���̺�','sports','camping',50000,'0e8cc245-f71c-4346-87c2-c73cbed42e56.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','ķ�����̺� �Ǹ��մϴ�.',10,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (47,'ķ����Ʈ','sports','camping',1000000,'56a69776-0df7-4f0d-bcff-2983b3035759.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�ƺ���Ű ����Ʈ �Ǹ��մϴ�.<br />
2�� ���� ���Ϲ��!',10,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (48,'�ȭ','sports','mountain',80000,'1d4538a9-9944-4f03-92f3-ab6a3d4e2304.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','����Ű ���̺극��ũ<br />
&nbsp;',20,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (49,'����','life','life',30000,'0b5d4b07-fcae-4126-a190-fc48ca7946f1.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','��Ÿ���� �����Ÿ',3,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (50,'�����','life','life',1000000,'16a54b06-5b50-42e3-b76f-69894a090f84.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���� �����<br />
2�� ���� ���Ϲ��!',100,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (51,'������','man_fashion','bag',30000,'1609ac22-2a96-4770-92a2-4ef940ba304b.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','������ ȭ��Ʈ �Ǹ��մϴ�.',24,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (56,'������','man_fashion','padding',30000,'8ae8beb2-3aac-45f5-a403-62d0b6c28c82.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','���ŷ� ��������д����� 5�� �ⱸ',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (57,'����','man_fashion','bag',10000,'7ad199df-fa7d-4f50-93bb-6635a2d0f0fd.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','���ŷ� ��������д����� 5�� �ⱸ',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (58,'CCTV','digital','camera',100000,'e1076792-a47b-45e6-b700-f3b3c1ee39a7.jpg',to_date('21/02/18','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','��ȭ�� CCTV',10,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (60,'���','sports','basketball',30000,'303a257e-e6e5-4664-8b87-bdbc2d17a92d.jpg',to_date('21/02/18','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�򸮴��� ���� �Ƶ�ٽ�<br />
&nbsp;',27,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (61,'����','baby','w_baby',10000,'59874b68-fc48-4ff4-892f-c5e1ce93fd3c.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','���� �±ǵ��� �Ǹ��մϴ�<br />
�±�! �±�! ��!',1,'zood1234','��󳲵� â���� ��â�� �ȿ뵿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (62,'����','sports','camping',40000,'2edeba08-a3d4-4a7a-a8ef-174ab81eab99.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','ķ�� �����ü�� �Ⱦ���~<br />
��õ �̸�Ʈ ���ŷ���~',1,'vngkgk87','��û���� ���ɽ� ��õ��','song1234');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (64,'�̻�','book','book',10000,'8edbc631-0f9c-4a05-80b7-94cd533cfabb.jpg',to_date('21/02/19','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ�����','<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/Tw6xGNEhsZ8" width="640"></iframe>',-1,'vngkgk87',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (65,'���콺','woman_fashion','blouse',20000,'dd01ac5a-3a1c-43a1-a9ea-fdb4875a9134.jpg',to_date('21/02/19','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/0-q1KafFCLU" width="640"></iframe>',1,'vngkgk87',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (68,'Ŀ�Ǹӽ�','life','life',1000000,'540b46e3-141b-40f6-808b-95833bf8a187.jpg',to_date('21/02/23','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�ϸ� Ŀ�Ǹӽ�',18,'seller3',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (69,'���̽�','digital','mobile',10000,'42a999ce-4732-4bc2-8acd-908de748e873.jpg',to_date('21/02/23','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','������ ���̽� �ϰ� �Ǹ��մϴ�',1,'seller3','����Ư���� ���ı� ���ĵ�','bomi0498');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (70,'���̺�','sports','camping',60000,'f6f3d72e-e485-4241-8b97-b204392fd5b3.jpg',to_date('21/02/24','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�ƺ���Ű ķ�� ���̺�<br />
&nbsp;',14,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (71,'�����','life','life',30000,'e67757c5-95f2-4378-9c9c-05d66c320825.jpg',to_date('21/02/24','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���ɾ� �����',20,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (72,'����','life','furniture',40000,'4693eba7-7f40-4800-95d0-2177e35d0ccd.jpg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','������ ���� �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿','kosmo0498');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (73,'�ȵ���̵��׽�Ʈ','digital','mobile',20000,'69ab678d-88ec-4629-9ac9-ad50d5643995.jpeg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','��',1,'seller2','���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (81,null,'man_fashion','bag',60000,'22a23d98-55be-4200-9b48-1833494a523c.jpeg',to_date('21/02/25','RR/MM/DD'),'���ŷ�','�Ǹ���','ck����',1,'seller001','���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (82,'�����','life','life',70000,'34acc026-ba7e-4ec4-94f6-1f5cec24419f.jpg',to_date('21/02/27','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���������',24,'ekrtbtb@nate.com',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (23,'��������','digital','game',10000,'36b3e1b4-b990-4a69-974d-dd0498a13478.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','��������',1,'vngkgk87',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (25,'���ŷ��׽�Ʈ','man_fashion','cap',10000,'9ae64d4f-6f0d-4979-bc11-6534d195d6c1.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�',null,1,'asdf1234','����Ư���� ���ı� ������','vngkgk87');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (30,'������ ��Ų����','beauty','skin',10000,'79cceb79-dea9-4347-9018-3cfb36a5b8cd.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�䷹���� ��Ų �Ǹ��մϴ�',20,'song1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (31,'�̻� ������ ��Ʈ','book','best',20000,'8dbb5fab-ec35-40fa-ab3b-f0b8e9e799b1.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�̻� ������ ��Ʈ �Ǹ��մϴ�',15,'kmin1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (32,'���Űſ�','life','furniture',20000,'3ae95259-52d7-4bef-bde6-49d0da1515b3.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���ɾ� ���Űſ� �Ǹ��մϴ�',7,'kmin1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (33,'������11����','digital','mobile',1000000,'c991065d-238d-4ff4-8bad-7dbd7c70b346.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','������11���� 265G �Ǹ��մϴ�',2,'ksoo1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (35,'�Ʊ��','baby','m_baby',10000,'0186b709-ee42-4f79-9761-98947b769713.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�Ʊ�� �Ǹ�',5,'chan1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (36,'����Ű ����ƽ� 97','sports','soccer',40000,'e79ecf8d-b73d-4e97-8e48-76bc17e5ad6d.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ�����','����Ű �ƽ�97 �Ǹ��մϴ�',-5,'chan1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (52,'����ũ','life','life',5000,'4dd59c80-c796-49c1-8395-a8b691c17edc.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','����ũ �ϰ� �Ǹ��մϴ�.',1,'vngkgk87','����Ư���� ������ ���е�',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (53,'���̿�','baby','m_baby',30000,'8834ed22-5058-49a9-b122-41168aff9995.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','���� ������ �������� �Ǹ��մϴ�',1,'song1234','����Ư���� ��õ�� ������',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (54,'����ƽ','beauty','cosmetics',20000,'a0d7ddd2-9691-4ec2-8d3a-fb00b8eab614.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','�Ի��ζ� ����ƽ �Ǹ��մϴ�',1,'chan1234','��û���� �ƻ�� �����',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (55,'��û','book','book',5000,'944a763a-53cb-49f6-b6a9-5029310adbc2.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�Ǹ���','���ŷ� ��������д����� 5�� �ⱸ',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (59,'����Ƽ','man_fashion','halft',25000,'8b26adf2-eb75-4ade-8358-8a52973cac6a.jpg',to_date('21/02/18','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���� ����Ƽ&nbsp;<br />
��������',100,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (63,'Ű��','man_fashion','wallet',50000,'7e2c2064-0b7f-484c-9779-cc9ff7b8c585.jpg',to_date('21/02/18','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','����� Ű�� �Ǹ��մϴ�<br />
���ŷ� ��������д����� 5�� �ⱸ',1,'beom1234','����Ư���� ��õ�� ���굿','kosmo071');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (74,'����ũ','life','life',8000,'61df5bf1-20dc-4492-8fe1-4534c8ef397f.jpeg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','����ũ�ϰ��Ǹ��մϴ�',1,'seller3','���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (75,'����ƽ','beauty','cosmetics',22000,'cc326b54-1690-499f-afd3-dda0415543e1.jpg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','�Ի��ζ� ����ƽ<br />
�Ǹ��մϴ�',1,'seller001','��⵵ ����� ö�굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (76,'������','man_fashion','cap',15000,'6d802263-6c08-4b67-abff-ed79453f5025.jpg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','������ 1ȸ ����<br />
A�� �Ǹ��մϴ�',1,'song1234','����Ư���� ������ ȭ�',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (77,'������','digital','mobile',130000,'23a53040-e557-49d8-be8e-c4c8b1032f53.jpg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','������2 ����<br />
�̰��� �Ǹ��մϴ�',1,'zood1234','����Ư���� ������ ���ﵿ',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (79,'���','beauty','perfume',50000,'31dc5f8b-8c39-40f2-959a-f8e2647dd83c.jpg',to_date('21/02/24','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�䷹���� ���<br />
100% ��ǰ',14,'seller001',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (22,'�����׽�Ʈ','woman_fashion','knit',10000,'9d2044ba-0fcd-495c-b4b4-f4ce1db84f30.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ�����','sad',-3,'vngkgk87',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (24,'�����׽�Ʈ2','book','babybook',10000,'6bda5741-fa7b-41b0-bee7-fc5ba1cb6dff.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','������',1,'vngkgk87',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (26,'�����׽�Ʈ2','man_fashion','padding',111,'edca5336-6221-4360-8583-4addf31052ac.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���',null,11,'asdf1234','��⵵ ������ �ȴޱ� ȭ����',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (27,'MLB �е� �Ǹ��մϴ�','man_fashion','padding',20000,'7dd559ce-a803-4965-ac44-44fb0e4b2b36.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','<br />
100% ��ǰ<br />
MLB�߱����� �Ǹ��մϴ�',8,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (34,'�Ǹ��ܱ���','life','life',5000,'d62fec7c-c3f3-4385-ad6d-f25ecbaf62ab.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','�Ǹ��ܱ���<br />
�Ǹ��մϴ�',10,'ksoo1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (37,'������ �Ǹ�','digital','mobile',30000,'82215107-79d3-4107-b9f9-f183fc88194a.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','������ se2 �� 128g �Ǹ��մϴ�.',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (41,'������','digital','mobile',50000,'7ae4f809-ae21-47e5-9f18-2a6773dc2fbb.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','������2 ���� �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (42,'����','woman_fashion','wallet',70000,'60d74713-3137-4d07-919c-37254ea2334b.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�Ǹ���','�丮��ġ ���� �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (43,'û����','man_fashion','jeans',20000,'d6f0e1be-7c67-4d27-b815-611d429b8391.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','���� 30������ �Ǹ��մϴ�.',1,'beom1234','����Ư���� ��õ�� ���굿','kosmo071');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (44,'�ĵ�','woman_fashion','training',20000,'c9da22c3-05a4-460c-a4e2-74ced0e14b52.jpg',to_date('21/02/17','RR/MM/DD'),'���ŷ�','�ŷ��Ϸ�','����Ű �ĵ� s������ �Ǹ��մϴ�<br />
���ŷ� ��������д�����',1,'beom1234','����Ư���� ��õ�� ���굿','kosmo001');
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (45,'�����','life','furniture',30000,'ecd3c169-65d9-47f8-a134-1497f3593e56.jpg',to_date('21/02/17','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ���','���ɾ� �����<br />
2�� ���� ���Ϲ��!',50,'beom1234',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (78,'���̿�','baby','m_baby',80000,'a8c3c6de-8d60-4566-8070-b4e3d69babc4.jpg',to_date('21/02/24','RR/MM/DD'),'���ŷ�','�Ǹ���','���̿� ������ ��������<br />
�����ϰ� �������ϴ�<br />
���ŷ� ��������д�����',1,'seller001','����Ư���� ��õ�� ���굿',null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (21,'qwerty','woman_fashion','skirt',1000,'95d0ca62-acb3-4b5d-99d6-5e85a427c569.jpg',to_date('21/02/15','RR/MM/DD'),'�¶��ΰŷ�','�Ǹ�����','dsada',0,'bomi1012',null,null);
Insert into USED.PRODUCT (IDX,PNAME,LCATEGORY,MCATEGORY,PRICE,ATTACHEDFILE1,POSTDATE,TRADERULE,RESULT,CONTENTS,COUNT,ID,ADDRESS,RESERVATION) values (86,'������','digital','mobile',600000,'49770509-da56-4e5e-9193-5ff9a5cd3005.jpeg',to_date('21/02/27','RR/MM/DD'),'���ŷ�','�Ǹ���','������',1,'ksoo1234','���� ��õ�� ���굿',null);
REM INSERTING into USED.PRODUCT_QNA
SET DEFINE OFF;
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (79,'seller001',22,'
5�ÿ� ����ϰڽ��ϴ�
---[������]---

	���� ��۵ǳ���??											',to_date('21/02/25','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',21,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (33,'kmin1234',5,'											�װ���?	',to_date('21/02/17','RR/MM/DD'),'���ǵ帳�ϴ�.',5,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (33,'ksoo1234',6,'
��� �Ұ���
---[������]---

											�װ���?	',to_date('21/02/17','RR/MM/DD'),'[RE]���ǵ帳�ϴ�.',5,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (60,'beom1234',12,'
5�ñ��� ����ϰڽ��ϴ�.
---[������]---

���� ���� �� �ֳ���??												',to_date('21/02/18','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',11,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (67,'seller4',16,'�ټ��ñ��� ����ҰԿ�

---[������]---

���� ���� �� �ֳ���?												',to_date('21/02/23','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',15,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (71,'kosmo0498',19,'���� ���� �� �ճ���?												',to_date('21/02/24','RR/MM/DD'),'���ǵ帳�ϴ�',19,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (71,'beom1234',20,'
5�ı��� ����ҰԿ�
---[������]---

���� ���� �� �ճ���?												',to_date('21/02/24','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',19,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (79,'shopper01',21,'	���� ��۵ǳ���??											',to_date('21/02/25','RR/MM/DD'),'���ǵ帳�ϴ�',21,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (83,'shopper01',23,'���� ���� �� �ֳ���?												',to_date('21/02/27','RR/MM/DD'),'���ǵ帳�ϴ�.',23,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (83,'ekrtbtb@nate.com',24,'
5�ñ��� ����ϰڽ��ϴ�
---[������]---

���� ���� �� �ֳ���?												',to_date('21/02/27','RR/MM/DD'),'[RE]���ǵ帳�ϴ�.',23,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (24,'asdf1234',3,'�׽�Ʈ���Դϴ�.												',to_date('21/02/17','RR/MM/DD'),'��ǰ�����׽�Ʈ',3,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (51,'kosmo001',7,'			���� ���� �� �ֳ���?									',to_date('21/02/17','RR/MM/DD'),'���ǵ帳�ϴ�',7,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (51,'beom1234',8,'
5�ñ��� ����ϰڽ��ϴ�
---[������]---

			���� ���� �� �ֳ���?									',to_date('21/02/17','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',7,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (60,'kosmo071',11,'���� ���� �� �ֳ���??												',to_date('21/02/18','RR/MM/DD'),'���ǵ帳�ϴ�',11,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (65,'song1234',13,'���� ���� �� �ֳ���?								',to_date('21/02/22','RR/MM/DD'),'���ǵ帳�ϴ�',13,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (65,'vngkgk87',14,'���� ����մϴ�

---[������]---

���� ���� �� �ֳ���?								',to_date('21/02/22','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',13,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (68,'bomi0498',17,'���� ���� �� �ֳ���?												',to_date('21/02/23','RR/MM/DD'),'���ǵ帳�ϴ�',17,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (24,'vngkgk87',4,'1111

---[������]---

�׽�Ʈ���Դϴ�.												',to_date('21/02/17','RR/MM/DD'),'[RE]��ǰ�����׽�Ʈ',3,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (51,'kosmo071',9,'���� ���� �� �ֳ���?												',to_date('21/02/18','RR/MM/DD'),'���ǵ帳�ϴ�',9,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (51,'beom1234',10,'5�ñ��� ����ϰڽ��ϴ�

---[������]---

���� ���� �� �ֳ���?												',to_date('21/02/18','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',9,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (67,'buyer1',15,'���� ���� �� �ֳ���?												',to_date('21/02/23','RR/MM/DD'),'���ǵ帳�ϴ�',15,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (68,'seller3',18,'�ټ��ñ��� ����ϰڽ��ϴ�

---[������]---

���� ���� �� �ֳ���?												',to_date('21/02/23','RR/MM/DD'),'[RE]���ǵ帳�ϴ�',17,1,1);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (21,'bomi1012',1,'					��������							',to_date('21/02/15','RR/MM/DD'),'�������3.5cm',1,0,0);
Insert into USED.PRODUCT_QNA (PRODUCTNUM,USERID,QNANUM,QNACON,QNADATE,QNATITLE,BGROUP,BSTEP,BINDENT) values (21,'bomi1012',2,'
�ӱ���
---[������]---

					��������							',to_date('21/02/15','RR/MM/DD'),'[RE]�������3.5cm',1,1,1);
REM INSERTING into USED.RESERVATION
SET DEFINE OFF;
Insert into USED.RESERVATION (IDX,PIDX,ID) values (12,80,'shopper01');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (6,63,'kosmo071');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (8,62,'song1234');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (9,66,'buyer1');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (11,72,'kosmo0498');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (13,85,'shopper01');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (10,69,'bomi0498');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (4,44,'kosmo001');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (2,25,'vngkgk87');
Insert into USED.RESERVATION (IDX,PIDX,ID) values (5,43,'kosmo071');
REM INSERTING into USED.REVIEWBOARD
SET DEFINE OFF;
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (22,'seller001','��ٵ� �ı�','2�� ����ϱ⿡ �ſ� �γ��մϴ�<br />
�ʺ��е� ���ö�� ��ġ���� �����ҰԿ�~!!<br />
<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/IeKDPjo3LEU" width="640"></iframe>','review',0,0,0,5,to_date('21/02/25','RR/MM/DD'),'a85a0512-a188-4d56-9b96-078f0f972da7.jpg');
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (12,'bomi1012','�ı�Խñ�2','2','review',0,0,0,0,to_date('21/02/16','RR/MM/DD'),null);
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (13,'bomi1012','�ı�3÷��','33','review',0,0,0,2,to_date('21/02/16','RR/MM/DD'),'77066467-6d95-48aa-8e87-fdbc59e04697.jpg');
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (14,'bomi1012','�ı�4÷��','444','review',0,0,0,1,to_date('21/02/16','RR/MM/DD'),'43192dd0-00aa-4332-9906-8debddac8494.jpg');
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (15,'bomi1012','�ı�5','555','review',0,0,0,1,to_date('21/02/16','RR/MM/DD'),null);
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (16,'bomi1012','�ı�6','66','review',0,0,0,1,to_date('21/02/16','RR/MM/DD'),null);
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (18,'beom1234','11','111','review',0,0,0,2,to_date('21/02/18','RR/MM/DD'),'662d9972-5511-4b89-985d-d2418f0ec639.jpg');
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (20,'vngkgk87','��ٵ� ����������?','2���̼� ��ħ����&nbsp;<br />
����Ұǵ� ������ ������� �ñ��ϳ׿�<br />
<br />
<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/IeKDPjo3LEU" width="640"></iframe>','review',0,0,0,3,to_date('21/02/19','RR/MM/DD'),null);
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (19,'vngkgk87','�ı⿵��','<iframe allowfullscreen="" frameborder="0" height="360" src="https://www.youtube.com/embed/9Q_GC3M20hE" width="640"></iframe>','review',0,0,0,1,to_date('21/02/19','RR/MM/DD'),null);
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (17,'bomi1012','�ı�','777','review',0,0,0,2,to_date('21/02/16','RR/MM/DD'),'ac6a6f07-b50d-4f19-b659-b64abaff5e39.jpg');
Insert into USED.REVIEWBOARD (IDX,ID,TITLE,CONTENTS,FLAG,BGROUP,BSTEP,BINDENT,HITS,POSTDATE,ATTACHEDFILE) values (21,'vngkgk87','�ı�','���콺 �ı�','review',0,0,0,29,to_date('21/02/20','RR/MM/DD'),'22ad4494-d944-4383-8257-d3af17ecdf3c.jpg');
--------------------------------------------------------
--  DDL for Index REVIEWBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USED"."REVIEWBOARD_PK" ON "USED"."REVIEWBOARD" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USED"."COMENT_PK" ON "USED"."COMENT" ("CNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USED"."PRODUCT_PK" ON "USED"."PRODUCT" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USED"."MEMBER_PK" ON "USED"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USED"."BOARD_PK" ON "USED"."BOARD" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CHATROOMLIST
--------------------------------------------------------

  ALTER TABLE "USED"."CHATROOMLIST" MODIFY ("ROOMID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CHATROOMLIST" MODIFY ("USERID1" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CHATROOMLIST" MODIFY ("USERID2" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_QNA
--------------------------------------------------------

  ALTER TABLE "USED"."PRODUCT_QNA" MODIFY ("PRODUCTNUM" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."PRODUCT_QNA" MODIFY ("QNANUM" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."PRODUCT_QNA" ADD PRIMARY KEY ("PRODUCTNUM", "QNANUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "USED"."CART" MODIFY ("CIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CART" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CART" MODIFY ("ADDDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CART" ADD PRIMARY KEY ("CIDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "USED"."ORDERS" MODIFY ("ORDERNUM" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" MODIFY ("ADDRESS" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" MODIFY ("SUM" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERS" ADD PRIMARY KEY ("ORDERNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMENT
--------------------------------------------------------

  ALTER TABLE "USED"."COMENT" ADD CONSTRAINT "COMENT_PK" PRIMARY KEY ("CNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USED"."COMENT" MODIFY ("CNO" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."COMENT" MODIFY ("BNO" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."COMENT" MODIFY ("POSTDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."COMENT" MODIFY ("CONTENTS" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."COMENT" MODIFY ("WRITER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "USED"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USED"."MEMBER" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."MEMBER" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."MEMBER" MODIFY ("REGIDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."MEMBER" MODIFY ("GRADE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."MEMBER" MODIFY ("ENABLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "USED"."CHAT" MODIFY ("ROOMID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."CHAT" MODIFY ("SENDER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "USED"."RESERVATION" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."RESERVATION" MODIFY ("PIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."RESERVATION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEWBOARD
--------------------------------------------------------

  ALTER TABLE "USED"."REVIEWBOARD" ADD CONSTRAINT "REVIEWBOARD_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USED"."REVIEWBOARD" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."REVIEWBOARD" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."REVIEWBOARD" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."REVIEWBOARD" MODIFY ("POSTDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "USED"."ORDERDETAIL" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERDETAIL" MODIFY ("CIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."ORDERDETAIL" MODIFY ("COUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "USED"."PAY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."PAY" MODIFY ("SUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "USED"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USED"."BOARD" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BOARD" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BOARD" MODIFY ("POSTDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BID
--------------------------------------------------------

  ALTER TABLE "USED"."BID" MODIFY ("BIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BID" MODIFY ("AIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BID" MODIFY ("MID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BID" MODIFY ("BPRICE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BID" MODIFY ("BDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."BID" ADD PRIMARY KEY ("BIDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "USED"."INQUIRY" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."INQUIRY" MODIFY ("SENDER" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."INQUIRY" MODIFY ("ADMIN" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."INQUIRY" MODIFY ("CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."INQUIRY" ADD PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "USED"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "USED"."PRODUCT" MODIFY ("IDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."PRODUCT" MODIFY ("POSTDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUCTION
--------------------------------------------------------

  ALTER TABLE "USED"."AUCTION" MODIFY ("AIDX" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("MID" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("ATITLE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("LCATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("MCATEGORY" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("SDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("EDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("SPRICE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" MODIFY ("EPRICE" NOT NULL ENABLE);
 
  ALTER TABLE "USED"."AUCTION" ADD PRIMARY KEY ("AIDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUCTION
--------------------------------------------------------

  ALTER TABLE "USED"."AUCTION" ADD CONSTRAINT "FK_AUCTION_MEMBER_MID" FOREIGN KEY ("MID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BID
--------------------------------------------------------

  ALTER TABLE "USED"."BID" ADD CONSTRAINT "FK_BID_AUCTION_AIDX" FOREIGN KEY ("AIDX")
	  REFERENCES "USED"."AUCTION" ("AIDX") ENABLE;
 
  ALTER TABLE "USED"."BID" ADD CONSTRAINT "FK_BID_MEMBER_MID" FOREIGN KEY ("MID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "USED"."BOARD" ADD CONSTRAINT "FK_BOARD_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "USED"."CART" ADD CONSTRAINT "FK_CART_IDX_PRODUCT_IDX" FOREIGN KEY ("IDX")
	  REFERENCES "USED"."PRODUCT" ("IDX") ON DELETE SET NULL ENABLE;
 
  ALTER TABLE "USED"."CART" ADD CONSTRAINT "FK_CART_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "USED"."INQUIRY" ADD CONSTRAINT "FK_INQUIRY_MEMBER_AIDX" FOREIGN KEY ("SENDER")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERDETAIL
--------------------------------------------------------

  ALTER TABLE "USED"."ORDERDETAIL" ADD CONSTRAINT "FK_ORDERDETAIL_ORDER_ORDERNUM" FOREIGN KEY ("ORDERNUM")
	  REFERENCES "USED"."ORDERS" ("ORDERNUM") ENABLE;
 
  ALTER TABLE "USED"."ORDERDETAIL" ADD CONSTRAINT "FK_ORDERDETAIL_PRODUCT_PIDX" FOREIGN KEY ("PIDX")
	  REFERENCES "USED"."PRODUCT" ("IDX") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "USED"."ORDERS" ADD CONSTRAINT "FK_ORDER_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "USED"."PAY" ADD CONSTRAINT "FK_PAY_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "USED"."PRODUCT" ADD CONSTRAINT "FK_PRODUCT_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_QNA
--------------------------------------------------------

  ALTER TABLE "USED"."PRODUCT_QNA" ADD CONSTRAINT "PRODUCT_QNA_PRODUCTNUM" FOREIGN KEY ("PRODUCTNUM")
	  REFERENCES "USED"."PRODUCT" ("IDX") ENABLE;
 
  ALTER TABLE "USED"."PRODUCT_QNA" ADD CONSTRAINT "PRODUCT_QNA_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "USED"."RESERVATION" ADD CONSTRAINT "FK_RESERVATION_IDX" FOREIGN KEY ("PIDX")
	  REFERENCES "USED"."PRODUCT" ("IDX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEWBOARD
--------------------------------------------------------

  ALTER TABLE "USED"."REVIEWBOARD" ADD CONSTRAINT "FK_BUYLIST_ID_MEMBER_ID" FOREIGN KEY ("ID")
	  REFERENCES "USED"."MEMBER" ("ID") ENABLE;
