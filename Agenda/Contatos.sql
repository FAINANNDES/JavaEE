create database dbagenda;
show databases;
use dbagenda;
create table contatos(
idcon int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50)
);
show tables;
describe contatos;

/*CRUD CREATE*/
insert into Contatos (nome,fone,email) values ('Bill Gates','99999-1111','bill@outlook.com');

/*CRUD READ*/
select * from contatos;



