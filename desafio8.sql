SELECT a.artista AS artista, AB.album AS album
FROM SpotifyClone.artistas AS a
LEFT JOIN SpotifyClone.albuns AS AB
ON AB.artista_id = a.artista_id
WHERE a.artista = 'Walter Phoenix'
ORDER BY album ASC;