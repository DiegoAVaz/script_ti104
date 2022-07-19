drop database dbClinica_Medica;

create database dbClinica_Medica;

show databases;

use dbClinica_Medica;

create table tbMedico(
idMedico int,
nmMedico varchar(45),
telefoneMedico varchar(9)
);

create table tbConsulta(
idConsulta int,
dt_consulta datetime,
medico_idMedico int,
paciente_idPaciente int,
receitaMedica_idReceitaMedica int
);

create table tbPaciente(
idPaciente int,
nmPaciente varchar(45),
telefonePaciente varchar(9),
convenio varchar(45)
);

create table tbReceitaMedica(
idReceitaMedica int,
descricao varchar(255)
);

show tables;

desc tbMedico;
desc tbConsulta;
desc tbPaciente;
desc tbReceitaMedica;

insert into tbMedico (idMedico,nmMedico,telefoneMedico)
values (1,'Thaina','940050459');
select * from tbMedico;

insert into tbConsulta (idConsulta,dt_consulta,medico_idMedico,paciente_idPaciente,receitaMedica_idReceitaMedica)
values (1,'2022/01/01',1,1,1);
select * from tbConsulta;

insert into tbPaciente (idPaciente,nmPaciente,telefonePaciente,convenio)
values (1,'Diego','987654321','Amil');
select * from tbPaciente;

insert into tbReceitaMedica (idReceitaMedica,descricao)
values (1,'Sei lá, aconteceram várias coisas');
select * from tbReceitaMedica;