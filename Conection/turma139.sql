-- Active: 1725968277993@@10.28.2.34@3306@turma139

use turma139;

show tables;

create table if not exists usuario(
    id_usuario int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) UNIQUE,
    senha VARCHAR(100)
);

alter Table usuario add COLUMN setor int DEFAULT 0; --0 usuario comun, 1 admin

insert into usuario(nome,senha,setor) values ('davi','senha321', 0);
insert into usuario(nome,senha,setor) values ('admiro', 'senha123', 1);


select * from usuario;

DESCRIBE usuario;


create table if not exists cliente(
id_cliente int auto_increment primary key,
nome varchar(30),
lastname varchar(30),
sexo varchar(20),
fone varchar(15),
address varchar(40),
email varchar(50)
);

insert into clientes values (null, 'Kairós','asdasd','43','12312412','412sdaf', 'sadas');


create table produtos (
id int auto_increment primary key,
nome varchar (30),
descricao varchar (30),
preco varchar(30),
)

insert into produtos values (null,'teclado','mouse','100,00'),(null,'caixa','som','30,00'),(null,'fone','ouvido','44,00');