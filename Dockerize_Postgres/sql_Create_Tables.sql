CREATE SCHEMA CAR_SALES_TXN;


/*-----------------------------------------------------CUSTOMER--------------------------------------------------------*/
CREATE TABLE CAR_SALES_TXN.CUSTOMER (
    CUST_ID     INT          PRIMARY KEY,
    CUST_F_NAME VARCHAR(100),
    CUST_L_NAME VARCHAR(100),
    PHONE_NO    VARCHAR(15),
    CREATE_DATE TIMESTAMP,
    UPDATE_DATE TIMESTAMP
);


INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(100,'AMY','SANTIAGO','',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(101,'JAKE','PERALTA','60-098734323',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(102,'CHARLES','BOYLE','',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(103,'TERRY','CREWS','60-927634055',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(104,'RAYMOND','HOLT','60-774830221',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(105,'ROSA','DIAZ','',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(106,'KEVIN','COZNER','62-8493834',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(107,'DOUG','JUDY','63-9797834',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(108,'MICHAEL','HITCHCOCK','60-984431200',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(109,'NORMAN','SCULLY','',current_timestamp);
INSERT INTO CAR_SALES_TXN.CUSTOMER(cust_id,cust_f_name,cust_l_name,phone_no,create_date) VALUES(110,'NIKOLAJ','BOYLE','',current_timestamp);


-----------------------------------------------------EMPLOYEE--------------------------------------------------------
CREATE TABLE CAR_SALES_TXN.EMPLOYEE ( 
    EMP_ID      INT          PRIMARY KEY,
    EMP_F_NAME  VARCHAR(100),
    EMP_L_NAME  VARCHAR(100),
    CREATE_DATE TIMESTAMP,
    UPDATE_DATE TIMESTAMP
);


INSERT INTO CAR_SALES_TXN.EMPLOYEE(emp_id,emp_f_name,emp_l_name,create_date) VALUES(200,'MADELEINE','WUNCTH',current_timestamp);
INSERT INTO CAR_SALES_TXN.EMPLOYEE(emp_id,emp_f_name,emp_l_name,create_date) VALUES(201,'GINA','DIAZ',current_timestamp);
INSERT INTO CAR_SALES_TXN.EMPLOYEE(emp_id,emp_f_name,emp_l_name,create_date) VALUES(202,'ADRIEN','PIMENTO',current_timestamp);



-----------------------------------------------------CAR_INVENTORY-----------------------------------------------------
CREATE TABLE CAR_SALES_TXN.CAR_INVENTORY (
    CAR_ID              INT  PRIMARY KEY,
    MANUFACTURER        VARCHAR(25),
    MODEL_DESC          VARCHAR(50),
    WEIGHT_DESC         VARCHAR(100),
    SERIAL_NO           VARCHAR(25),
    RETAIL_PRICE        NUMERIC(12,2),
    CREATE_DATE         TIMESTAMP,
    UPDATE_DATE         TIMESTAMP
);

INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(10,'FORD','ECOSPORT','3,300 pounds','S55098-THU-743',current_timestamp);
INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(11,'HYUNDAI','ACCENT','2000 pounds','HA923-NON-114',current_timestamp);
INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(12,'AUDI','A4','3,300 pounds','AU112-UGH-467',current_timestamp);
INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(13,'HONDA','CR-V','4,400 pounds','HO564-QWE-098',current_timestamp);
INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(14,'MAZDA','CX-30','2,600 to 3,000 pounds','MA776-BOB-438',current_timestamp);
INSERT INTO CAR_SALES_TXN.CAR_INVENTORY(CAR_ID,MANUFACTURER	,MODEL_DESC,WEIGHT_DESC,	SERIAL_NO,create_date) VALUES(15,'BMW','2 SERIES GRAN COUPE','2,600 to 3,000 pounds','BM214-RIV-705',current_timestamp);

-----------------------------------------------------SALES_TRANSACTION-----------------------------------------------------
CREATE TABLE CAR_SALES_TXN.SALES_TRANSACTION (
    SALES_TRX_ID    INT  PRIMARY KEY,
    CUST_ID         INT,
    CAR_ID          INT,
    EMP_ID          INT,
    INVOICE_NO      VARCHAR(25),
    SALE_PRICE      NUMERIC(12,2),
    TXN_DATE        TIMESTAMP,
    TXN_STATUS      VARCHAR(10),
    CREATE_DATE     TIMESTAMP,
    UPDATE_DATE     TIMESTAMP
);


INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2000,100,10,200,'2022-S0100','50850','2022-04-20','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2001,101,11,201,'2022-S0101','45180','2020-08-02','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2002,102,12,202,'2022-S0102','79560','2020-09-10','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2003,103,13,200,'2022-S0103','35780','2021-03-15','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2004,104,14,201,'2022-S0104','45180','2021-05-20','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2005,105,15,202,'2022-S0105','56000','2021-11-12','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2006,106,10,202,'2022-S0106','79560','2022-04-30','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2007,107,11,202,'2022-S0107','79520','2022-09-30','PROCESSING',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2008,108,10,202,'2022-S0108','40670','2022-04-25','ON-HOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2009,109,11,202,'2022-S0109','15980','2022-10-01','SOLD',current_timestamp);
INSERT INTO CAR_SALES_TXN.SALES_TRANSACTION(sales_trx_id,cust_id,car_id,emp_id,invoice_no,sale_price,txn_date,txn_status,create_date) VALUES(2010,110,14,200,'2022-S0110','50850','2022-09-19','SOLD',current_timestamp);


