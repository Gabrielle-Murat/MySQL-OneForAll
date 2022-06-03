SELECT
	son.song_title AS 'cancao',
  COUNT(DISTINCT usr.user_id) AS 'reproducoes'
FROM
	SpotifyClone.Songs AS son
INNER JOIN
	SpotifyClone.Reproduction_Histories AS rep
ON
	son.song_id = rep.song_id
INNER JOIN
	SpotifyClone.Users AS usr
ON
	usr.user_id = rep.user_id
GROUP BY
	son.song_title
ORDER BY
	reproducoes DESC,
  cancao ASC
LIMIT 2;