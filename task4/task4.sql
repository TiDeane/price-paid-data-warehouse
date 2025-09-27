SET NAMES utf8;

DROP DATABASE IF EXISTS pp_star_database;

CREATE DATABASE IF NOT EXISTS pp_star_database DEFAULT CHARACTER SET utf8;

USE pp_star_database;

CREATE TABLE IF NOT EXISTS dim_location (
    locationid   INT AUTO_INCREMENT NOT NULL,
    cityname     VARCHAR(50)        NOT NULL,
    districtname VARCHAR(50)        NOT NULL,
    countyname   VARCHAR(50)        NOT NULL,
    PRIMARY KEY (locationid)
);

CREATE TABLE IF NOT EXISTS dim_time (
    timeid INT AUTO_INCREMENT NOT NULL,
    day    INT                NOT NULL,
    month  INT                NOT NULL,
    year   INT                NOT NULL,
    PRIMARY KEY (timeid)
);

CREATE TABLE IF NOT EXISTS fact_transaction (
    locationid INT                                       NOT NULL,
    timeid     INT                                       NOT NULL,
    price      INT                                       NOT NULL,
    PRIMARY KEY (locationid, timeid)                             ,
    FOREIGN KEY (timeid) REFERENCES dim_time (timeid)            ,
    FOREIGN KEY (locationid) REFERENCES dim_location(locationid)
);
