--comandos DDL;
create database livraria;

create table livro(
   livro_id serial,
   qtd_pag int,
   editora varchar(20),
   autor_id int,
   ano_lancamento char(4),
   genero varchar(20),
   
);

alter table livro add column titulo varchar(50);

create table cliente(
   cliente_id serial, 
   primeiro_nome varchar(30),
   ultimo_nome varchar(30),
   email varchar(50),
   telefone char(12),
   cpf char(11)
);

create table funcionario(
   funcionario_id serial, 
   cargo varchar(15),
   primeiro_nome varchar(30),
   ultimo_nome varchar(30),
   email varchar(50),
   telefone char(12),
   cpf char(11)
);

create table autor(
   autor_id serial,
   livro_id int
);
alter table autor add column nome varchar(40);

alter table livro add primary key (livro_id); 
alter table cliente add primary key (cliente_id); 
alter table funcionario add primary key (funcionario_id);
alter table autor add primary key (autor_id);

--drop table autor;


--Comandos DML;
insert into livro(qtd_pag, titulo, editora, autor_id, ano_lancamento, genero) values (320, 'A Hora da Estrela', 'Companhia das Letras', 1, '1977', 'Romance'), (180, 'Harry Potter e a Pedra Filosofal', 'Rocco', 2, '1997', 'Fantasia'), (250, 'It: A Coisa', 'Suma', 3, '1986', 'Terror');
insert into cliente(primeiro_nome, ultimo_nome, email, telefone, cpf) values ('Carlos', 'Silva', 'carlos.silva@email.com', '11987654321', '12345678901'), ('Mariana', 'Souza', 'mariana.souza@email.com', '21988884444', '23456789012'), ('Lucas', 'Oliveira', 'lucas.oliveira@email.com', '31997776666', '34567890123');
insert into funcionario(cargo, primeiro_nome, ultimo_nome, email, telefone, cpf) values ('Atendente', 'Paula', 'Fernandes', 'paula.fernandes@livraria.com', '11999887766', '45678901234'), ('Gerente', 'Rafael', 'Almeida', 'rafael.almeida@livraria.com', '21988776655', '56789012345'), ('Estoquista', 'Fernanda', 'Costa', 'fernanda.costa@livraria.com', '31997665544', '67890123456');
INSERT INTO autor (nome, livro_id) VALUES ('Clarice Lispector', 1), ('J.K. Rowling', 2), ('Stephen King', 3);

UPDATE autor SET nome = 'Stephen King' WHERE autor_id = 2;

DELETE FROM livro l WHERE l.titulo = 'Harry Potter e a Pedra Filosofal';
DELETE FROM cliente c WHERE c.primeiro_nome = 'Carlos';
DELETE FROM funcionario f WHERE f.cargo = 'Gerente';

--Comandos DCL;

GRANT SELECT ON livro TO funcionario;

REVOKE SELECT ON livro FROM cliente;

--explain:

EXPLAIN SELECT * FROM livro;


--Comandos DTL;

BEGIN TRANSACTION DELETE FROM livro WHERE livro_id = 1; 

COMMIT;

savepoint;


