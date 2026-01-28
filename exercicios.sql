--Práticas de Consultas SQL: Plataforma SaaS


--Questão 01: Na tabela usuario, consulte todas as colunas, mas apenas para a linha onde o nome seja 'Carla Souza'.

SELECT * FROM usuario 
WHERE nome = 'Carla Souza';

--Questão 02: Escreva uma query que retorne todas as colunas da tabela assinatura onde o status seja 'ATIVA' e o id_plano seja igual a 4.

SELECT * FROM assinatura 
WHERE status = 'ATIVA' AND id_plano = 4;

--Questão 03: Consulta que retorne os planos que tenham o valor_mensal igual a 0.00 (plano free) ou que tenham igual a 49.90 (plano starter).

SELECT * FROM plano
WHERE valor_mensal = 0.00 OR valor_mensal = 49.90;

--Questão 04: Conte quantas assinaturas distintas existem na tabela.

SELECT COUNT(*) FROM assinatura;

--Questão 05: Selecione todas as colunas de pagamento onde o valor seja maior que 100 ou status seja igual a 'ESTORNADO'.

SELECT * FROM pagamento 
WHERE valor > 100 OR status = 'ESTORNADO';

--Questão 06: Escreva uma consulta que mostre o nome do usuario e o status da assinatura dele.

SELECT u.nome, a.status
FROM usuario u
INNER JOIN assinatura a ON u.id_usuario = a.id_usuario;

--Questão 07: É preciso de um relatório que mostre a data de inicio da assinatura e o nome do plano que foi escolhido.

SELECT a.data_inicio, p.nome
FROM assinatura a
INNER JOIN plano p ON a.id_plano = p.id_plano;

--Questão 08: Conectar a tabela pagamento com assinatura.

SELECT *
FROM pagamento pg
INNER JOIN assinatura a ON pg.id_assinatura = a.id_assinatura;

--Questão 09: Quais são os nomes dos recursos que estão incluidos no plano de id numero 4 (enterprise)?

SELECT r.nome
FROM recurso r
INNER JOIN plano_recurso pr ON r.id_recurso = pr.id_recurso
WHERE pr.id_plano = 4;
