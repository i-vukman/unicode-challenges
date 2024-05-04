/* Using following query, check for available collations in your database */

SELECT * FROM pg_collation;

/* Adjust the following query to sort by German collation and then adjust it again to sort by Swedish collation */

SELECT letter FROM (values ('z'), ('ö')) 
AS l(letter);