-- Tabela: usuario
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela: plano
CREATE TABLE plano (
    id_plano SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor_mensal NUMERIC(10,2) NOT NULL,
    descricao TEXT
);

-- Tabela: recurso
CREATE TABLE recurso (
    id_recurso SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela: plano_recurso (Relacionamento N:N)
CREATE TABLE plano_recurso (
    id_plano INT NOT NULL,
    id_recurso INT NOT NULL,
    PRIMARY KEY (id_plano, id_recurso),
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano),
    FOREIGN KEY (id_recurso) REFERENCES recurso(id_recurso)
);

-- Tabela: assinatura
CREATE TABLE assinatura (
    id_assinatura SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_plano INT NOT NULL,
    data_inicio DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

--Tabela: pagamento
CREATE TABLE pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_assinatura INT NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    data_pagamento DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_assinatura) REFERENCES assinatura(id_assinatura)
);
