-- Exercicio RH 
-- 05-08-2025

-- 1 criar o banco de dados bd_0201_rh;
create database bd_0201_rh; 

-- 2 usar o banco de dados 
use bd_0201_rh; 

-- 3 criar a tabela tb_cargo 
create table tb_cargo 
(cd_crago int not null primary key, 
cargo char(30)); 

-- 4 criar a tabela tb_setor 
create table tb_setor 
(cd_setor int not null primary key, 
setor char(30)); 

-- 5 criar a tabela tb_funcionario 
create table tb_funcionario 
(matricula int not null primary key, 
funcionario char(50), 
dt_nascimento date, 
cd_setor int, 
cd_cargo int, 
salario decimal(8,2)); 

-- 6 relacionamento funcionario x cargo 
alter table tb_funcionario 
add constraint fk_cargo foreign key (cd_cargo) 
references tb_cargo (cd_cargo); 

-- 7 relacionario funcionario x setor 
alter table tb_funcionario 
add constraint fk_setor foreign key (cd_setor) 
references tb_setor (cd_setor); 






















