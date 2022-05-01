--* Requisito: Exiba duas colunas cancao contendo o nome da musica e reproducoes contanto quantas vezes a musica ja foi tocada em ordem decrescente

SELECT
	musicas.nome_musica AS cancao,
	COUNT(historico_reproducoes.musica_id) AS reproducoes
FROM SpotifyClone.musicas
  JOIN SpotifyClone.historico_reproducoes
    ON historico_reproducoes.musica_id = musicas.id
GROUP BY historico_reproducoes.musica_id
ORDER BY reproducoes DESC, 
        musicas.nome_musica ASC 
LIMIT 2;
