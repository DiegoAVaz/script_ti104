-- Apagar o banco de dados
drop database dbPadaria;

-- Visualizar os banco de dados no servidor MySQL
show databases;

-- Criar o banco de dados
create database dbPadaria;

-- Acessando o banco de dados
use dbPadaria;

-- Visualizar banco de dados criado
show databases;

-- criando as tabelas no banco de dados
create table tbFuncionarios(
codigo int,
nome varchar(100),
telCel char(10),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100)
);

create table tbUsuarios(
codigo int,
nome varchar(20),
senha varchar(20)
);

CREATE TABLE PRODUTOS( 
 CODIGO INT, 
 NOME VARCHAR(50), 
 TIPO VARCHAR(25), 
 QUANTIDADE INT, 
 VALOR DECIMAL(10,2) 
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
-- describe tbFuncionarios;
desc tbFuncionarios;
desc tbUsuarios;

-- inserir registro nas tabelas do banco de dados

insert into tbFuncionarios(codigo,nome,telCel,logradouro,
numero,cep,bairro)values(1,'Amanda da Cunha','95724-7852',
'Rua Maria Joana da Cunha','35B','04523-985','Santo amaro');

insert into tbusuarios(codigo,nome,senha)values(1,'senacl13','senac123');
insert into tbusuarios(codigo,nome,senha)values(2,'joao','123');
insert into tbusuarios(codigo,nome,senha)values(3,'joao','1234');
insert into tbusuarios(codigo,nome,senha)values(4,'pedro','12345');

-- Visualizando os registros nas tabelas
select * from tbFuncionarios;

select * from tbusuarios;

-- Alterar os registros nas tabelas. Que achar necessário


INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD 
PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 ); 

select * from produtos;

-- Atualizando valores de produtos do tipo informática
-- update produtos set valor = valor * 1.15
-- where tipo = 'informatica';
-- select nome, tipo, valor from produtos where tipo = 'informatica';

-- Atualizando valores de produtos onde tipo = informática E valor é menor que 600.00
-- update produtos set valor = valor * 1.05
-- where tipo = 'eletronicos' and valor < 600.00;
-- select nome, tipo, valor from produtos where tipo = 'eletronicos';

-- Atualizando valores de produtos onde tipo = digitais OU valor < 1000.00
-- update produtos set valor = valor * 0.8
-- where tipo ='digitais' or valor < 1000.00;
-- select * from produtos where tipo = 'digitais' or valor = 1000.00;

-- select * from produtos;

-- Usando operador 'in' (que é um 'or' simplificado)
-- select * from produtos where tipo in('informatica','digitais');

-- Se fosse com 'or' ficaria assim
-- select * from produtos where tipo = 'informatica' or tipo = 'digitais';

-- Usando operador 'not in' (contrário do 'in')
-- select * from produtos where tipo not in('informatica','digitais');

-- Usando operador "between' (Buscar o que está ENTRE dois valores)
-- select * from produtos where valor between 400 and 700;

-- Usando operador "not between' (Buscar o que NÃO ESTÁ ENTRE dois valores)
-- select * from produtos where valor not between 400 and 700;

-- Pesquisando na tabela produtos os itens cujo nome começa com 'c':
-- select * from produtos where nome like 'c%';

-- Pesquisando na tabela produtos os itens cujo nome termina com 'c':
-- select * from produtos where nome like '%c';

-- Pesquisando na tabela produtos os itens cujo nome TEM 'c', independentemente aonde:
-- select * from produtos where nome like '%c%';

-- Pesquisando na tabela produtos os itens cujo nome tem a junção das letras 'ra' e tipo tem a junção das letras 'ca' independentemente aonde:
-- select * from produtos where nome like '%ra%' and tipo like '%ca%';

-- Pesquisando na tabela produtos os itens cujo nome NÃO POSSUA a junção das letras 'ra', independentemente aonde:
-- select * from produtos where nome not like '%ra%';





-- ======================================================= ATIVIDADE ==============================================================





-- 1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F':

select * from produtos;
update produtos set valor = valor * 1.12
where nome like 'f%';
select * from produtos;

-- ---------------------------------------------------------------------------------------------------------

-- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600:

select * from produtos;
update produtos set quantidade = quantidade + 50
where valor between 400 and 600;
select * from produtos;

-- ---------------------------------------------------------------------------------------------------------

-- 3. Aplicar um desconto de 50% (*0,5) em todos os produtos que as unidade de estoque sejam maiores que 300:

select * from produtos;
update produtos set valor = valor * 0.5
where quantidade > 300;
select * from produtos;

-- ---------------------------------------------------------------------------------------------------------

-- 4. Exiba o produto de código 4:

select * from produtos where codigo = 4;

-- ---------------------------------------------------------------------------------------------------------


-- 5. Exiba todos os produtos que não tenham a letra 'Y':

select * from produtos where nome not like '%y%';

-- ---------------------------------------------------------------------------------------------------------


-- 6. Exiba todos os produtos que se iniciem com 'mo' e tenham como tipo as letras 'ma':

select * from produtos where nome like 'mo%' and tipo like '%ma%';

-- ---------------------------------------------------------------------------------------------------------