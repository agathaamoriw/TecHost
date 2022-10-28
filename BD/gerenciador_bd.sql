CREATE DATABASE Gerenciador_BD;
USE Gerenciador_BD;

/* CRIANDO TABELAS */
CREATE TABLE pacientes(
id_paciente INT AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(50),
dt_nascimento DATE,
CPF VARCHAR(15),
contato VARCHAR(15),
num_carteirinha VARCHAR(15),
endereco VARCHAR(100),
PRIMARY KEY (id_paciente)
);

/* INSERINDO DADOS NA TABELA */
insert into pacientes values
(default, 'Ágatha Amorim', 'agathamorim@paciente.com', '2004-08-25', '48814369000', '19988377803', '10011001', 
'Rua 1, Casa 1, City 1'),
(default, 'Eduardo Porto', 'eduporto@paciente.com', '1945-06-04', '99443690333', '1998763002', '20022002', 
'Rua 2, Casa 2, City 2'),
(default, 'Lorena Santos', 'lorsantos@paciente.com', '2000-04-11', '99554369213', '19954327869', '30033003', 
'Rua 3, Casa 3, City 3');

CREATE TABLE medicos(
id_medico INT AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(50),
dt_nascimento DATE,
CPF VARCHAR(15),
CRM VARCHAR(15),
contato VARCHAR(15),
especializacao VARCHAR(50),
setor VARCHAR(20),
senha VARCHAR(15),
PRIMARY KEY(id_medico)
);

/* INSERINDO DADOS NA TABELA */
insert into medicos values
(default, 'Emily Eunice de Rezende', 'emilyrezende@hopital.med.com', '2005-05-30', '12354678900', 
'77886544326-X', '19988152445', 'Pediatria', 'Clínico', 'medEmily'),
(default, 'João Coelho', 'joaocoelho@hopital.med.com', '1967-11-20', '77354699900', 
'54396544326-X', '199870445', 'Geral', 'Cirúrgico', 'medJoao'),
(default, 'Helena Parra', 'helenaparra@hopital.med.com', '1988-06-06', '99884678900', 
'998864434326-X', '1998997345', 'Geriatria', 'Clínico', 'medHelena');

CREATE TABLE supervisores(
id_supervisor INT AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(50),
dt_nascimento DATE,
CPF VARCHAR(15),
contato VARCHAR(15),
ala VARCHAR(15),
senha VARCHAR(15),
PRIMARY KEY(id_supervisor)
);

/* INSERINDO DADOS NA TABELA */
insert into supervisores values
(default, 'Luciana Zapparolli', 'lucianazapparolli@hospital.sup.com', '1979-01-12', '9876543216200', 
'1998766635', 'Pediatria', 'supLuciana'),
(default, 'Matheus Silva', 'matheussilva@hospital.sup.com', '1999-11-22', '9543343216200', 
'1996766235', 'Clínico Geral', 'supMatheus'),
(default, 'Rodrigo Meray', 'rodrigomeray@hospital.sup.com', '2004-10-19', '9876543210', 
'1998766635', 'Geriatria', 'supRodrigo');


create table solicitacao(
id_solicitacao int auto_increment,
nome_med varchar(50),
CRM_med varchar(15),
nome_pac varchar(50),
id_paciente int,
retorno boolean,
obs varchar(100),
primary key(id_solicitacao)
);

create table leitos(
id_leito int auto_increment,
ala varchar(20),
quarto varchar(4),
tipo_leito varchar(20),
primary key(id_leito)
);

/* INSERINDO DADOS NA TABELA */
insert into leitos values
(default, 'Pediatria', 'P1', 'Comum'),
(default, 'Geriaria', 'Ge1', 'Tec' ),
(default, 'Clínica Geral', 'CG1', 'Comum');

create table loginMed(
id_med int auto_increment  not null,
usuario varchar(100)  not null,
senha varchar(32)  not null,
primary key(id_med)
);

insert into loginmed values
(default, 'emilyrezende@hopital.med.com', md5('emily123')),
(default, 'joaocoelho@hopital.med.com', md5('joao123')),
(default,'helenaparra@hopital.med.com',md5('helena123'));

create table loginSup(
id_sup int auto_increment  not null,
usuario varchar(100)  not null,
senha varchar(32)  not null,
primary key(id_sup)
);

/* EXCLUIR, VER */
/*drop table medicos;*/

select * from loginmed;
describe solicitacao;