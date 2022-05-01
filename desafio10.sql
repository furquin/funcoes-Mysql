--* Requisito: Exiba duas colunas nome contendo o nome da musica e reproducoes contendo a quantidade de vezes que usuarios reproduziram ela

SELECT 
  musicas.nome_musica  AS 'nome',
  COUNT(musicas.id) AS 'reproducoes'
FROM SpotifyClone.musicas
	JOIN SpotifyClone.historico_reproducoes
		ON historico_reproducoes.musica_id = musicas.id
	JOIN SpotifyClone.usuarios
		ON usuarios.id = historico_reproducoes.usuario_id
WHERE
  plano_id IN(1,3)
GROUP BY nome
ORDER BY nome;
