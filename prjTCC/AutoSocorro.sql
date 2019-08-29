use master
--go
--drop database AutoSocorro

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
	(2, 'Localiza Aluguel de Carros', '(11) 3231-3055', 'localiza_aluguel@localiza.com', '-'),
	(3, 'Maria L�cia', '(11)97542-9492', 'm_lucia10@outlook.com', '258.651.722-89')
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
create table Caminhao (
	ID_Caminhao int primary key,
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Placa varchar(8),
	Ano varchar(4),
	KM_Rodados varchar(7),
)
go
insert into Caminhao values
	(1, 'Volkswagen', '8160', 'Branco', 'BZD-4574', '2014', '120000')
--------------------------------------------------------------------------------
go
create table Abertura (
	ID_Chamado int primary key,
	ID_Cliente int foreign key references Cliente(ID_Cliente),
	ID_Caminhao int foreign key references Caminhao(ID_Caminhao),
	Local_Retirada varchar(255),
	Atendente varchar(50),
	Apolice varchar(255),
	Data_Servico varchar(10),
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Ano varchar(4),
	Placa varchar(8),
	KM_Saida varchar(7),
	Hora_Saida varchar(5),
	Observacao text 
)

select * from Abertura
go
insert into Abertura values
	(1, 1, 1,'Rua A', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
	'78000', '19:00', 'O ve�culo se encontra em perfeito estado, com problemas aparentemente no motor'),
	(2, 2, 1, 'Rua B', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	'24500', '14:37', 'O ve�culo se encontra com uma batida na porta lateral esquerda'),
	(3, 3, 1, 'Rua C', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	'8500', '09:30', 'O ve�culo est� em perfeito estado, e o servo�o foi solicitado apenas para transporte de garagens')
--------------------------------------------------------------------------------
go
create table Fechamento (
	ID_Chamado int primary key,
	ID_Cliente int foreign key references Cliente(ID_Cliente),
	ID_Caminhao int foreign key references Caminhao(ID_Caminhao),
	Local_Retirada varchar(255),
	Atendente varchar(50),
	Apolice varchar(255),
	Data_Servico varchar(10),
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Ano varchar(4),
	Placa varchar(8),
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
	(1, 1, 1, 'Rua A', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
	'78000', '19:00', 'O ve�culo se encontra em perfeito estado, com problemas aparentemente no motor', '78040', '20:30', '0:20',
	'1:40', 'Robson Santos Onix', 'Danificado mecanicamente', 'N�o'),
	(2, 1, 1, 'Rua B', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	'24500', '14:00', 'O ve�culo se encontra com uma batida na porta lateral esquerda', '24550', '17:00', '1:30', '1:30', 'Localiza',
	'Danificado est�ticamente', 'Sim'),
	(3, 1, 1, 'Rua C', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	'8500', '09:30', 'O ve�culo est� em perfeito estado, e o servo�o foi solicitado apenas para transporte de garagens', '8520',
	'10:30', '0:00', '1:00', 'Maria L�cia Mustang', 'N�o danificado', 'N�o')
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
	(1, 1, 'R. Lopes Chaves, 243 - Barra Funda, S�o Paulo', 'Pr�ximo ao centro automotivo Porto Seguro', '1'),
	(2, 2, 'R. Faustolo, 1855 - Lapa, S�o Paulo', 'Pr�ximo a esta��o Lapa', '1'), 
	(3, 3, 'R. Fran�a Pinto, 1115 - Vila Mariana, S�o Paulo', 'Pr�ximo ao Ibirapuera', '1')
--------------------------------------------------------------------------------
go
create table Declaracao (
	ID_Declaracao int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Assinatura varbinary(max),
	Tipo varchar(30),
	Horario varchar(5),
)

go
insert into Declaracao values
	(1, 1, 0x000, '', '20:00'),
	(2, 2, 0x000, '', '19:00'),
	(3, 3, 0x000, '', '20:00')
	
--------------------------------------------------------------------------------
go
create table Acessorios (
	ID_Acessorios int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	Nome varchar(30),
	Estado varchar(30),
	Comentario text,  --'serve pra absolutamente nada!'
)
go
insert into Acessorios values
	(1, 1, 'Capa de banco traseiro', 'Usado', 'Encontra-se com uma mancha na parte inferior'), 
	(2, 2, 'Extintor de inc�ndio', 'Novo', 'Lacrado'),
	(3, 3, 'Trava de dire��o', 'Seminovo', 'Tem poucos riscos') 
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
	Primeiro_Cadastro varchar(1),

)


