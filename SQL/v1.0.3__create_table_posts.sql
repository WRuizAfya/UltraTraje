-- Criação da tabela de Publicações do Feed (Estilo Instagram)
CREATE TABLE IF NOT EXISTS posts (
id_post SERIAL PRIMARY KEY,
id_bazar INTEGER NOT NULL,
id_produto INTEGER NOT NULL UNIQUE, -- Cada post promove um produto exclusivo
legenda TEXT,
url_imagem_principal VARCHAR(255) NOT NULL,
curtidas_qtd INTEGER DEFAULT 0 NOT NULL CONSTRAINT chk_curtidas CHECK (curtidas_qtd >=
0),
data_publicacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
CONSTRAINT fk_post_bazar FOREIGN KEY (id_bazar)
REFERENCES bazares(id_bazar) ON DELETE CASCADE,
CONSTRAINT fk_post_produto FOREIGN KEY (id_produto)
REFERENCES produtos(id_produto) ON DELETE CASCADE
);