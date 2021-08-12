SELECT * FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > 0.99;

SELECT invoice_date, first_name, last_name, total FROM invoice
JOIN customer
ON invoice.customer_id = customer.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer AS c
JOIN employee AS e
ON c.support_rep_id = e.employee_id;

SELECT title, name FROM album
JOIN artist
ON album.artist_id = artist.artist_id;

SELECT playlist_track_id, track_id FROM playlist_track
JOIN playlist
ON playlist_track.playlist_id = playlist.playlist_id
WHERE name = 'Music';

SELECT name FROM track
JOIN playlist_track 
ON track.track_id = playlist_track.track_id;

SELECT t.name Track, p.name Playlist FROM playlist p
JOIN playlist_track pt
ON p.playlist_id = pt.playlist_id
JOIN track t
ON pt.track_id = t.track_id;

SELECT t.name Track, a.track Album FROM track t
JOIN album a
ON t.album_id = a.album_id;

SELECT t.name Track, a.title Album FROM track t
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
