/* Using following queries, prove that Postgres uses lower() for ILIKE 
   and then use tr collation for both ILIKE queries to prove they are language sensitive */

SELECT UPPER('ı');
SELECT LOWER('İ');

SELECT 'ı' ILIKE 'I';
SELECT 'İ' ILIKE 'i';