go
insert into Funcionario values
	(1, 'Ederson Gonzaga de Melo', 'Gerente', 'R$10.000', 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua Jos� Dias Paes', 'S�o Paulo', '04851-003',
	'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102', 'n'),
	(2, 'Rafael Hadzic Rico de Sousa', 'Gerenciador de Banco de Dados', 'R$9.000', 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	'Rua Z�lia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'RafaelHadzic', 'rafa130101', 'n'),
	(3, 'Gabriel Gomes Gameiro', 'Programador Android', 'R$9.000', 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atua�, 140', 'S�o Paulo', '03646-000',
	'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Raquel Lopes Barbosa', '(11)96784-7184', 'ggameiro', 'gabr180902', 'n'),
	(4, 'Jean-Luc Bonnet', 'Gerente', 'R$99.999', 'lucbonnet10@gmail.com', '22.483.241-9', '37498101232', '563.90685.89-0', 'Rua X', 'S�o Paulo', '08744-000',
	'SP', '(11)29958-7064', '00/00/0000', 'Solteiro', '-', '-', 'Luc', '1234', 's')

	select * from Funcionario
--------------------------------------------------------------------------------

go
create table Adicionais (
	ID_Adicionais int primary key,
	Nome varchar(50),
	Preco varchar(10)
)
go
insert into Adicionais values
	(1, 'Chaveiro', 'R$50,00'),
	(2, 'Patins', 'R$250,00'), 
	(3, 'Subsolo', 'R$35,00')
--------------------------------------------------------------------------------
go
create table Funcionario_Abertura (
	ID_Funcionario_Abertura int primary key,
	ID_Chamado int foreign key references Abertura(ID_Chamado),
	ID_Funcionario int foreign key references Funcionario(ID_Funcionario)
)
go
insert into Funcionario_Abertura values
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3)
--------------------------------------------------------------------------------
go
create table Adicional_Abertura (
	ID_Adicional_Abertura int primary key,
	ID_Adicional int foreign key references Adicionais(ID_Adicionais),
	ID_Abertura int foreign key references Abertura(ID_Chamado)
)

go 
insert into Adicional_Abertura values
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3)

-----------------------SELECTS---------------------------------
select * from Abertura
select * from Acessorios
select * from Adicionais
select * from Adicional_Abertura
select * from Caminhao
select * from Cliente
select * from Empresa
select * from Declaracao
select * from Destino
select * from Fechamento
select * from Funcionario
select * from Funcionario_Abertura


-----------------------PROCEDURES------------------------------

-------------------------Iserir--------------------------------
create procedure usp_InserirAdicionalAbertura
@idAbertura int,
@NomeAdicional varchar(50)
as
	declare @ultimo_id int = (select top 1 ID_Adicional_Abertura from Adicional_Abertura order by ID_Adicional_Abertura desc), @id int
	if @ultimo_id=0
		begin
			set @id = 1
		end
	else
		begin
			set @id = @ultimo_id + 1
		end
	insert into Adicional_Abertura select @id, ID_Adicionais, @idAbertura from Adicionais where Nome like @NomeAdicional
go
create procedure usp_InserirFuncAber
@id_Motorista int
as
	declare @ultimo_id int = (select top 1 ID_Funcionario_Abertura from Funcionario_Abertura order by ID_Funcionario_Abertura desc), @id int,
	@ultimo_idAbertura int = (select top 1 ID_Chamado from Abertura order by ID_Chamado desc)
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Funcionario_Abertura values (@id, @ultimo_idAbertura, @id_Motorista)
go
create procedure usp_InserirFuncionario 
	@nome varchar(50),
	@cargo varchar(30),
	@salario varchar(9),
	@email varchar(50),
	@rg varchar(50),
	@cnh varchar(50),
	@carteira_de_trabalho varchar(100),
	@endereco varchar(255),
	@cidade varchar(50),
	@cep varchar(9),
	@estado varchar(30),
	@telefone varchar(14),
	@data_nascimento varchar(10),
	@estado_civil varchar(20),
	@nome_conjuge varchar(50),
	@telefone_conjuge varchar(14),
	@login varchar(50),
	@senha varchar(50),
	@primeiro_cadastro varchar(1)
