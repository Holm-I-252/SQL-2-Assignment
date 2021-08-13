SELECT COUNT(*), g.name FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name IN ('Pop', 'Rock')
GROUP BY g.name;

SELECT ar.name, COUNT(*) FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id
GROUP BY ar.name;