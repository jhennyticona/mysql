create database	db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id))
;

insert into tb_categorias (descricao) values ("Java");
insert into tb_categorias (descricao) values ("Jogos Digitais");
insert into tb_categorias (descricao) values ("Python");
insert into tb_categorias (descricao) values ("AWS");
insert into tb_categorias (descricao) values ("Linux");

select * from tb_categorias;

create table tb_cursos (
id bigint auto_increment,
nome varchar (255) not null,
descricao varchar (255),
preco decimal(6,2) not null,
categoria_id bigint,
PRIMARY KEY (id)
);

select * from tb_cursos;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categoria 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Estruturas de Repetição","Curso Estruturas de Repetição em Java",60.00,1);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Blender","Curso Blender 3D",760.00,2);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Testes Unitários com JUnit","Curso Testes Unitários com JUnit",120.00,1);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Conhecendo Tuplas","Curso Conhecendo Tuplas em Python",360.50,3);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Dominando Funções Python","Curso Dominando Funções Python",450.00,3);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Criando uma Aplicação Serverless","Curso Criando uma Aplicação Serverless na AWS",600.00,4);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Conhecendo o Linux Desktop","Curso Conhecendo o Linux Desktop",900.00,5);
insert into tb_cursos (nome,descricao,preco,categoria_id) values ("Servidores de Arquivos com Linux","Curso Servidores de Arquivos com Linux",1350.00,5);

select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600.00 and 1000.00;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos inner join tb_categorias on tb_categorias.id=tb_cursos.categoria_id;

select nome,tb_cursos.descricao,preco,tb_categorias.descricao from tb_cursos inner join tb_categorias on tb_categorias.id=tb_cursos.categoria_id where tb_categorias.id=1;

