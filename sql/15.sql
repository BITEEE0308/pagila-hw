/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, COUNT(*) AS sum FROM category JOIN film_category USING (category_id) JOIN film USING (film_id) JOIN language USING (language_id) WHERE language_id = 1 GROUP BY category_id ORDER BY name;
