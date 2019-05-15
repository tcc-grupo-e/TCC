go
create database AutoSocorro

go
use AutoSocorro
--------------------------------------------------------------------------------
go
create table Cliente (
	ID_Cliente int primary key,
	Nome varchar(50),
	Telefone varchar(14),
	Email varchar(80),
	CPF varchar(14),
)
go
insert into Cliente values
	(1, 'Robson Silva dos Santos', '(11)99897-5496', 'robson.silva@gmail.com', '114.858.794-18'),
	(3, 'Maria Lúcia', '(11)97542-9492', 'm_lucia10@outlook.com', '258.651.722-89')
--------------------------------------------------------------------------------
go
create table Empresa(
	ID_Cliente int primary key,
	IE varchar(255),
	CNPJ varchar(18),
)
go
insert into Empresa values
	(2, '641.090.339.426', '70.957.494/0001-82')
--------------------------------------------------------------------------------
go
create table Abertura (
	ID_Chamado int primary key,
	ID_Cliente int foreign key references Cliente(ID_Cliente),
	Atendente varchar(50),
	Apolice varchar(255),
	Data_Servico varchar(10),
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Ano varchar(4),
	Placa varchar(8),
	Local_Retirada varchar(255),
	KM_Saida varchar(7),
	Hora_Saida varchar(5),
	Observacao text 
)
go
insert into Abertura values
	(1, 1, 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832', 'Rua dos Alfeneiros, 4',
	'78000', '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor'),
	(2, 2, 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334', 'Rua do Oratório, 1074',
	'24500', '14:37', 'O veículo se encontra com uma batida na porta lateral esquerda'),
	(3, 3, 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314', 'Rua Morumbi, 45',
	'8500', '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens')
--------------------------------------------------------------------------------
go
create table Fechamento (
	ID_Chamado int primary key,
	Atendente varchar(50),
	Apolice varchar(255),
	Data_Servico varchar(10),
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Ano varchar(4),
	Placa varchar(8),
	Local_Retirada varchar(255),
	KM_Saida varchar(7),
	Hora_Saida varchar(5),
	Observacao text,
	KM_Chegada varchar(7),
	Hora_Chegada varchar(5),
	Hora_Parada varchar(5),
	Hora_Trabalhada varchar(5),
	Contato varchar(50),
	Estado_Veiculo varchar(30),
	Acompanhado varchar(3),
)
go
insert into Fechamento values
	(1, 1, 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832', 'Rua dos Alfeneiros, 4',
	'78000', '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor', '78040', '20:30', '0:20',
	'1:40', 'Robson Santos Onix', 'Danificado mecanicamente', 'Não'),
	(2, 2, 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334', 'Rua do Oratório, 1074',
	'24500', '14:00', 'O veículo se encontra com uma batida na porta lateral esquerda', '24550', '17:00', '1:30', '1:30', 'Localiza',
	'Danificado estéticamente', 'Sim'),
	(3, 3, 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314', 'Rua Morumbi, 45',
	'8500', '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens', '8520',
	'10:30', '0:00', '1:00', 'Maria Lúcia Mustang', 'Não danificado', 'Não')
--------------------------------------------------------------------------------
go
create table Local_Retirada (
	ID_Local_Retirada int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Endereco text,
	Referencia text,
)
go
insert into Local_Retirada values
	(1, 1, 'Rua dos Alfeneiros, 4', 'Casa do Harry Potter'), 
	(2, 2, 'Rua do Oratório, 1074', 'Lello Condomínios'), 
	(3, 3, 'Rua Morumbi, 45', 'Próximo ao Terminal Sacomã')
--------------------------------------------------------------------------------
go
create table Destino (
	ID_Destino int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Endereco text,
	Referencia text,
	Ordem varchar(3),
)
go
insert into Destino values
	(1, 1, 'R. Lopes Chaves, 243 - Barra Funda, São Paulo', 'Próximo ao centro automotivo Porto Seguro', '1'),
	(2, 2, 'R. Faustolo, 1855 - Lapa, São Paulo', 'Próximo a estação Lapa', '1'), 
	(3, 3, 'R. França Pinto, 1115 - Vila Mariana, São Paulo', 'Próximo ao Ibirapuera', '1')
