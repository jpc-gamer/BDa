drop database loja;
create database loja;
use loja; 

create table clientes (
	id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar (100) not null
);

create table pedidos (
	id int auto_increment primary key,
    id_cliente int,
    data_pedido date not null,
    valor decimal (10, 2) not null,
    foreign key (id_cliente) references clientes(id)
);

insert into clientes (nome, email) values 
	("João Silva", "joao@gmail.com"),
	("Maria Roberta", "maroberta@gmail.com"),
	("Claudio Santos", "santosclaudio@gmail.com"),
	("Manoel Pereira", "manoel@gmail.com"),
    ("Larissa Carmin", "lari@gmail.com"),
	("Guilherme Rocha", "guirocha@gmail.com");
    
insert into pedidos (id_cliente, data_pedido, valor) values 
	("2", "2024-09-23", 100.00), 
	("1", "2024-09-21", 19.00), 
	("4", "2024-09-09", 190.00), 
	("6", "2024-09-02", 122.00), 
	("5", "2024-09-15", 235.00),     
    ("5", "2024-09-11", 75.00);
    
select 
	c.nome,
    c.email,
    p.data_pedido,
    p.valor
from 
	clientes c 
inner join 
	pedidos p on c.id = p.id_cliente;

