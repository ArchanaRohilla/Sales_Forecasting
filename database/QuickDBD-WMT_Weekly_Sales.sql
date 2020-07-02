<<<<<<< HEAD:database/QuickDBD-WMT_Weekly_Sales.sql
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Weekly_Sales" (
    "index_id" VARCHAR   NOT NULL,
    "Rev_Date" date   NOT NULL,
    "Date" date   NOT NULL,
    "Store" int   NOT NULL,
    "Weekly_Sales" FLOAT   NOT NULL,
    "Holiday_Flag" int   NOT NULL,
    "Temperature" FLOAT   NOT NULL,
    "Fuel_Price" FLOAT   NOT NULL,
    "CPI" FLOAT   NOT NULL,
    "Unemployment" FLOAT   NOT NULL,
    "Month" int   NOT NULL,
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    CONSTRAINT "pk_Weekly_Sales" PRIMARY KEY (
        "index_id"
     )
);

CREATE TABLE "Holidays" (
    "Date" date   NOT NULL,
    "Holiday_Flag" int   NOT NULL,
    "Holiday_Description" string   NOT NULL,
    CONSTRAINT "pk_Holidays" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Features" (
    "index_id" VARCHAR   NOT NULL,
    "Date" date   NOT NULL,
    "Store" int   NOT NULL,
    "Temperature" FLOAT   NOT NULL,
    "Fuel_Price" FLOAT   NOT NULL,
    "CPI" FLOAT NOT NULL,
    "Unemployment" FLOAT  NOT NULL,
    CONSTRAINT "pk_Features" PRIMARY KEY (
        "index_id"
     )
);

ALTER TABLE "Weekly_Sales" ADD CONSTRAINT "fk_Weekly_Sales_index_id" FOREIGN KEY("index_id")
REFERENCES "Features" ("index_id");

SELECT w.index_id, w.Date, w.Store, w.gender, w.Weekly_Sales,
	f.Temperature, f.Fuel_Price, f.CPI, f.Unemployment,
    h.Holiday_Flag, h.Holiday_Description
INTO WALMART_SALES
FROM Weekly_Sales AS w
INNER JOIN Features AS f
ON (w.index_id = f.index_id)
INNER JOIN Holidays AS h
ON (w.Date = h.Date)
ORDER BY w.index_id,w.Store;

=======
﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Weekly_Sales" (
    "index_id" VARCHAR   NOT NULL,
    "Rev_Date" date   NOT NULL,
    "Date" date   NOT NULL,
    "Store" int   NOT NULL,
    "Weekly_Sales" FLOAT   NOT NULL,
    "Holiday_Flag" int   NOT NULL,
    "Temperature" FLOAT   NOT NULL,
    "Fuel_Price" FLOAT   NOT NULL,
    "CPI" FLOAT   NOT NULL,
    "Unemployment" FLOAT   NOT NULL,
    "Month" int   NOT NULL,
    "Year" int   NOT NULL,
    "Week" int   NOT NULL,
    CONSTRAINT "pk_Weekly_Sales" PRIMARY KEY (
        "index_id"
     )
);

CREATE TABLE "Holidays" (
    "Date" date   NOT NULL,
    "Holiday_Flag" int   NOT NULL,
    "Holiday_Description" string   NOT NULL,
    CONSTRAINT "pk_Holidays" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Features" (
    "index_id" VARCHAR   NOT NULL,
    "Date" date   NOT NULL,
    "Store" int   NOT NULL,
    "Temperature" FLOAT   NOT NULL,
    "Fuel_Price" FLOAT   NOT NULL,
    "CPI" FLOAT NOT NULL,
    "Unemployment" FLOAT  NOT NULL,
    CONSTRAINT "pk_Features" PRIMARY KEY (
        "index_id"
     )
);

ALTER TABLE "Weekly_Sales" ADD CONSTRAINT "fk_Weekly_Sales_index_id" FOREIGN KEY("index_id")
REFERENCES "Features" ("index_id");

SELECT w.index_id, w.Date, w.Store, w.gender, w.Weekly_Sales,
	f.Temperature, f.Fuel_Price, f.CPI, f.Unemployment,
    h.Holiday_Flag, h.Holiday_Description
INTO WALMART_SALES
FROM Weekly_Sales AS w
INNER JOIN Features AS f
ON (w.index_id = f.index_id)
INNER JOIN Holidays AS h
ON (w.Date = h.Date)
ORDER BY w.index_id,w.Store;

>>>>>>> b017f2bb91a04c5fda85b1532897f70b1617450f:QuickDBD-WMT_Weekly_Sales.sql
