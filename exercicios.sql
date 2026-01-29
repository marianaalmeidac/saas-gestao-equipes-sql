-- =====================================================
-- Exercícios
-- Projeto: Plataforma SaaS - Gestão de Equipes Remotas
-- =====================================================


-- Questão 01: Localização de Cadastro
-- Pergunta: Quais são os dados da usuária chamada 'Carla Souza'?

SELECT * 
FROM usuario 
WHERE nome = 'Carla Souza';


-- -----------------------------------------------------


-- Questão 02: Filtragem de Assinaturas Ativas
-- Pergunta: Quais assinaturas estão ativas e pertencem ao plano de id 4?

SELECT * 
FROM assinatura 
WHERE status = 'ATIVA' AND id_plano = 4;


-- -----------------------------------------------------


-- Questão 03: Análise de Precificação
-- Pergunta: Quais planos possuem valor mensal igual a 0.00 ou 49.90?

SELECT * 
FROM plano
WHERE valor_mensal = 0.00 OR valor_mensal = 49.90;


-- -----------------------------------------------------


-- Questão 04: Contagem de Assinaturas
-- Pergunta: Quantas assinaturas existem no sistema?

SELECT COUNT(*) 
FROM assinatura;


-- -----------------------------------------------------


-- Questão 05: Monitoramento de Transações
-- Pergunta: Quais pagamentos possuem valor acima de 100 ou status igual a 'ESTORNADO'?

SELECT * 
FROM pagamento 
WHERE valor > 100 OR status = 'ESTORNADO';


-- -----------------------------------------------------


-- Questão 06: Relatório de Usuário e Assinatura
-- Pergunta: Qual o nome do usuário e o status da sua assinatura?

SELECT u.nome, a.status
FROM usuario u
INNER JOIN assinatura a 
    ON u.id_usuario = a.id_usuario;


-- -----------------------------------------------------


-- Questão 07: Relatório de Plano Contratado
-- Pergun
