-- 1. Simulação de Reserva/Venda de Produto (DML Update)
-- Quando um cliente faz um pedido, o status do produto muda e o post reflete ou o pedido
é gerado
INSERT INTO pedidos (id_cliente, id_produto, valor_total, status_pedido)
VALUES (3, 1, 189.90, 'pago');
UPDATE produtos
SET status_disponibilidade = 'vendido'
WHERE id_produto = 1;
-- 2. Atualização de Engajamento do Feed (Aumento de curtidas)
UPDATE posts
SET curtidas_qtd = curtidas_qtd + 1
WHERE id_post = 1;
-- 3. Exclusão Lógica ou Limpeza de Testes (DML Delete)
-- Deletando um pedido cancelado para testar restrições
INSERT INTO pedidos (id_cliente, id_produto, valor_total, status_pedido)
VALUES (3, 2, 120.00, 'cancelado');
DELETE FROM pedidos
WHERE status_pedido = 'cancelado' AND id_cliente = 3;