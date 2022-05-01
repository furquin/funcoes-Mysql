--* Requisito: Exiba tres colunas, cancoes contendo a quantidade de musicas, artistas contendo a quantidade de artistas e albuns contendo a quantidade de albuns

SELECT
  (SELECT COUNT(*) FROM SpotifyClone.musicas) AS 'cancoes',
  (SELECT COUNT(*) FROM SpotifyClone.artistas) AS 'artistas',
  (SELECT COUNT(*) FROM SpotifyClone.albuns) AS 'albuns'
