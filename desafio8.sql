SELECT
	artista AS artista,
    al.album AS album
    FROM SpotifyClone.artistas AS art
    JOIN SpotifyClone.albums AS al
    ON  art.artista_id = al.artista_id
WHERE artista = 'Walter Phoenix'
ORDER BY album