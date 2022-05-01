--* Requisito: Exiba duas colunas nome_musica contendo o atual nome da musica e novo_nome onde novo_nome será a troca de palavras, Trocar a palavra "Streets" no final do nome de uma música por "Code Review", Trocar a palavra "Her Own" no final do nome de uma música por "Trybe", Trocar a palavra "Inner Fire" no final do nome de uma música por "Project", Trocar a palavra "Silly" no final do nome de uma música por "Nice", Trocar a palavra "Circus" no final do nome de uma música por "Pull Request".

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
