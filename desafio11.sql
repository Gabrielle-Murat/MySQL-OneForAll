-- conceito de subqueries:
-- fiz primeiro o Select da linha 7, e trabalhei todos as exigencias relacionadas aos nomes das musicas
-- ao fim disso, as musicas que não sofreram modificações ficaram com o valor null na coluna 'novo_nome'
-- assim, fiz um segundo Select (linha 6) que abrangia todo o resultado do primeiro Select,
-- para somente então poder filtrar o resultado (linha 19) e ordená-lo (linha 21).
SELECT * FROM
(SELECT
	son.song_title AS 'nome_musica',
	CASE
		WHEN son.song_title LIKE '%Streets%' THEN REPLACE(son.song_title, 'Streets', 'Code Review')
    WHEN son.song_title LIKE '%Her Own%' THEN REPLACE(son.song_title, 'Her Own', 'Trybe')
    WHEN son.song_title LIKE '%Inner Fire%' THEN REPLACE(son.song_title, 'Inner Fire', 'Project')
    WHEN son.song_title LIKE '%Silly%' THEN REPLACE(son.song_title, 'Silly', 'Nice')
    WHEN son.song_title LIKE '%Circus%' THEN REPLACE(son.song_title, 'Circus', 'Pull Request')
	END AS 'novo_nome'
FROM
	SpotifyClone.Songs AS son)
AS `data`
WHERE
	`data`.`novo_nome` IS NOT NULL
ORDER BY
	`data`.`nome_musica`;