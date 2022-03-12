SELECT
    usuarios.nome_usuario AS 'usuario',
    IF(
      YEAR(
        MAX(historico_reproducoes.historico_reproducao)) = 
        2021,
        'Usuário ativo',
        'Usuário inativo'
      ) 
      AS condicao_usuario
FROM SpotifyClone.usuarios
  JOIN SpotifyClone.historico_reproducoes
    ON historico_reproducoes.usuario_id = usuarios.id
GROUP BY usuarios.nome_usuario
ORDER BY usuarios.nome_usuario;
