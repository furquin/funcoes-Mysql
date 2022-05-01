--* Requisito: Exiba tres colunas usuario contendo o nome do usuario, qtde_musicas_ouvidas contendo a quantidade de musicas ouvidas e total_minutos contendo o quantidade de minutos ouvidos em ordem alfabética

SELECT
  usuarios.nome_usuario AS usuario,
  COUNT(historico_reproducoes.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(musicas.tamanho_musica / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS usuarios
JOIN SpotifyClone.historico_reproducoes AS historico_reproducoes  
  ON usuarios.id = historico_reproducoes.usuario_id
JOIN SpotifyClone.musicas AS musicas 
  ON historico_reproducoes.musica_id = musicas.id
GROUP BY usuarios.nome_usuario 
ORDER BY usuarios.nome_usuario ;
