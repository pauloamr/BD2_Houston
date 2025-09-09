-- aula DDL e DML 
-- 26-08-2025

-- 1 criar o banco de dados
create database bd_teste;

-- 2 usar o banco de dados
use bd_teste;

-- 3 criar a tabela tb_teste
create table tb_teste
(cd_teste int not null primary key,
teste char (30));

-- 4 adiciona o campo nota
alter table tb_teste
add nota int;

-- 5 alterar nota para char(50)
-- sql server
alter table tb_teste
alter column nota char(50);

-- 6 Excluir o campo nota
alter table tb_teste
drop column nota;

-- excluir a tabela tb_teste
drop table tb_teste;

--8 excluir o banco bd_teste
use master;

drop database bd_teste;

