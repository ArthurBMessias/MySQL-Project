SELECT a.artista, AB.album, COUNT(ATS.artista_id) AS seguidores
FROM SpotifyClone.artistas as a
LEFT JOIN SpotifyClone.albuns AS AB
ON a.artista_id = AB.artista_id
INNER JOIN SpotifyClone.artistas_seguidos AS ATS
ON a.artista_id = ATS.artista_id
GROUP BY a.artista, AB.album
ORDER BY seguidores DESC, a.artista, AB.album;