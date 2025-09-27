SET NAMES utf8;

DROP DATABASE IF EXISTS pp_database;

CREATE DATABASE IF NOT EXISTS pp_database DEFAULT CHARACTER SET utf8;

USE pp_database;

CREATE TABLE IF NOT EXISTS pp_table (
    transactionid CHAR(38)       NOT NULL,
    price         INT            NOT NULL,
    transferdate  DATE           NOT NULL,
    postcode      VARCHAR(10)    NOT NULL,
    propertytype  CHAR(1)        NOT NULL,
    newbuild      CHAR(1)        NOT NULL,
    tenure        CHAR(1)        NOT NULL,
    paon          VARCHAR(100)   NOT NULL,
    saon          VARCHAR(50)            ,
    streetname    VARCHAR(50)            ,
    locality      VARCHAR(50)            ,
    city          VARCHAR(50)    NOT NULL,
    district      VARCHAR(50)    NOT NULL,
    county        VARCHAR(50)    NOT NULL,
    recordstatus  CHAR(1)        NOT NULL,
    category      CHAR(1)        NOT NULL,
    PRIMARY KEY (transactionid)
);

LOAD DATA LOCAL INFILE '/home/aid/Downloads/pp-2025.csv'
INTO TABLE pp_table
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
(transactionid, price, transferdate, postcode, propertytype, newbuild, tenure, paon, saon, streetname, locality, city, district, county, recordstatus, category);


/* Command to run "mysql -u aid -p < Task2.sql", pass: aid */
