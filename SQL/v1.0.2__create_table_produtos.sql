-- Criação da tabela de itens de vestuário (estoque dos bazares)
CREATE TABLE IF NOT EXISTS produtos (
id_produto SERIAL PRIMARY KEY,
id_bazar INTEGER NOT NULL,
titulo VARCHAR(150) NOT NULL,
descricao TEXT,
preco NUMERIC(10,2) NOT NULL CONSTRAINT chk_preco_positivo CHECK (preco >= 0),
tamanho VARCHAR(10) NOT NULL, -- P, M, G, GG, 38, 40 etc.
condicao VARCHAR(50) NOT NULL, -- Novo, Seminovo, Gentilmente Usado
marca VARCHAR(100),
status_disponibilidade VARCHAR(20) DEFAULT 'disponivel' NOT NULL,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
CONSTRAINT fk_produto_bazar FOREIGN KEY (id_bazar)
REFERENCES bazares(id_bazar) ON DELETE CASCADE,
CONSTRAINT chk_status CHECK (status_disponibilidade IN ('disponivel', 'reservado',
'vendido'))
);