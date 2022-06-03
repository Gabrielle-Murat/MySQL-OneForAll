SELECT
	art.artist_name AS 'artista',
  alb.album_title AS 'album'
FROM
	SpotifyClone.Artists AS art
INNER JOIN
	SpotifyClone.Albums AS alb
ON
	art.artist_id = alb.artist_id
WHERE
	art.artist_name = 'Walter Phoenix'
ORDER BY
	album ASC;