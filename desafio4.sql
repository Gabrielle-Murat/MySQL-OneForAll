SELECT
  DISTINCT usr.user_name AS 'usuario',
	CASE
		WHEN MAX(rep.reproduction_datetime) LIKE '2021%' THEN 'Usuário ativo'
		ELSE 'Usuário inativo'
	END AS 'condicao_usuario'
FROM
	SpotifyClone.Users AS usr
INNER JOIN
	SpotifyClone.Reproduction_Histories AS rep
ON
	usr.user_id = rep.user_id
GROUP BY
	usr.user_name
ORDER BY
	usr.user_name ASC;