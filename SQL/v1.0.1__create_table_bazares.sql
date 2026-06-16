-- Criação da tabela de perfis de Bazares/Brechós parceiros
CREATE TABLE IF NOT EXISTS bazares (
id_bazar SERIAL PRIMARY KEY,
id_usuario_dono INTEGER NOT NULL UNIQUE,
nome_bazar VARCHAR(100) UNIQUE NOT NULL,
username_bazar VARCHAR(50) UNIQUE NOT NULL, -- Ex: @retro_traje
descricao TEXT,
reputacao_media NUMERIC(3,2) DEFAULT 5.00,
data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
CONSTRAINT fk_bazar_usuario FOREIGN KEY (id_usuario_dono)
REFERENCES usuarios(id_usuario) ON DELETE CASCADE
);
CREATE INDEX IF NOT EXISTS idx_bazares_username ON bazares(username_bazar);