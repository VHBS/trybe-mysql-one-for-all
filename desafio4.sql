SELECT
	u.usuario AS usuario,
    IF(MAX(h.data_de_reproducao) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
		FROM SpotifyClone.usuarios AS u
		JOIN SpotifyClone.historicos_de_reproducoes AS h
        ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario;