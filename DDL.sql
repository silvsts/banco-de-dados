create database livrariaDDL;

create table livro(
   livro_id serial,
   qtd_pag int,
   editora varchar(20),
   autor_id int,
   ano_lancamento char(4),
   genero varchar(20)
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