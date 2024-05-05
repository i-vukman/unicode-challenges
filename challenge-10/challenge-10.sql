/* Create two nondeterministic level-1 icu collations, da and und */

/* 1. Using da collation, check that "AA" matches "å"*/

SELECT 'AA' = 'å';

/* 2. Using und collation, check that Č matches c and ć */

SELECT 'Č' = 'c';
SELECT 'Č' = 'ć';