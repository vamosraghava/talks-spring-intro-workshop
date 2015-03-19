CREATE TABLE CUSTOMER(
  ID BIGINT AUTO_INCREMENT,
  FIRST_NAME VARCHAR,
  LAST_NAME VARCHAR,
  EMAIL_ADDRESS VARCHAR
);
CREATE TABLE PRODUCT(
  ID BIGINT AUTO_INCREMENT,
  ITEM_ID VARCHAR,
  NAME VARCHAR,
  DESRIPTION VARCHAR,
  COST DOUBLE,
  PRICE DOUBLE
);

CREATE TABLE INVENTORY(
  ID BIGINT AUTO_INCREMENT,
  PRODUCT_ID BIGINT,
  COUNT BIGINT,
  FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID)
);

CREATE TABLE TRANSACTION(
  ID BIGINT AUTO_INCREMENT,
  PRODUCT_ID BIGINT,
  AMOUNT BIGINT,
  ORDER_ID BIGINT,
  FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(ID)
);

CREATE TABLE CUST_ORDER(
  ID BIGINT AUTO_INCREMENT,
  CUSTOMER_ID BIGINT,
  TOTAL_PRICE DOUBLE,
  FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(ID)
);
