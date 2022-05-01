--* Requisito: Exiba duas colunas artistas contendo o nome do artista e album contendo nome do album onde o nome do artista seja Walter Phoenix

SELECT
  artistas.nome_artista AS artista,
  albuns.nome_album AS album
FROM SpotifyClone.artistas
  JOIN SpotifyClone.albuns
    ON albuns.artista_id = artistas.id
WHERE artistas.nome_artista = "Walter Phoenix" 
ORDER BY album;
