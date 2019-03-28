go

use master

drop database Auto_Socorro

create database Auto_Socorro

use Auto_Socorro

create table Cliente(
	id_Cliente int primary key,
	nome_Cliente varchar(50) not null,
	cpf_Cliente varchar(14),
	cnpj_Cliente varchar(18),
	email_Cliente varchar(100) not null,
	telefone_Cliente varchar(14),
	tipo_Cliente varchar(2)not null,
)

create table Motorista(
	id_Motorista int primary key,
	nome_Motorista varchar(50) not null,
	cpf_Motorista varchar(14) not null,
	rg_Motorista varchar(20) not null,
	telefone_Motorista varchar(14) not null,
	endereco_Motorista varchar(100) not null,
	bairro_Motorista varchar(50) not null,
	cidade_Motorista varchar(30) not null,
	cep_Motorista varchar(9) not null,
	uf_Motorista varchar(2) not null,
	cnh_Motorista varchar(12) not null,
	titulo_eleitor_Motorista varchar(20) not null, 
	cargo_Motorista varchar(20) not null,
)

create table Funcionario(
	id_Funcionario int primary key,
	nome_Funcionario varchar(50) not null,
	cpf_Funcionario varchar(14) not null,
	rg_Funcionario varchar(20) not null,
	telefone_Funcionario varchar(14) not null,
	email_Funcionario varchar(100) not null,
	endereco_Funcionario varchar(100) not null,
	bairro_Funcionario varchar(50) not null,
	cidade_Funcionario varchar(30) not null,
	cep_Funcionario varchar(9) not null,
	uf_Funcionario varchar(2) not null,
	cnh_Funcionario varchar(12) not null,
	titulo_eleitor_Funcionario varchar(20) not null, 
	cargo_Funcionario varchar(20) not null,
	login_Funcionario varchar(100) not null,
	senha_Funcionario varchar(100) not null,
)

insert into Funcionario values
(1, 'Jean-Luc Bonnet', '477.278.588-46', '123456789', '(11)95972-0201', 'lucbonnet10@gmail.com', 'Rua Vicente Pereira de Assunção apto 35 G', 'Vila Constância', 'São Paulo', '04658-000', 'SP', '123456789', '123456789', 'Gerente', 'Luc', '1234')

create table Veiculo(
	id_Veiculo int primary key,
	modelo_Veiculo varchar(20) not null,
	marca_Veiculo varchar(20) not null,
	cor_Veiculo varchar(20) not null,
	placa_Veiculo varchar(8) not null,
)

create table Caminhao(
	id_Caminhao int primary key,
	modelo_Caminhao varchar(20) not null,
	marca_Caminhao varchar(20) not null,
	cor_Caminhao varchar(20) not null,
	placa_Caminhao varchar(8) not null,
)

create table Servico(
	id_Servico int primary key,
	nome_Servico varchar(20) not null,
	preco_pf decimal(5,2) not null,
	preco_pj decimal(5,2) not null,
)

create table Pedido(
	id_Pedido int primary key,
	id_Motorista int foreign key references Motorista (id_Motorista),
	id_Funcionario int foreign key references Funcionario (id_Funcionario),
	id_Cliente int foreign key references Cliente (id_Cliente),
	id_Caminhao int foreign key references Caminhao (id_Caminhao),
	id_Veiculo int foreign key references Veiculo (id_Veiculo),
	data_Pedido varchar(10) not null,
	num_ss_Pedido varchar(9) not null,
	km_Saída_Pedido varchar(10),
	km_Chegada_Pedido varchar(10),
	local_retirada_Pedido varchar(100) not null,
	local_entrega_Pedido varchar(100) not null,
	local_referencia_Pedido varchar(100) not null,
	hora_saida_Pedido varchar(5) not null,
	km_total_Pedido varchar(5) not null,
	hora_parada_Pedido varchar(5) not null,
	hora_trabalhada_Pedido varchar(5) not null,
	patins_Pedido varchar(1) not null,
	subsolo_Pedido varchar(1) not null,
	preco_total decimal(6,2) not null, 	 
)

create table Pedido_Servico(
	id_Pedido int foreign key references Pedido (id_Pedido),
	id_Servico int foreign key references Servico (id_Servico)
)

select * from Caminhao

select top 1 * from Caminhao order by id_Caminhao desc

select id_Caminhao as 'Número', marca_Caminhao as Marca, modelo_Caminhao as Modelo, cor_Caminhao as Cor, placa_Caminhao as Placa from Caminhao where marca_Caminhao like '%F%'