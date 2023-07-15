# dataswan-team19
The ETL script does the following:
- pull the data from the respective APIs
- subsets each resulting dataset for the columns we are keeping
- cleans the subset data sets dropping columns that are missing more than 40% of their data, imputations, and other cleaning
- groups the cleaned datasets into our final tables that will exist in our data warehouse
- saves those files to variables that can be saved as CSV that will be uploaded to S3 manually
Future changes:
- we will make more of the ETL script into functions
- automate the upload of csv files to S3

Redshift:
- Copies data from S3 into redshift
