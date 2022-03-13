SELECT
  artistas.nome_artista AS artista,
  albuns.nome_album AS album
FROM SpotifyClone.artistas
  JOIN SpotifyClone.albuns
    ON albuns.artista_id = artistas.id
WHERE artistas.nome_artista = "Walter Phoenix" 
ORDER BY album;