--------------------------------------------------------------------------------
go
create table Declaracao (
	ID_Declaracao int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Assinatura varbinary,
	Tipo varchar(30),
	Horario time,
)
go
insert into Declaracao values
	(1, 1, '', '', '20:00'),
	(2, 2, '', '', '19:00'),
	(3, 3, '', '', '20:00')
--------------------------------------------------------------------------------
go
create table Acessorios (
	ID_Acessorios int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Nome varchar(30),
	Estado varchar(30),
	Comentario text,
)
go
insert into Acessorios values
	(1, 1, 'Capa de banco traseiro', 'Usado', 'Encontra-se com uma mancha na parte inferior'), 
	(2, 2, 'Extintor de incêndio', 'Novo', 'Lacrado'),
	(3, 3, 'Trava de direção', 'Seminovo', 'Tem poucos riscos') 
--------------------------------------------------------------------------------
go
create table Funcionario (
	ID_Funcionario int primary key,
	Nome varchar(50),
	Cargo varchar(30),
	Salario varchar(9),
	Email varchar(50),
	Numero_Documento varchar(50),
	CNH varchar(50),
	Carteira_de_Trabalho varchar(100),
	Endereco varchar(255),
	Cidade varchar(50),
	CEP varchar(9),
	Estado varchar(30),
	Telefone varchar(14),
	Data_de_Nascimento varchar(10),
	Estado_Civil varchar(20),
	Conjuge varchar(50),
	Telefone_Conjuge varchar(14),
	Usuario varchar(50),
	Senha varchar(50),
)
go
insert into Funcionario values(1,'Eduardo Rocha Santos','Motorista','R$4000.00','lucbonnet10@gmail.com','13901484-x','01246497344','345.92951.31-0','Rua Jesuíno de Arruda','São Paulo','04132-000','SP','(11)96783-2965','06/08/1957','Casado','Rosângela Louise Santos','(11)93789-5092','Eduardo Rocha Santos','353808')
insert into Funcionario values
	(1, 'Ederson Gonzaga de Melo', 'Gerente', 'R$10.000', 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua José Dias Paes', 'São Paulo', '04851-003',
	'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102'),
	(2, 'Rafael Hadzic Rico de Sousa', 'Gerenciador de Banco de Dados', 'R$9.000', 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	'Rua Zélia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'RafaelHadzic', 'rafa130101'),
	(3, 'Gabriel Gomes Gameiro', 'Programador Android', 'R$9.000', 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atuaí, 140', 'São Paulo', '03646-000',
	'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Raquel Lopes Barbosa', '(11)96784-7184', 'ggameiro', 'gabr180902')
--------------------------------------------------------------------------------
go
create table Caminhao (
	ID_Caminhao int primary key,
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Placa varchar(8),
	Ano varchar(4),
	KM_Rodados varchar(7),
)
go insert into Caminhao values
	(1, 'Volkswagen', '8160', 'Branco', 'BZD-4574', '2014', '120000')
--------------------------------------------------------------------------------
go
create table Adicionais (
	ID_Adicionais int primary key,
	Nome varchar(50),
	Preco varchar(10),
	Quantidade int,
)
go
insert into Adicionais values
	(1, 'Chaveiro', 'R$50,00', 1),
	(2, 'Patins', 'R$250,00', 1), 
	(3, 'Subsolo', 'R$35,00', 1)
--------------------------------------------------------------------------------
go
create table Funcionario_Abertura (
	ID_Funcionario_Abertura int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	ID_Funcionario int foreign key references Funcionario(ID_Funcionario)
)
--------------------------------------------------------------------------------
go
create table Caminhao_Abertura (
	ID_Caminhao_Abertura int primary key,
	ID_Caminhao int foreign key references Caminhao(ID_Caminhao),
	ID_Abertura int foreign key references Abertura(ID_Chamado)
)
--------------------------------------------------------------------------------
go
create table Adicional_Abertura (
	ID_Adicional_Abertura int primary key,
	ID_Adicional int foreign key references Adicionais(ID_Adicionais),
	ID_Abertura int foreign key references Abertura(ID_Chamado)
)
