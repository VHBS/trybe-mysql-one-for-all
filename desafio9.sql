SELECT
	COUNT(u.usuario) AS quantidade_musicas_no_historico
    FROM SpotifyClone.usuarios AS u
    JOIN SpotifyClone.historicos_de_reproducoes AS h
    ON u.usuario_id = h.usuario_id
WHERE usuario = 'Bill';