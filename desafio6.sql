SELECT
  ROUND(MIN(planos.preco_plano), 3) AS faturamento_minimo,
  ROUND(MAX(planos.preco_plano), 2) AS faturamento_maximo,
  ROUND(AVG(planos.preco_plano), 2) AS faturamento_medio,
  ROUND(SUM(planos.preco_plano), 2) AS faturamento_total

FROM SpotifyClone.planos
  JOIN SpotifyClone.usuarios
    ON planos.id = usuarios.plano_id;

