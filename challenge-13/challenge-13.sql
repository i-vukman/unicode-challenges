/* Using the following query, find supported full text search language configurations */
SELECT cfgname FROM pg_ts_config;

/* For the following queries, use english language configuration */

/* Using to_tsvector(), to_tsquery() and @@ match operator, prove that 'fat cats ate fat rats' and 'fat & rat' match */

/* Using phrase_totsquery(), generate a query for 'the cats ate the rats' */

/* Using plainto_tsquery(), generate a query for  'the cats ate the rats' */

/* Using to_tsvector(), generate a tsvector for 'a fat  cat sat on a mat - it ate a fat rats' */

/* Create and populate table using the following queries */

CREATE TABLE text_search(title text, textsearch tsvector GENERATED ALWAYS AS (to_tsvector('english', title)) STORED);
INSERT INTO text_search("title")
VALUES 
	('Neutrinos in the Sun'), 
	('The Sudbury Neutrino Detector'),
	('A MACHO View of Galactic Dark Matter'),
	('Hot Gas and Dark Matter'),
	('The Virgo Cluster: Hot Plasma and Dark Matter'),
	('Rafting for Solar Neutrinos'),
	('NGC 4650A: Strange Galaxy and Dark Matter');

/* Complete the missing parts of the following query so that you find documents having either 'strange' or both 'dark' and 'matter' words */

SELECT title, ts_rank_cd(textsearch, query) AS rank
FROM text_search, to_tsquery('english',/*TODO*/) query
WHERE query @@ textsearch
ORDER BY rank DESC
LIMIT 10;