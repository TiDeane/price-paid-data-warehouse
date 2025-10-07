SET NAMES utf8;

DROP DATABASE IF EXISTS pp_star_database;

CREATE DATABASE IF NOT EXISTS pp_star_database DEFAULT CHARACTER SET utf8;

USE pp_star_database;

CREATE TABLE IF NOT EXISTS dim_location (
    locationid   INT,
    city         VARCHAR(50),
    district     VARCHAR(50),
    county       VARCHAR(50),
    PRIMARY KEY (locationid)
);

CREATE TABLE IF NOT EXISTS dim_time (
    timeid DATETIME,
    day    INT,
    month  INT,
    year   INT,
    PRIMARY KEY (timeid)
);

CREATE TABLE IF NOT EXISTS fact_transaction (
    locationid INT,
    timeid     DATETIME,
    price      INT,
    PRIMARY KEY (locationid, timeid),
    FOREIGN KEY (timeid) REFERENCES dim_time (timeid),
    FOREIGN KEY (locationid) REFERENCES dim_location(locationid)
);
