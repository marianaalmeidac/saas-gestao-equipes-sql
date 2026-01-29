# SaaS – Gestão de Equipes Remotas (SQL)

Este repositório reúne meus estudos práticos em SQL utilizando PostgreSQL.
O foco é praticar consultas SQL, compreender relacionamentos entre tabelas e aplicar métricas de negócio em um cenário de Software as a Service (SaaS).

---

## Estrutura do Banco de Dados

- **SGBD:** PostgreSQL
- **Schema:** public
- **Tabelas:**
  - usuario
  - plano
  - recurso
  - assinatura
  - pagamento
  - plano_recurso

---

## Conteúdos Praticados

- Criação de tabelas e relacionamentos (PK / FK)
- Inserção de dados em massa
- Consultas com `SELECT`, `WHERE`, `AND` / `OR`
- Funções de agregação (`COUNT`, `COUNT(DISTINCT)`)
- `INNER JOIN` entre múltiplas tabelas
- Uso de aliases para organização das consultas

---

## Organização dos Arquivos

- `create_tables.sql` – criação das tabelas do sistema SaaS
- `inserts.sql` – inserção de dados para testes
- `exercicios.sql` – exercícios básicos de consultas SQL
- `exercicios_joins_avancados.sql` – consultas com INNER JOIN encadeado e análises mais complexas

---

## Exemplo de Consulta (JOIN entre três tabelas)

```sql
SELECT 
    u.nome, 
    pg.valor, 
    pg.data_pagamento
FROM usuario u
INNER JOIN assinatura a 
    ON u.id_usuario = a.id_usuario
INNER JOIN pagamento pg 
    ON a.id_assinatura = pg.id_assinatura;
