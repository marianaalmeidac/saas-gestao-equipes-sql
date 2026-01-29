-- =====================================================
-- Exercícios Avançados com INNER JOIN
-- Projeto: Plataforma SaaS - Gestão de Equipes Remotas
-- =====================================================


-- Questão 01: Mapeamento de Recursos por Usuário
-- Pergunta: Quais recursos a usuária 'Ana Silva' possui em seu plano?

SELECT r.nome
FROM usuario u
INNER JOIN assinatura a 
    ON u.id_usuario = a.id_usuario
INNER JOIN plano p 
    ON a.id_plano = p.id_plano
INNER JOIN plano_recurso pr 
    ON p.id_plano = pr.id_plano
INNER JOIN recurso r 
    ON pr.id_recurso = r.id_recurso
WHERE u.nome = 'Ana Silva';


-- -----------------------------------------------------


-- Questão 02: Usuários por Recurso
-- Pergunta: Quais usuários possuem o recurso 'Relatórios' em seus planos?

SELECT u.nome
FROM recurso r
INNER JOIN plano_recurso pr 
    ON r.id_recurso = pr.id_recurso
INNER JOIN plano p 
    ON pr.id_plano = p.id_plano
INNER JOIN assinatura a 
    ON p.id_plano = a.id_plano
INNER JOIN usuario u 
    ON a.id_usuario = u.id_usuario
WHERE r.nome = 'Relatórios';


-- -----------------------------------------------------


-- Questão 03: Relatório de Faturamento Consolidado
-- Pergunta: Quais usuários realizaram pagamentos com status 'PAGO'?

SELECT 
    u.nome,
    p.valor_mensal,
    pag.data_pagamento,
    pag.status
FROM usuario u
INNER JOIN assinatura a 
    ON u.id_usuario = a.id_usuario
INNER JOIN plano p 
    ON a.id_plano = p.id_plano
INNER JOIN pagamento pag 
    ON a.id_assinatura = pag.id_assinatura
WHERE pag.status = 'PAGO';
