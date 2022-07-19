drop database dbAcademia;

show databases;

create database dbAcademia;

use dbAcademia;

show databases;


create table tbRegistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);

create table tbAluno(
matricula int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura float,
peso float,
id_turma int
);

create table tbTurma(
id int,
quant_alunos int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);

create table tbMonitor(
id_aluno int
);

create table tbAtividade(
id int,
atividade varchar(45)
);

show tables;

desc tbRegistro;
desc tbAluno;
desc tbTurma;
desc tbInstrutor;
desc tbMonitor;
desc tbAtividade;


insert into tbRegistro (id_aluno,id_turma,ausencia,id_registro)
values (1,1,1,1);
select * from tbRegistro;


insert into tbAluno (matricula,data_matricula,nome,endereco,telefone,nascimento,altura,peso,id_turma)
values (1,'2022/01/01','Diego','Rua Arujá','11957311178','1992/01/24',1.80,90.00,1);
select * from tbAluno;

insert into tbTurma (id,quant_alunos,horario_aula,duracao_aula,data_inicio,data_fim,atividade,id_instrutor,id_monitor)
values (1,30,'18:00:00','04:00:00','2022/01/01','2022/12/31',1,1,1);
select * from tbTurma;

insert into tbInstrutor (rg,nome,nascimento,titulacao,telefone)
values (483419266,'Ronaldo',1977/05/23,'Musculação','987654321');
select * from tbInstrutor;

insert into tbMonitor (id_aluno)
values (1);
select * from tbMonitor;

insert into tbAtividade (id,atividade)
values (1,'Musculação');
select * from tbAtividade;