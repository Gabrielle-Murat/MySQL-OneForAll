SELECT
	COUNT(rep.song_id) AS 'quantidade_musicas_no_historico'
FROM
	SpotifyClone.Reproduction_Histories AS rep
INNER JOIN
	SpotifyClone.Users AS usr
ON
	rep.user_id = usr.user_id
WHERE
	usr.user_name = 'Bill';