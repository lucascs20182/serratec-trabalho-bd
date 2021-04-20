-- verifica a quantidade em estoque do produto
SELECT codigo, nome, quantidade_em_estoque
FROM produto
WHERE codigo = 72364;

-- atualiza a quantidade para menos 5 produtos em estoque
UPDATE produto 
SET quantidade_em_estoque = quantidade_em_estoque - 5
WHERE codigo = 72364;

SELECT * FROM produto;
