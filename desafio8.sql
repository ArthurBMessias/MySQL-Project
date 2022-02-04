SELECT a.artista, AB.album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS AB
WHERE a.artista LIKE 'Walter Phoenix'
ORDER BY a.artista
LIMIT 2;