-- descobrir o nome da categoria de um produto pelo código da categoria
SELECT
	produto.codigo AS codigo_do_jogo, produto.nome 
	AS nome_do_jogo, categoria.codigo AS codigo_da_categoria, 
	categoria.nome AS nome_da_categoria
FROM produto
INNER JOIN categoria ON produto.codigo_categoria = categoria.codigo
WHERE produto.codigo = 72366;

-- todos os produtos que o funcionário cadastrou
SELECT
	funcionario.nome AS nome_do_funcionario,
	produto.nome AS nome_do_jogo from Funcionario
INNER JOIN produto ON
funcionario.codigo = produto.codigo_do_funcionario_que_cadastrou
WHERE funcionario.codigo = 28301;

-- quais produtos um cliente comprou
SELECT cliente.nome_completo AS cliente, 
produto.nome AS jogo_comprado FROM cliente
INNER JOIN pedido ON
pedido.codigo_cliente = cliente.codigo
INNER JOIN item_pedido ON
item_pedido.codigo_pedido = pedido.codigo
INNER JOIN produto ON
produto.codigo = item_pedido.codigo_produto;

-- o cliente fez quantos pedidos de compra
SELECT cliente.nome_completo AS cliente, 
COUNT(pedido) FROM cliente
INNER JOIN pedido ON
pedido.codigo_cliente = cliente.codigo
GROUP BY cliente;

-- query da nota fiscal
SELECT cliente.nome_completo AS cliente,
cliente.cpf, cliente.endereco,
pedido.data_em_que_foi_realizado AS data_da_compra,
pedido.codigo AS codigo_do_pedido,
produto.nome AS nome_do_produto,
produto.codigo AS codigo_do_produto,
produto.valor_unitario,
COUNT(produto.codigo) as quantidade_comprada_do_item,
produto.valor_unitario * COUNT(produto.codigo)
AS preco_total
FROM cliente
INNER JOIN pedido ON
pedido.codigo_cliente = cliente.codigo
INNER JOIN item_pedido ON
item_pedido.codigo_pedido = pedido.codigo
INNER JOIN produto ON
produto.codigo = item_pedido.codigo_produto
GROUP BY 
	cliente.nome_completo, cliente.cpf,
	pedido.data_em_que_foi_realizado, pedido.codigo,
	produto.nome, produto.codigo, cliente.endereco, 
	produto.valor_unitario
HAVING
	pedido.codigo = 44430;
