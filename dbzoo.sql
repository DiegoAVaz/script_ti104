drop database dbzoo;


-- --------------------------------- ATIVIDADE ----------------------------

-- 1. Crie uma database chamada zoologico:

create database dbzoo;
use dbzoo;

-- ----------------------------------------------------------------------

-- 2. Na database zoologico, crie uma tabela chamada animais

create table tbanimais(
codigo int,
tipo char(15),
nome char(30),
idade tinyint,
valor decimal(10,2)
);

insert into tbanimais 
values
(1,'Cachorro','Djudi',3,300.00),
(2,'Cachorro','Sula',5,300.00),
(3,'Cachorro','Sarina',7,300.00),
(4,'Gato','Pipa',2,500.00),
(5,'Gato','Sarangue',2,500.00),
(6,'Gato','Clarenses',1,500.00),
(7,'Coruja','Agnes',0,700.00),
(8,'Coruja','Arabela',1,700.00),
(9,'Sapo','Quash',1,100.00),
(10,'Peixe','Fish',0,100.00);

-- ----------------------------------------------------------------------

-- 3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela aniamais:

select * from tbanimais;

-- ----------------------------------------------------------------------

-- 4. Escreva um comando que exiba apenas as colunas tipo e nome da tabela animais
--    apresentando todos os registros. 

select tipo, nome from tbanimais;

-- ----------------------------------------------------------------------

-- 5. Escreva um comando que exiba apenas as colunas tipo, nome e idade da tabela animais
--    apresentando todos os registros

select tipo, nome, idade from tbanimais;

-- ----------------------------------------------------------------------

-- 6. Escreva um comando que exiba apenas as colunas tipo e nome da tabela animais apresentando
--    todos os registros. Apresente a legenda da coluna tipo com o alias 'tipo de animal'
--    e a coluna nome com o alias 'nome do animal':

select
tipo as 'tipo de animal',
nome as 'nome do animal'
from tbanimais;

-- ----------------------------------------------------------------------

-- 7. Escreva um comando que exiba apenas as colunas tipo, nome e idade da tabela animais
--    apresentando todos os registros. Apresente a legenda da coluna tipo com o alias
--    'tipo de animal', da coluna nome com o alias 'nome do animal' e da coluna idade 
--    com o alias 'tempo de vida'

select
tipo as 'tipo de animal',
nome as 'nome do animal',
idade as 'tempo de vida'
from tbanimais;

-- ----------------------------------------------------------------------

-- 8. Coluna virtual 'procedencia' com os valores 'animais domesticos'

select
'Animal doméstico' as procedencia,
nome,
tipo,
idade as 'tempo de vida'
from tbanimais;

-- ----------------------------------------------------------------------

-- 9. Com valor de venda como coluna virtual

select
tipo,
nome,
idade,
valor as 'valor original',
valor * 0.10 + valor as 'valor de venda'
from tbanimais;

-- ----------------------------------------------------------------------

-- 10. Apresentando dados repetidos uma só vez

select distinct
tipo,
valor as 'valor original',
valor * 1.10 as 'valor de venda'
from tbanimais;