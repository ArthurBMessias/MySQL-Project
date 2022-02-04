SELECT c.cancao AS nome_musica,
	CASE
		WHEN cancao LIKE '%Streets%' THEN REPLACE(cancao, 'Streets', 'Code Review')
        WHEN cancao LIKE '%Her Own%' THEN REPLACE(cancao, 'Her Own', 'Trybe')
        WHEN cancao LIKE '%Inner Fire%' THEN REPLACE(cancao, 'Inner Fire', 'Project')
        WHEN cancao LIKE '%Silly' THEN REPLACE(cancao, 'Silly', 'Nice')
        WHEN cancao LIKE '%Circus%' THEN REPLACE(cancao, 'Circus', 'Pull Request')
	END AS novo_nome
FROM SpotifyClone.cancoes AS c
WHERE cancao REGEXP 'Streets|Her Own|Inner Fire|Silly|Circus'
ORDER BY c.cancao;

-- Trocar a palavra "Streets" no final do nome de uma música por "Code Review"

-- Trocar a palavra "Her Own" no final do nome de uma música por "Trybe"

-- Trocar a palavra "Inner Fire" no final do nome de uma música por "Project"

-- Trocar a palavra "Silly" no final do nome de uma música por "Nice"

-- Trocar a palavra "Circus" no final do nome de uma música por "Pull Request"
-- https://dev.mysql.com/doc/refman/8.0/en/regexp.html REGEXP

