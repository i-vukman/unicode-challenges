/* Create pg_trgm extension using the following query */

CREATE EXTENSION pg_trgm;

/* 1. Using show_trgm function, display trigrams of 'word' and 'two words' */

SELECT show_trgm(''), show_trgm('');

/* 2. Using similarity find the similarity of 'word' and 'two words' */

/* 2. Using word_similarity find the highest similarity of 'word' to any substring in 'two words' */

/* 3. Using strict_word_similarity find the similarity of 'word' to any whole word in 'two words' */
