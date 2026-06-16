-- Criação da tabela de usuários da plataforma (Clientes e Donos de Bazar)
CREATE TABLE IF NOT EXISTS usuarios (
id_usuario SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE NOT NULL,
senha_hash VARCHAR(255) NOT NULL,
biografia TEXT,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_usuarios_email ON usuarios(email);