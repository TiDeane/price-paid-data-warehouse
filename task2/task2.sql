SET NAMES utf8;

DROP DATABASE IF EXISTS pp_database;

CREATE DATABASE IF NOT EXISTS pp_database DEFAULT CHARACTER SET utf8;

USE pp_database;

CREATE TABLE IF NOT EXISTS pp_table (
    transactionid CHAR(38)       ,
    price         INT            ,
    transferdate  DATETIME       ,
    postcode      VARCHAR(10)    ,
    propertytype  CHAR(1)        ,
    newbuild      CHAR(1)        ,
    tenure        CHAR(1)        ,
    paon          VARCHAR(100)   ,
    saon          VARCHAR(50)    ,
    streetname    VARCHAR(50)    ,
    locality      VARCHAR(50)    ,
    city          VARCHAR(50)    ,
    district      VARCHAR(50)    ,
    county        VARCHAR(50)    ,
    recordstatus  CHAR(1)        ,
    category      CHAR(1)        ,
    PRIMARY KEY (transactionid)
);

LOAD DATA LOCAL INFILE '/home/aid/Downloads/pp-2025.csv'
INTO TABLE pp_table
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
(transactionid, price, transferdate, postcode, propertytype, newbuild, tenure, paon, saon, streetname, locality, city, district, county, recordstatus, category);

