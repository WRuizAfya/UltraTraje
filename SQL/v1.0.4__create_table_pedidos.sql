-- Criação da tabela transacional de checkout e pedidos
CREATE TABLE IF NOT EXISTS pedidos (
id_pedido SERIAL PRIMARY KEY,
id_cliente INTEGER NOT NULL,
id_produto INTEGER NOT NULL,
valor_total NUMERIC(10,2) NOT NULL,
status_pedido VARCHAR(30) DEFAULT 'pendente' NOT NULL,
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente)
REFERENCES usuarios(id_usuario),
CONSTRAINT fk_pedido_produto FOREIGN KEY (id_produto)
REFERENCES produtos(id_produto),
CONSTRAINT chk_status_pedido CHECK (status_pedido IN ('pendente', 'pago', 'enviado',
'entregue', 'cancelado'))
);