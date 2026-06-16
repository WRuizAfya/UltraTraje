-- Cadastrando Produtos no Estoque dos Bazares
INSERT INTO produtos (id_bazar, titulo, descricao, preco, tamanho, condicao, marca,
status_disponibilidade) VALUES
(1, 'Jaqueta Jeans Custom Over', 'Jaqueta jeans oversized com patches de bandas.', 189.90,
'G', 'Seminovo', 'Custom', 'disponivel'),
(1, 'Calça Cargo Camuflada', 'Calça cargo com múltiplos bolsos reforçados.', 120.00, '42',
'Novo', 'StreetWear', 'disponivel'),
(2, 'Blazer Vintage Linho 1992', 'Blazer de linho legítimo de época, conservação
impecável.', 245.00, 'M', 'Gentilmente Usado', 'Cori', 'disponivel');
-- Publicando os Itens no Feed do Instagram-like
INSERT INTO posts (id_bazar, id_produto, legenda, url_imagem_principal, curtidas_qtd)
VALUES
(1, 1, 'Aquela jaqueta única que seu guarda-roupa precisa! Totalmente customizada. 🧥✨
#streetwear', 'images/posts/jaqueta_custom_1.jpg', 42),
(2, 3, 'Elegância atemporal! Blazer de linho original de 1992. Caimento perfeito. ',
'images/posts/blazer_vintage_3.jpg', 128);