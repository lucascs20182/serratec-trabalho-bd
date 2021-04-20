INSERT INTO cliente(
	codigo, nome_completo, nome_usuario, cpf, data_nascimento, 
	email, endereco
)
VALUES 
	(12719, 'Adriana de Paiva', 'adrianapaiva', '12345678911', '26-06-2003', 'adriana@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la'),
	(12712, 'Caio Mendes', 'caiomendes', '12345678912', '05-03-2003', 'caio@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la'),
	(12713, 'Jose Milton Junior', 'josejunior', '12345678913', '15-07-2003', 'junior@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la'),
	(12714, 'Jéssica dos Santos', 'jessicasantos', '12345678914', '20-06-2003', 'jessica@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la'),
	(12715, 'Lucas da Silva Cruz', 'lucascruz', '12345678915', '29-09-2003', 'lucas@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la'),
	(12716, 'Matheus Bento da Cruz', 'matheuscruz', '12345678916', '01-04-2003', 'matheus@yahoo.com.br', 'Rua do São Jorge, no 345 - Sei la');


INSERT INTO pedido(
	codigo, codigo_cliente, data_em_que_foi_realizado)
VALUES
	(44430, 12719, current_date),
	(44431, 12712, current_date),
	(44432, 12713, current_date),
	(44433, 12714, current_date),
	(44434, 12715, current_date),
	(44435, 12716, current_date),
	(44436, 12719, current_date);


INSERT INTO funcionario(
	codigo, nome, cpf)
VALUES
	(28301, 'Neymar Junior da Silva', '12345678917'),
	(28302, 'Alexandre Magno Abrão', '12345678918'),
	(28303, 'Jorge Mário da Silva', '12345678919'),
	(28304, 'Renato Russo', '12345678921'),
	(28305, 'Agenor de Miranda Araújo Neto', '12345678922'),
	(28306, 'Cássia Rejane Eller', '12345678923');
	

INSERT INTO categoria(
	codigo, nome, descricao)
VALUES 
	(92381, 'Ação e Aventura', 'Gênero que combina elementos do gênero de jogo de aventura com vários elementos de jogos de ação'),
	(92382, 'Esportes', 'Gênero que simula esportes tradicionais'),
	(92383, 'Corrida', 'Gênero que simula corridas'),
	(92384, 'Terror', 'Gênero que está sempre muito ligado à fantasia e à ficção especulativa, e é criado com intuito de causar medo.'),
	(92385, 'Estratégia', 'Gênero que enfatiza habilidades de pensamento e planejamento para alcançar a vitória');
	
	
INSERT INTO produto(
	codigo, nome, valor_unitario, descricao, data_fabricacao, quantidade_em_estoque, codigo_do_funcionario_que_cadastrou, codigo_categoria)
VALUES 
	(72361, 'Need For Speed Underground 2', 131.1, 'Need for Speed Underground 2 é um jogo de corrida 3D que coloca você no eletrizante mundo dos rachas em uma cidade com mais de 200 Km de asfalto.', '09-11-2004', 14, 28303, 92383),
	(72362, 'God of War 1', 37.21, 'God of War é uma série de jogos eletrônicos de ação-aventura vagamente baseado nas mitologias grega e nórdica sendo criado originalmente por David Jaffe da Santa Monica Studio', '22-03-2005', 7, 28306, 92381),
	(72363, 'God of War 2', 41.39, 'God of War é uma série de jogos eletrônicos de ação-aventura vagamente baseado nas mitologias grega e nórdica sendo criado originalmente por David Jaffe da Santa Monica Studio', '13-03-2007', 6, 28304, 92381),
	(72364, 'Fifa 21', 200, 'FIFA 21 é um videogame de simulação de esportes desenvolvido e publicado pela Electronic Arts, tendo como estrela da capa o jogador Kylian Mbappé.', '05-10-2020', 40, 28301, 92382),
	(72365, 'Dying Light 1', 127.29, 'Dying Light é um jogo de ação e mundo aberto na primeira pessoa do gênero survival horror onde se retrata um apocalipse zumbi.', '26-01-2015', 27, 28301, 92384),
	(72366, 'Outlast', 36.99, 'Jogo de survival horror desenvolvido e publicado pela Red Barrels, uma empresa fundada por pessoas previamente envolvidas Prince of Persia, Assassin Creed etc.', '04-09-2013', 51, 28301, 92384);
	
	
INSERT INTO item_pedido(
	codigo, codigo_pedido, codigo_produto)
VALUES 
	(62361, 44430, 72361),
	(62362, 44430, 72362),
	(62363, 44431, 72363),
	(62364, 44434, 72364),
	(62365, 44432, 72364),
	(62366, 44433, 72364),
	(62367, 44434, 72364),
	(62368, 44436, 72362),
	(62369, 44435, 72366);

-- visualiza resultado
SELECT * FROM cliente;
SELECT * FROM pedido;
SELECT * FROM funcionario;
SELECT * FROM categoria;
SELECT * FROM produto;
SELECT * FROM item_pedido;
