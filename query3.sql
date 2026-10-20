-- Jumlah Genre di setiap direktor

SELECT concat(directors.first_name, ' ', directors.last_name) as director, COUNT(movies_genres.genre) as genre_count
FROM directors
    JOIN movies_directors
        ON directors.id = movies_directors.director_id
    JOIN movies_genres
        ON movies_directors.movie_id = movies_genres.movie_id
    GROUP BY directors.id;


-- Mendapatkan actor dengan role lebih dari 5

-- SELECT concat(actors.first_name , ' ' , actors.last_name) as full_name,  COUNT(roles.role) AS role_count
-- FROM actors
--     JOIN roles ON actors.id = roles.actor_id
--     GROUP BY actors.first_name, actors.last_name
--     HAVING COUNT(roles.role) > 5;


-- Mendapatkan directors paling produktif sepanjang masa

-- SELECT directors.id, directors.first_name, directors.last_name, COUNT(movies.name) as movies_count
-- FROM directors
--     JOIN movies_directors ON directors.id = movies_directors.director_id
--     JOIN movies ON movies.id = movies_directors.movie_id
--     GROUP BY directors.id, directors.first_name, directors.last_name
--     ORDER BY movies_count DESC
--     LIMIT 1

-- Mendapat Tahun paling produktif

-- SELECT year, COUNT(year) as jumlah
-- FROM movies
-- GROUP BY year
-- ORDER BY jumlah DESC
-- LIMIT 1


-- SELECT movies.name, STRING_AGG(movies_genres.genre, ', ') as genres
-- FROM movies
--     JOIN movies_genres ON movies.id = movies_genres.movie_id
-- GROUP BY movies.name
