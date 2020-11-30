-- Drop tables if existing
DROP TABLE IF EXISTS ato;
DROP TABLE IF EXISTS dss;
-- Create tables for raw data to be loaded into
CREATE TABLE ato (
postcode VARCHAR PRIMARY KEY,
avg_income INT,
med_income INT,
avg_salary INT,
med_salary INT
);
CREATE TABLE dss (
postcode VARCHAR PRIMARY KEY,
age_pension VARCHAR,
austudy VARCHAR,
disability_support VARCHAR,
tax_a VARCHAR,
tax_b VARCHAR
);
-- Joins tables
SELECT ato.postcode, ato.med_income, dss.age_pension
FROM ato
JOIN dss
ON ato.postcode = dss.postcode;