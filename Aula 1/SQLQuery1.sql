create table tabela1( -- criar uma tabela
id int,
nome varchar(30),
dataNasc date
)

alter table tabela1 --alterar tabela
alter column nome varchar(100) -- alterar uma coluna

SELECT * FROM tabela1 --ver a tabela


-- tabela2

create table tabela2(
id int not null, --não aceitar valores nulos
nome varchar(30),
cpf varchar(12) not null --não aceitar informações iguais
)

insert into tabela2(id, nome, cpf)
values(5, 'jose silveira', '144289499-79') -- inserir informações na tabela

insert into tabela2 
values(7, 'predo', '144289499-49')

alter table tabela2
add constraint campo_unique2 unique(cpf)

select * from tabela2 where id >= 5 --selecionar com condição(nesse caso, retorna somente onde o id for maior ou igual a 5)

update tabela2 set id = 10 where cpf = '144289499-79'
select * from tabela2

delete tabela2 where id = 6