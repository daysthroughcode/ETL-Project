-- Create ato Table

CREATE TABLE ato (
postcode VARCHAR PRIMARY KEY,
avg_income INT,
med_income INT,
avg_salary INT,
med_salary INT
);

-- Create dss Table

CREATE TABLE dss (
postcode VARCHAR PRIMARY KEY,
age_pension VARCHAR,
austudy VARCHAR,
disability_support VARCHAR,
tax_a VARCHAR,
tax_b VARCHAR
);

-- Create Join

SELECT ato.postcode, ato.med_income, dss.age_pension
FROM ato
JOIN dss
ON ato.postcode = dss.postcode;

-- Create View for Aggregation

SELECT a.postcode, a.med_income, d.age_pension
	FROM ato a
	INNER JOIN dss d ON a.postcode = d.postcode;