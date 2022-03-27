SELECT 
  nome_musica,
  REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(
          REPLACE(nome_musica,
    'Streets', 'Code Review'),
      'Her Own', 'Trybe'),
        'Inner Fire', 'Project'),
          'Silly', 'Nice'),
            'Circus', 'Pull Request') AS novo_nome
FROM
    SpotifyClone.musicas
WHERE
    nome_musica 
      LIKE'%Streets%' OR
    nome_musica 
      LIKE'%Her Own%' OR
    nome_musica  
      LIKE'%Inner Fire%' OR
    nome_musica
      LIKE'%Silly%' OR
    nome_musica
      LIKE'%Circus%'
ORDER BY nome_musica;
