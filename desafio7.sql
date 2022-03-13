SELECT
  artistas.nome_artista AS artista,
  albuns.nome_album AS album,
  COUNT(seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas
  JOIN SpotifyClone.albuns 
    ON albuns.artista_id = artistas.id
  JOIN SpotifyClone.seguidores
    ON seguidores.artista_id = albuns.artista_id
GROUP BY albuns.nome_album, artistas.nome_artista 
  HAVING 
    COUNT(seguidores.artista_id) > 1
ORDER BY 
  seguidores DESC, 
  artista,
  album;
