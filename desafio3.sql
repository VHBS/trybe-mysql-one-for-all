SELECT 
	u.usuario AS usuario, 
	COUNT(c.cancao) AS qtde_musicas_ouvidas,
  ROUND(SUM(duracao_segundos/ 60), 2) AS total_minutos
  FROM SpotifyClone.usuarios AS u 
    JOIN SpotifyClone.historicos_de_reproducoes AS h
    ON u.usuario_id = h.usuario_id
    JOIN SpotifyClone.cancoes AS c
    ON h.cancao_id = c.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;