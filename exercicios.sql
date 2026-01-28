 -- Questão 01: Localização de Cadastro
SELECT * FROM usuario
WHERE nome = 'Carla Souza';


-- Questão 02: Análise de Precificação
SELECT nome, valor_mensal 
FROM plano 
WHERE valor_mensal >= 1.00 AND valor_mensal <= 100.00;


-- Questão 03: Monitoramento de Transações
SELECT * FROM pagamento
WHERE status = 'ESTORNADO' OR status = 'PAGO';


-- Questão 04: Métrica de Crescimento
SELECT COUNT(*) AS total_usuarios FROM usuario;


-- Questão 05: Distribuição de Assinaturas
SELECT COUNT(DISTINCT id_plano) FROM assinatura;


-- Questão 06: Auditoria de Receita
SELECT COUNT(*) FROM pagamento WHERE valor = 99.90;


-- Questão 07: Relatório de Status (JOIN)
SELECT u.nome, a.status
FROM usuario u
INNER JOIN assinatura a ON u.id_usuario = a.id_usuario;


-- Questão 08: Mapeamento de Plano por Usuário (JOIN)
SELECT u.email, p.nome AS nome_plano
FROM usuario u
INNER JOIN assinatura a ON u.id_usuario = a.id_usuario
INNER JOIN plano p ON a.id_plano = p.id_plano;


-- Questão 09: Extrato Consolidado (JOIN)
SELECT u.nome, pg.valor, pg.data_pagamento
FROM usuario u
INNER JOIN assinatura a ON u.id_usuario = a.id_usuario
INNER JOIN pagamento pg ON a.id_assinatura = pg.id_assinatura; 
