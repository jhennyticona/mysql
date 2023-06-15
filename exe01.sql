CREATE database bd_Rh;

USE bd_rh;

create table tb_colaboradores (
id_colab int auto_increment primary key,
nome varchar(100) not null,
endereco varchar(255),
cidade varchar(200),
salario decimal not null);

insert into tb_colaboradores (nome,endereco,cidade,salario) values ("Jhenny","Rua Hipódromo, 6","São Paulo",2500.00);
insert into tb_colaboradores (nome,endereco,cidade,salario) values ("Graziele","Rua Direita, 1026","Rio de Janeiro",1800.00);
insert into tb_colaboradores (nome,endereco,cidade,salario) values ("João Paulo","Av. Landaeta, 982","São Paulo",1500.00);
insert into tb_colaboradores (nome,endereco,cidade,salario) values ("Martha","Rua Taquari, 137","São Paulo",5000.00);
insert into tb_colaboradores (nome,endereco,cidade,salario) values ("Mere","Rua Santa Rita, 520","Rio de Janeiro",2590.00);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set cidade = "São Paulo" where id_colab = 2;

