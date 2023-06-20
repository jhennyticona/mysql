create database	db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id))
;

insert into tb_categorias (descricao) values ("pizza tradicionais");
insert into tb_categorias (descricao) values ("pizza especiais");
insert into tb_categorias (descricao) values ("pizza diet");
insert into tb_categorias (descricao) values ("pizza premium");
insert into tb_categorias (descricao) values ("pizza doces");

select * from tb_categorias;

create table tb_pizzas (
id bigint auto_increment,
sabor varchar (255) not null,
quantidade int,
preco decimal(6,2) not null,
categoria_id bigint,
PRIMARY KEY (id)
);

select * from tb_pizzas;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizza_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Calabresa",10,60.00,1);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Portuguesa",5,65.00,2);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Cinco Carnes",22,89.90,2);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Muçarela",65,73.00,1);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Atum com cebola",49,44.00,3);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Bauru",41,89.00,4);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Morango com chocolate",110,99.00,5);
insert into tb_pizzas (sabor,quantidade,preco,categoria_id) values ("Brigadeiro",43,99.00,5);

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 50.00 and 100.00;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id=tb_pizzas.categoria_id;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id=tb_pizzas.categoria_id where tb_categorias.id=5;

