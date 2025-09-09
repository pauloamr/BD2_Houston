-- 1 criar
create database bd_pedido_0201;

-- 2 usar
use bd_pedido_0201;

-- 3 cliente 
create table tb_cliente
(cd_cliente int not null primary key,
cliente char(50));

--4 veiculo
create table tb_veiculo
(cd_veiculo int not null primary key,
veiculo char(50),
valor_veiculo decimal(12,2));

--5 vendedor 
create table tb_vendedor
(cd_vendedor int not null primary key,
vendedor char(50));

-- 6 pedido
create table tb_pedido
(nr_pedido int not null primary key,
pedido date,
cd_veiculo int,
cd_cliente int,
cd_vendedor int,
valor_pedido decimal(12,2),
comissao decimal(12,2));

-- 7 cliente x pedido
alter table tb_pedido
add constraint fk_cliente foreign key (cd_cliente)
references tb_cliente (cd_cliente);

-- 8 vendedor x pedido
alter table tb_pedido
add constraint fk_vendedor foreign key (cd_vendedor)
references tb_vendedor (cd_vendedor);

-- 9 veiculo x pedido
alter table tb_pedido
add constraint fk_veiculo foreign key (cd_veiculo)
references tb_veiculo (cd_veiculo);

-- 10 popular o banco de dados

-- vendedor

select * from tb_vendedor 

Insert into tb_vendedor
(cd_vendedor, vendedor)
Values
(1, "Anibal"),
(2, "Antonio de Moraes"), 
(3, "Barbara Alcantara"), 
(4, "Deise Castro"),
(5, "Eider Nascimento");

-- cliente
select * from tb_cliente 

Insert into tb_cliente
(cd_cliente, cliente) 
Values 
(1, "Vallu Nascimento"),
(2, "Rogeria Negreti"),
(3, "Henrique Silva"),
(4, "Wellington Alves"),
(5, "Jose Pereira");

-- veiculo
select * from tb_veiculo 

Insert into tb_veiculo
(cd_veiculo, veiculo, valor_veiculo) 
Values
(1, "Onix", 52000),
(2, "Prisma", 49000),
(3, "S10", 109000),
(4, "Cruze", 101000),
(5, "Spin", 69000),
(6, "Cobalt", 63000);

--Pedido
select * from tb_pedido 

insert into tb_pedido
(nr_pedido, dt_pedido, cd_veiculo, cd_cliente, cd_vendedor, valor_pedido,comissao)
values
(1,"2019-01-10",1,2,3,52000,0),
(2,"2019-02-20",2,3,4,49000,0),
(3,"2019-03-30",3,4,5,109000,0),
(4,"2019-04-10",4,5,1,101000,0),
(5,"2019-05-20",5,5,1,69000,0),
(6,"2019-06-30",6,1,2,63000,0),
(7,"2019-07-10",1,4,5,52000,0),
(8,"2019-08-20",1,4,5,52000,0),
(9,"2019-09-30",1,4,5,52000,0),
(10,"2019-10-10",1,4,5,52000,0);