As
	declare @ultimo_id int = (select top 1 ID_Funcionario from Funcionario order by ID_Funcionario desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
		print @id
	end
	else
	begin
		set @id = @ultimo_id + 1
		print @id
	end
	insert into Funcionario values
		(@id, @nome, @cargo, @salario, @email, @rg, @cnh, @carteira_de_trabalho, 
		@endereco, @cidade, @cep, @estado, @telefone, @data_nascimento, @estado_civil,
		@nome_conjuge, @telefone_conjuge, @login, @senha, @primeiro_cadastro)
go
--------------------------------------------------------------------------------
create procedure usp_InserirCliente
	@Nome varchar(50),
	@Telefone varchar(14),
	@Email varchar(100),
	@CPF varchar(14)
as
	declare @ultimo_id int = (select top 1 ID_Cliente from Cliente order by ID_Cliente desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Cliente values
		(@id, @Nome, @Telefone, @Email, @CPF)
go
--------------------------------------------------------------------------------
create procedure usp_InserirEmpresa
	@Nome varchar(50),
	@Email varchar(80),
	@Telefone varchar(14),
	@CPF varchar(14),
	@IE varchar(255),
	@CNPJ varchar(18)
as
	declare @ultimo_id int = (select top 1 ID_Cliente from Cliente order by ID_Cliente desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Empresa values
		(@id, @IE, @CNPJ)
	insert into Cliente values
		(@id, @Nome ,@Telefone, @Email, @CPF)
go
------------------------------------------------------------------------------
create procedure usp_InserirAdicionais
	@Nome varchar(50),
	@Preco varchar(10)
as
	declare @ultimo_id int = (select top 1 ID_Adicionais from Adicionais order by ID_Adicionais desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Adicionais values
		(@id, @Nome, @Preco)
go

------------------------------------------------------------------------------
create procedure usp_InserirFechamento
@kmChegada varchar(10),
@hrChegada varchar(5),
@hrParada varchar(5),
@hrTrabalhada varchar(5),
@contato varchar(50),
@estado varchar(50),
@acompanhante varchar(4),
@id int
as
	insert into Fechamento select *, @kmChegada, @hrChegada, @hrParada, @hrTrabalhada, @contato, @estado, @acompanhante from Abertura where ID_Chamado = @id 

create procedure usp_InserirDestino
@destino varchar(255),
@referencia varchar(255),
@id_Chamado int,
@Ordem int
as
	declare @ultimo_id int = (select top 1 ID_Destino from Destino order by ID_Destino desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Destino values (@id, @id_Chamado, @destino, @referencia, @Ordem)
go
create procedure usp_InserirAbertura
	@ID_Cliente int,
	@ID_Caminhao int,
	@Atendente varchar(50),
	@Apolice varchar(255),
	@Data_Servico varchar(10),
	@Marca varchar(30),
	@Modelo varchar(20),
	@Cor varchar(10),
	@Ano varchar(4),
	@Placa varchar(8),
	@LocalRet varchar(255),
	@KM_Saida varchar(7),
	@Hora_Saida varchar(5),
	@Observacao text	
as
	declare @ultimo_id int = (select top 1 ID_Chamado from Abertura order by ID_Chamado desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Abertura values
		(@id, @ID_Cliente, @ID_Caminhao, @LocalRet, @Atendente, @Apolice, @Data_Servico, @Marca, @Modelo, @Cor, @Ano, @Placa, @KM_Saida, @Hora_Saida, @Observacao)
go
------------------------------------------------------------------------------
-------------------------Consultar--------------------------------


create Proc usp_ProcurarLoginFunc
@usu varchar(50),
@senha varchar(50)
AS
Declare @contagem int,@mensagem char(1) 
	select @contagem = count(*) from Funcionario where Usuario = @usu and Senha = @senha 
	If @contagem = 0 
		Begin
			Select 'F' as 'T/F'
		End
		else
  			Select Cargo, Nome, ID_Funcionario, Primeiro_Cadastro, 'T' as 'T/F' from Funcionario where Usuario = @usu and Senha = @senha
go
--------------------------Cliente---------------------------------

create procedure usp_PesquisarTodosClientes
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-'
go

create procedure usp_PesquisarClientesNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Nome like '%' + @nome + '%'
go

create procedure usp_PesquisarClientesEmail
@email varchar(100)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Email like '%' + @email + '%'
go

create procedure usp_PesquisarClientesTelefone
@tel varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Telefone like '%' + @tel + '%'
go

create procedure usp_PesquisarClientesCPF
@cpf varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF like '%' + @cpf + '%'
go

--------------------------Empresas---------------------------------

create procedure usp_PesquisarTodasEmpresas
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' 
go

create procedure usp_PesquisarEmpresasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Nome like '%' + @nome + '%'
go

create procedure usp_PesquisarEmpresasEmail
@email varchar(100)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Email like '%' + @email + '%'
go

create procedure usp_PesquisarEmpresasTelefone
@tel varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Telefone like '%' + @tel + '%'
go

create procedure usp_PesquisarEmpresasCNPJ
@cnpj varchar(18)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and e.CNPJ like '%' + @cnpj + '%'
go

create procedure usp_PesquisarEmpresasIE
@ie varchar(255)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and e.IE like '%' + @ie + '%'
go

------------------Funcion�rio-----------------

create procedure usp_PesquisarTodosFuncionarios
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Sal�rio' from Funcionario 
go

create procedure usp_PesquisarTodosFuncionariosB
as
	select * from Funcionario 
go

create procedure usp_PesquisarFuncionariosNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Sal�rio' from Funcionario where Nome like '%' + @nome + '%' 
go

-------------------Adicionais-----------------

create procedure usp_PesquisarTodosAdicionais
as
	select Nome, Preco from Adicionais 
go

create procedure usp_PesquisarAdicionaisNome
@nome varchar(50)
as
	select Nome, Preco from Adicionais where Nome like '%' + @nome + '%' 
go

create procedure usp_PesquisarAdicionaisPreco
@preco varchar(50)
as
	select Nome, Preco from Adicionais where Preco like '%' + @preco + '%' 
go

--------------------Pedidos----------------

create procedure usp_PesquisarClientesEmpresas
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente 
go

create procedure usp_PesquisarClientesEmpresasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where Nome like '%' + @nome + '%'
go

create procedure usp_PesquisarIdClientesNomeChamada
@nome varchar(50)
as
	select * from Cliente where Nome like @nome 
go

create procedure usp_PesquisarFuncionariosMotoristas
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Sal�rio' from Funcionario where Cargo like 'Motorista'
go

create procedure usp_PesquisarFuncionariosMotoristasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Sal�rio' from Funcionario where Cargo like 'Motorista' and Nome like '%' + @nome + '%'
go


create procedure usp_ProcurarId_Motoristas_Nome
@nome varchar(50)
as
	select ID_Funcionario from Funcionario where Cargo like 'Motorista' and Nome like '%' + @nome + '%'
go

create procedure usp_PesquisarTodosCaminhoesChamada
as
	select Marca, Modelo, Cor, Placa, Ano, KM_Rodados from Caminhao
go

create procedure usp_PesquisarTodosCaminhoesChamadaPlaca
@placa varchar(8)
as
	select Marca, Modelo, Cor, Placa, Ano, KM_Rodados from Caminhao where Placa like '%' + @placa + '%'
go

create procedure usp_PesquisarIdCaminhoesChamadaPlaca
@placa varchar(8)
as
	select * from Caminhao where Placa like '%' + @placa + '%'
go

create procedure usp_PesquisarTodasAsChamadas
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado
go

create procedure usp_PesquisarTodasAsChamadasData
@data varchar(10)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Data_Servico like '%' + @data + '%'
go

create procedure usp_PesquisarTodasAsChamadasPlacaCarro
@placa varchar(10)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Placa like '%' + @placa + '%'
go

create procedure usp_PesquisarTodasAsChamadasModelo
@modelo varchar(50)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Modelo like '%' + @modelo + '%'
go

create procedure usp_PesquisarTodasAsChamadasMotorista
@nome varchar(50)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) like '%' + @nome + '%'
go

create procedure usp_PesquisarTodasAsChamadasDestino
@destino varchar(255)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Abertura as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) like '%' + @destino + '%'
go

create procedure usp_UltimoIdChamadas
as
declare @ultimo_id int = (select top 1 ID_Chamado from Abertura order by ID_Chamado desc), @id int
	select @ultimo_id as ID
go
----------------------Home-----------------------

create procedure usp_PesquisarChamadasDataFechados
@data varchar(10)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, a.Placa, a.Modelo, a.Marca from Abertura as a right join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Data_Servico like @data
go

create procedure usp_PesquisarChamadasDataAbertos
@data varchar(10)
as
	select a.ID_Chamado as id,(Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, a.Placa, a.Modelo, a.Marca from Abertura as a 
	where ID_Chamado not in (select ID_Chamado from Fechamento) and a.Data_Servico like @data
go

create procedure usp_ConsultaUltimaAberturaporCPF
	@cpf varchar(14)
as 
	SELECT top 1 a.* FROM Abertura AS a INNER JOIN Cliente AS p ON p.ID_Cliente = a.ID_Cliente
		where p.CPF like @cpf order by a.ID_Chamado desc
go 
exec usp_ConsultaUltimaAberturaporCPF '114.858.794-18'

----------------Alterar---------------------
create procedure usp_AlterarSenhaPC
@senha varchar(200),
@id int
as
update Funcionario set Senha = @senha, Primeiro_Cadastro = 'N' where ID_Funcionario = @id
go

create procedure usp_AlterarLoginPC
@login varchar(200),
@id int
as
update Funcionario set Usuario = @login where ID_Funcionario = @id
go

create procedure usp_AlterarCliente
	@Nome varchar(50),
	@Telefone varchar(14),
	@Email varchar(100),
	@CPF varchar(14),
	@Cod varchar(14)
as
	update Cliente set Nome = @nome, Telefone = @Telefone, Email = @Email, CPF = @CPF where CPF LIKE @cod
go

create procedure usp_AlterarEmpresa
	@Nome varchar(50),
	@Telefone varchar(14),
	@Email varchar(100),
	@cnpj varchar(50),
	@ie varchar(255),
	@cod varchar(50)
as
	declare @ultimo_id int = (select top 1 ID_Cliente from Cliente order by ID_Cliente desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	update Cliente set Nome = @nome, Telefone = @Telefone, Email = @Email where  ID_Cliente in (select ID_Cliente from Empresa where CNPJ = @cod)
	update Empresa set CNPJ = @cnpj, IE = @ie where CNPJ = @cod
go

create procedure usp_AlterarFuncionario
	@nome varchar(50),
	@cargo varchar(30),
	@salario varchar(9),
	@email varchar(50),
	@rg varchar(50),
	@cnh varchar(50),
	@carteira_de_trabalho varchar(100),
	@endereco varchar(255),
	@cidade varchar(50),
	@cep varchar(9),
	@estado varchar(30),
	@telefone varchar(14),
	@data_nascimento varchar(10),
	@estado_civil varchar(20),
	@nome_conjuge varchar(50),
	@telefone_conjuge varchar(14),
	@cod varchar(50)
as
	declare @ultimo_id int = (select top 1 ID_Cliente from Cliente order by ID_Cliente desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	update Funcionario set Nome = @nome, Cargo = @cargo, Salario = @salario, Email = @email, Numero_Documento = @rg, CNH = @cnh, Carteira_de_Trabalho = @carteira_de_trabalho, Endereco = @endereco, Cidade = @cidade, CEP = @cep, Estado = @estado, Telefone = @telefone, Data_de_Nascimento = @data_nascimento, Estado_Civil = @estado_civil, Conjuge = @nome_conjuge, Telefone_Conjuge = @telefone_conjuge where Numero_Documento like @rg
go

create procedure usp_AlterarAdicionais
@nome varchar(50),
@preco varchar(10),
@nomeOld varchar(50),
@precoOld varchar(10)
as
	update Adicionais set Nome = @nome, Preco = @preco where Nome like @nomeOld and Preco like @precoOld
go

select * from Abertura
select * from Acessorios

exec usp_ConsultaUltimaAberturaporCPF ''

create procedure usp_InserirAcessorios
	@Nome varchar(50),
	@Estado varchar(50),
	@id_Chamado int
as
	declare @ultimo_id int = (select top 1 ID_Acessorios from Acessorios order by ID_Acessorios desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Acessorios values
		(@id, @id_Chamado, @Nome, @Estado,'')
go


create procedure usp_InserirDeclaracao
	@id_Chamado int,
	@assinatura varbinary(max),
	@Horario varchar(5)
	
as
	declare @ultimo_id int = (select top 1 id_declaracao from Declaracao order by ID_Declaracao desc), @id int
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
	insert into Declaracao values
		(@id, @id_Chamado, @assinatura,'' ,@horario)
go

 

select * from Acessorios
select * from Caminhao
select * from Cliente
select * from declaracao