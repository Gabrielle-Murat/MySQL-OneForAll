SELECT
	MIN(sub.subscription_value) AS 'faturamento_minimo',
  MAX(sub.subscription_value) AS 'faturamento_maximo',
  ROUND(SUM(sub.subscription_value) / 10, 2) AS 'faturamento_medio',
  ROUND(SUM(sub.subscription_value), 2) AS 'faturamento_total'
FROM
	SpotifyClone.Subscriptions AS sub
INNER JOIN
	SpotifyClone.Users AS usr
ON
	usr.subscription_id = sub.subscription_id;