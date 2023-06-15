create database bd_ecommerce;

use bd_ecommerce;

create table tb_produtos (
id_produto int auto_increment primary key,
nome varchar(50) not null,
quantidade int,
quantidade_minima int,
preco decimal(6,2) not null
);

insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("teclado gamer",250,50,200.50);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("monitor gamer",110,15,2499.99);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("impressora a cor multifuncional",39,5,679.00);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("mouse pad gamer",300,50,69.99);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("fone headset gamer",298,20,111.50);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("notebook gamer",10,2,4349.00);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("câmera web",200,60,1228.00);
insert into tb_produtos (nome,quantidade, quantidade_minima,preco) values ("mouse gamer",100,30,631.90);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set quantidade =320 where id_produto=1;
