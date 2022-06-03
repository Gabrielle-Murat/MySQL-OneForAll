SELECT
  COUNT(son.song_id) AS 'cancoes',
  COUNT(DISTINCT alb.album_id) AS 'albuns',
  COUNT(DISTINCT art.artist_id) AS 'artistas'

FROM
  SpotifyClone.Songs AS son
INNER JOIN
  SpotifyClone.Albums AS alb
ON
  son.album_id = alb.album_id
INNER JOIN
  SpotifyClone.Artists AS art
ON
  alb.artist_id = art.artist_id;