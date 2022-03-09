SELECT 
	c.cancao AS nome,
    COUNT(h.cancao_id) AS reproducoes
    FROM SpotifyClone.historicos_de_reproducoes AS h
    JOIN SpotifyClone.cancoes AS c
    ON h.cancao_id = c.cancao_id
    JOIN SpotifyClone.usuarios AS u
    ON u.usuario_id = h.usuario_id
    WHERE u.plano_id = 1 OR u.plano_id = 3
GROUP BY nome
ORDER BY nome;