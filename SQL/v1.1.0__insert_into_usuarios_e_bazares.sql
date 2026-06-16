-- Inserindo Usuários Base
INSERT INTO usuarios (nome, email, senha_hash, biografia) VALUES
('Wenceslau Ruiz', 'wenceslau@email.com', '$2b$12$KjDFH83j...', 'Desenvolvedor e
entusiasta de moda vintage.'),
('Mariana Silva', 'mariana.bazar@email.com', '$2b$12$P9fG32ks...', 'Dona do Brechó
RetroGlow.'),
('Carlos Oliveira', 'carlos.cliente@email.com', '$2b$12$L92jFskw...', 'Procurando jaquetas
jeans exclusivas.');
-- Criando os Perfis de Bazar correspondentes
INSERT INTO bazares (id_usuario_dono, nome_bazar, username_bazar, descricao) VALUES
(1, 'Ultra Traje Custom', 'ultra_traje_vigor', 'O bazar oficial da curadoria de peças
urbanas e customizadas.'),
(2, 'RetroGlow Brechó', 'retroglow_bazar', 'Peças vintage dos anos 80, 90 e 2000
selecionadas a dedo.');