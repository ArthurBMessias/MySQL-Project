SELECT c.cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
LEFT JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao
LIMIT 2;