SELECT
	art.artist_name AS 'artista',
  alb.album_title AS 'album',
  COUNT(fol.user_id) AS 'seguidores'
FROM
	SpotifyClone.Artists AS art
INNER JOIN
	SpotifyClone.Albums AS alb
ON
	art.artist_id = alb.artist_id
INNER JOIN
	SpotifyClone.Following AS fol
ON
	fol.artist_id = art.artist_id
GROUP BY
	art.artist_name, alb.album_title
ORDER BY
	seguidores DESC,
  artista ASC,
  album ASC;