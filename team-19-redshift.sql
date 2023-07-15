CREATE SCHEMA my_schema;
CREATE TABLE my_schema.payments_table (date_of_payment DATE, number_of_payments_included_in_total_amount INT, total_amount_of_payment_usdollars FLOAT, record_id INT);
CREATE TABLE my_schema.physicians_table (
covered_recipient_profile_id INT, record_id INT,  covered_recipient_npi INT,
physician_specialty VARCHAR(100),
physician_first_name VARCHAR(100),
physician_last_name VARCHAR(100));
CREATE TABLE my_schema.reviews_table(
npi INT,
source VARCHAR,
quality_category_score FLOAT,
final_mips_score_without_cpb FLOAT);
CREATE TABLE my_schema.hospital_table (teaching_hospital_name VARCHAR(50), recipient_state VARCHAR(50), recipient_city VARCHAR(50), teaching_hospital_ccn INT);
CREATE TABLE my_schema.patients_table(covered_recipient_profile_id INT);

COPY my_schema.physicians_table
FROM 's3://grp-19-dataswan/physicians_table_test.csv'
IAM_ROLE 'arn:aws:iam:::role/test-group-19'
REGION 'us-east-1'
NULL AS 'NULL'
EMPTYASNULL
delimiter ','
IGNOREHEADER 1;

SELECT * FROM my_schema.physicians_table;


