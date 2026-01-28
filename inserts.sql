-- Insert - usuario:
INSERT INTO usuario (nome, email) VALUES
('Ana Silva', 'ana.silva@email.com'),
('Bruno Costa', 'bruno.costa@email.com'),
('Carla Souza', 'carla.souza@email.com'),
('Diego Lima', 'diego.lima@email.com'),
('Elisa Rocha', 'elisa.rocha@email.com'),
('Fernando Alves', 'fernando.alves@email.com'),
('Mariana Santos', 'mariana.santos@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com');

-- Insert - plano:
INSERT INTO plano (nome, valor_mensal, descricao) VALUES
('Free', 0.00, 'Plano gratuito com recursos básicos'),
('Starter', 49.90, 'Plano para pequenas equipes'),
('Pro', 99.90, 'Plano profissional com recursos avançados'),
('Enterprise', 199.90, 'Plano corporativo completo');

-- Insert - recurso:
INSERT INTO recurso (nome, descricao) VALUES
('Dashboard', 'Visão geral de produtividade'),
('Relatórios', 'Relatórios avançados de desempenho'),
('Gestão de Tarefas', 'Criação e acompanhamento de tarefas'),
('Integrações', 'Integração com outras ferramentas'),
('Suporte Premium', 'Atendimento prioritário');

-- Insert - plano_recurso:
-- plano FREE:
INSERT INTO plano_recurso VALUES (1, 1), (1, 3);

-- plano STARTER:
INSERT INTO plano_recurso VALUES (2, 1), (2, 2), (2, 3);

-- plano PRO:
INSERT INTO plano_recurso VALUES (3, 1), (3, 2), (3, 3), (3, 4);

-- plano ENTERPRISE:
INSERT INTO plano_recurso VALUES (4, 1), (4, 2), (4, 3), (4, 4), (4, 5);

-- Isert - assinatura:
INSERT INTO assinatura (id_usuario, id_plano, data_inicio, status) VALUES
(1, 3, '2025-01-10', 'ATIVA'),
(2, 2, '2025-01-15', 'ATIVA'),
(3, 4, '2025-01-05', 'ATIVA'),
(4, 1, '2025-01-20', 'ATIVA'),
(5, 3, '2025-01-12', 'CANCELADA'),
(6, 2, '2025-01-18', 'ATIVA'),
(7, 4, '2025-01-01', 'ATIVA'),
(8, 1, '2025-01-22', 'ATIVA');


-- Insert - pagamento:
INSERT INTO pagamento (id_assinatura, valor, data_pagamento, status) VALUES
(1, 99.90, '2025-01-10', 'PAGO'),
(1, 99.90, '2025-02-10', 'PAGO'),
(2, 49.90, '2025-01-15', 'PAGO'),
(3, 199.90, '2025-01-05', 'PAGO'),
(5, 99.90, '2025-01-12', 'ESTORNADO'),
(6, 49.90, '2025-01-18', 'PAGO'),
(7, 199.90, '2025-01-01', 'PAGO');
