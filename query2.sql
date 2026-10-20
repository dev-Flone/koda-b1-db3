
-- Melakukan join directors dan genres ke table movies dengan limit = 50

-- SELECT movies.id, movies.name, movies_directors.director_id, movies_genres.genre, directors.first_name
-- FROM movies
-- JOIN movies_directors
--     ON movies.id = movies_directors.director_id
-- JOIN directors
--     ON movies_directors.director_id = directors.id
-- JOIN movies_genres
--     ON movies.id = movies_genres.movie_id
-- LIMIT 50

-- Melakukan join movies dan roles ke tabel actors

-- SELECT actors.id, actors.first_name, actors.last_name, roles.role, movies.name
-- FROM actors
-- JOIN roles
--     on actors.id = roles.actor_id
-- JOIN movies
--     ON actors.id = movies.id
