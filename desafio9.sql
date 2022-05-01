--* Requisito: Exiba uma coluna quantidade_musicas_no_historico contendo a quantidade atual de musicas no historico

SELECT
  COUNT(historico_reproducoes.usuario_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.historico_reproducoes
  JOIN SpotifyClone.usuarios
    ON usuarios.id = historico_reproducoes.usuario_id
WHERE usuarios.nome_usuario = 'bill';
