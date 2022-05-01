--* Requisito: Exiba quatro colunas faturamento_minimo, faturamento_maximo, faturamento_medio e faturamento_total mostrando os dados  financeiros de acordo com o plano dos usuario

SELECT
  MIN(planos.preco_plano) AS faturamento_minimo,
  ROUND(MAX(planos.preco_plano), 2) AS faturamento_maximo,
  ROUND(AVG(planos.preco_plano), 2) AS faturamento_medio,
  ROUND(SUM(planos.preco_plano), 2) AS faturamento_total

FROM SpotifyClone.planos
  JOIN SpotifyClone.usuarios
    ON planos.id = usuarios.plano_id;

