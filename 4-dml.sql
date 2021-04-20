-- verifica a categoria a ser deletada
SELECT codigo, nome FROM categoria
WHERE codigo = 92385;

-- deleta categoria de Estratégia a partir do seu código
DELETE FROM categoria
WHERE codigo = 92385;

SELECT * FROM categoria;
