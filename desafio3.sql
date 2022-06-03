SELECT
  usr.user_name AS 'usuario',
  COUNT(rep.song_id) AS 'qtde_musicas_ouvidas',
  ROUND(SUM(son.song_length_seconds) / 60, 2) AS 'total_minutos'

FROM
  SpotifyClone.Users AS usr
INNER JOIN
  SpotifyClone.Reproduction_Histories AS rep
ON
  usr.user_id = rep.user_id
INNER JOIN
  SpotifyClone.Songs AS son
ON
  rep.song_id = son.song_id
GROUP BY
  usr.user_name
ORDER BY
  usr.user_name ASC;