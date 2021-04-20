CREATE TABLE Cliente (
	codigo INTEGER NOT NULL PRIMARY KEY,
	nome_completo VARCHAR(100),
	nome_usuario VARCHAR(100),
	cpf CHAR(11),
	data_nascimento DATE,
	email VARCHAR(100),
	endereco VARCHAR(200)
);

CREATE TABLE Pedido (
	codigo INTEGER NOT NULL PRIMARY KEY,
	codigo_cliente INTEGER REFERENCES Cliente (codigo),
	data_em_que_foi_realizado DATE
);

CREATE TABLE Funcionario (
	codigo INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(100),
	cpf CHAR(11)
);

CREATE TABLE Categoria (
	codigo INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(100),
	descricao VARCHAR(255)
);

CREATE TABLE Produto (
	codigo INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(100),
	valor_unitario FLOAT, 
	descricao VARCHAR(255),
	data_fabricacao DATE,
	quantidade_em_estoque INTEGER,
	codigo_do_funcionario_que_cadastrou INTEGER REFERENCES Funcionario (codigo),
	codigo_categoria INTEGER REFERENCES Categoria (codigo)
);

CREATE TABLE Item_Pedido (
	codigo INTEGER NOT NULL PRIMARY KEY,
	codigo_pedido INTEGER REFERENCES Pedido (codigo), 
	codigo_produto INTEGER REFERENCES Produto (codigo)
);
