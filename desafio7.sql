SELECT
	artista,
    al.album,
    COUNT(s.artista_id) AS seguidores
    FROM SpotifyClone.artistas AS art
		JOIN SpotifyClone.albums AS al
		ON art.artista_id = al.artista_id
        JOIN SpotifyClone.seguindo_artistas AS s
        ON art.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;