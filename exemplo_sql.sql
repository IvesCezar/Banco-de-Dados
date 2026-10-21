-- Cria o banco de dados
CREATE DATABASE loja;

-- Mostra todos os bancos do servidor
SHOW DATABASES;

-- Escolhe o banco que vamos usar 
USE loja;

CREATE TABLE cliente(
id INT auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null
); 

CREATE TABLE produtos(
id int auto_increment primary key,
nome varchar (100) not null,
preco decimal(5,2) not null
);



-- Cria o banco de dados
CREATE DATABASE loja;

-- Mostra todos os bancos do servidor
SHOW DATABASES;

-- Escolhe o banco que vamos usar 
USE loja;

CREATE TABLE cliente(
id INT auto_increment primary key,
nome varchar(100) not null,
email varchar(100) not null
); 

CREATE TABLE pedido(
id int auto_increment primary key,
data_pedido date  not null,
cliente_id int not null,
produto_id INT not null,
FOREIGN key (cliente_id) REFERENCES cliente(id),
FOREIGN key (produto_id) REFERENCES produtos(id)
);

-- Acrescenta colunas em tabelas existentes
ALTER TABLE cliente ADD telefone varchar(20);

-- Alterar o nome de uma coluna que esta incorreta
ALTER TABLE cliente CHANGE telefone celulares varchar(20);

select * from cliente;
-- Aumenta ou diminui o tipo de dados colocado anteriormente
ALTER TABLE cliente MODIFY celulares VARCHAR(15) NOT NULL;

-- Remove a coluna celulares
ALTER TABLE cliente DROP COLUMN celulares;

-- Apaga a tabela
DROP TABLE pedido;

-- Apaga o banco de dados
DROP DATABASE loja;
