SELECT
	son.song_title AS 'nome',
  COUNT(DISTINCT rep.user_id) AS 'reproducoes'
FROM
	SpotifyClone.Songs AS son
INNER JOIN
	SpotifyClone.Reproduction_Histories AS rep
ON
	rep.song_id = son.song_id
INNER JOIN
	SpotifyClone.Users AS usr
ON
	rep.user_id = usr.user_id
INNER JOIN
	SpotifyClone.Subscriptions AS sub
ON
	usr.subscription_id = sub.subscription_id
WHERE
	sub.subscription_name IN ('gratuito', 'pessoal')
GROUP BY
	son.song_title
ORDER BY
	nome ASC;