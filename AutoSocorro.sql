go
use master

go
drop database Autosocorro

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
create table Caminhao (
	ID_Caminhao int primary key,
	Marca varchar(30),
	Modelo varchar(20),
	Cor varchar(10),
	Placa varchar(8),
	Ano varchar(4),
	KM_Rodados int,
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
	KM_Saida int,
	Hora_Saida varchar(5),
	Observacao text 
)
go
insert into Abertura values
	(1, 1, 1,'Rua A', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
	78000, '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor'),
	(2, 2, 1, 'Rua B', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	24500, '14:37', 'O veículo se encontra com uma batida na porta lateral esquerda'),
	(3, 3, 1, 'Rua C', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	8500, '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens')
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
	KM_Saida int,
	Hora_Saida varchar(5),
	Observacao text,
	KM_Chegada int,
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
	78000, '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor', 78040, '20:30', '0:20',
	'1:40', 'Robson Santos Onix', 'Danificado mecanicamente', 'Não'),
	(2, 1, 1, 'Rua B', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	24500, '14:00', 'O veículo se encontra com uma batida na porta lateral esquerda', 24550, '17:00', '1:30', '1:30', 'Localiza',
	'Danificado estéticamente', 'Sim'),
	(3, 1, 1, 'Rua C', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	8500, '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens', 8520,
	'10:30', '0:00', '1:00', 'Maria Lúcia Mustang', 'Não danificado', 'Não')
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
	Assinatura varbinary(max),
	Tipo varchar(30),
	Horario time,
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
	Salario money,
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
	(1, 'Ederson Gonzaga de Melo', 'Gerente', 33500, 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua José Dias Paes', 'São Paulo', '04851-003',
	'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102', 'n'),
	(2, 'Rafael Hadzic Rico de Sousa', 'Gerente', 18700, 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	'Rua Zélia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'RafaelHadzic', 'rafa130101', 'n'),
	(3, 'Gabriel Gomes Gameiro', 'Motorista', 11300, 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atuaí, 140', 'São Paulo', '03646-000',
	'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Raquel Lopes Barbosa', '(11)96784-7184', 'ggameiro', 'gabr180902', 'n'),
	(4, 'Jean-Luc Bonnet', 'Gerente', 12850, 'lucbonnet10@gmail.com', '22.483.241-9', '37498101232', '563.90685.89-0', 'Rua X', 'São Paulo', '08744-000',
	'SP', '(11)29958-7064', '00/00/0000', 'Solteiro', '-', '-', 'Luc', '1234', 's')

	select * from Funcionario
--------------------------------------------------------------------------------

go
create table Adicionais (
	ID_Adicionais int primary key,
	Nome varchar(50),
	Preco money
)
go
insert into Adicionais values
	(1, 'Chaveiro', 50),
	(2, 'Patins', 250), 
	(3, 'Subsolo', 35)
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
go
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
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
go
create procedure usp_InserirFuncionario 
	@nome varchar(50),
	@cargo varchar(30),
	@salario varchar(20),
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
	set @salario = Replace(@salario, 'R$', '')
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
		(@id, @nome, @cargo, Convert(money,@salario), @email, @rg, @cnh, @carteira_de_trabalho, 
		@endereco, @cidade, @cep, @estado, @telefone, @data_nascimento, @estado_civil,
		@nome_conjuge, @telefone_conjuge, @login, @senha, @primeiro_cadastro)
go
--------------------------------------------------------------------------------
go
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
go
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
go
create procedure usp_InserirAdicionais
	@Nome varchar(50),
	@Preco money
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
go
create procedure usp_InserirFechamento
@kmChegada int,
@hrChegada varchar(5),
@hrParada varchar(5),
@hrTrabalhada varchar(5),
@contato varchar(50),
@estado varchar(50),
@acompanhante varchar(4),
@id int
as
	insert into Fechamento select *, @kmChegada, @hrChegada, @hrParada, @hrTrabalhada, @contato, @estado, @acompanhante from Abertura where ID_Chamado = @id
go
-----------------------------------------------------------------------------------------------
go
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
-----------------------------------------------------------------------------------------------
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
	@KM_Saida int,
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
go
create procedure usp_ProcurarLoginFunc
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
go
create procedure usp_ProcurarLoginMot
@usu varchar(50),
@senha varchar(50)
AS
Declare @contagem int,@mensagem char(1) 
	select @contagem = count(*) from Funcionario where Usuario = @usu and Senha = @senha and Cargo like 'Motorista'
	If @contagem = 0 
		Begin
			Select 'F' as 'T/F'
		End
		else
  			Select Cargo, Nome, ID_Funcionario, Primeiro_Cadastro, 'T' as 'T/F' from Funcionario where Usuario = @usu and Senha = @senha
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodosClientes
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarClientesNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Nome like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarClientesEmail
@email varchar(100)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Email like '%' + @email + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarClientesTelefone
@tel varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF != '-' and Telefone like '%' + @tel + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarClientesCPF
@cpf varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where CPF like '%' + @cpf + '%'
go

--------------------------Empresas---------------------------------
go
create procedure usp_PesquisarTodasEmpresas
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarEmpresasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Nome like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarEmpresasEmail
@email varchar(100)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Email like '%' + @email + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarEmpresasTelefone
@tel varchar(14)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and c.Telefone like '%' + @tel + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarEmpresasCNPJ
@cnpj varchar(18)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and e.CNPJ like '%' + @cnpj + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarEmpresasIE
@ie varchar(255)
as
	select Nome, Email as 'E-Mail', Telefone, e.IE as 'I.E.', e.CNPJ from Cliente as c inner join Empresa as e on c.ID_Cliente = e.ID_Cliente where c.CPF like '-' and e.IE like '%' + @ie + '%'
go

------------------Funcionário-----------------
go
create procedure usp_PesquisarTodosFuncionarios
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Salário' from Funcionario 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodosFuncionariosB
as
	select * from Funcionario 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarFuncionariosNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Salário' from Funcionario where Nome like '%' + @nome + '%' 
go

-------------------Adicionais-----------------
go
create procedure usp_PesquisarTodosAdicionais
as
	select Nome, Preco from Adicionais 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarAdicionaisNome
@nome varchar(50)
as
	select Nome, Preco from Adicionais where Nome like '%' + @nome + '%' 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarAdicionaisPreco
@preco money
as
	select Nome, Preco from Adicionais where Preco like '%' + @preco + '%' 
go

--------------------Pedidos----------------
go
create procedure usp_PesquisarClientesEmpresas
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarClientesEmpresasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, CPF from Cliente where Nome like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarIdClientesNomeChamada
@nome varchar(50)
as
	select * from Cliente where Nome like @nome 
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarFuncionariosMotoristas
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Salário' from Funcionario where Cargo like 'Motorista'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarFuncionariosMotoristasNome
@nome varchar(50)
as
	select Nome, Email as 'E-Mail', Telefone, Cargo, Telefone_Conjuge as 'Telefone Conjuge', Numero_Documento as 'RG', Salario as 'Salário' from Funcionario where Cargo like 'Motorista' and Nome like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_ProcurarId_Motoristas_Nome
@nome varchar(50)
as
	select ID_Funcionario from Funcionario where Cargo like 'Motorista' and Nome like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodosCaminhoesChamada
as
	select Marca, Modelo, Cor, Placa, Ano, KM_Rodados from Caminhao
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodosCaminhoesChamadaPlaca
@placa varchar(8)
as
	select Marca, Modelo, Cor, Placa, Ano, KM_Rodados from Caminhao where Placa like '%' + @placa + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarIdTodosCaminhoesChamada
as
	select * from Caminhao
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarIdCaminhoesChamadaPlaca
@placa varchar(8)
as
	select * from Caminhao where Placa like '%' + @placa + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadas
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadasData
@data varchar(10)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Data_Servico like '%' + @data + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadasPlacaCarro
@placa varchar(10)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Placa like '%' + @placa + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadasModelo
@modelo varchar(50)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Modelo like '%' + @modelo + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadasMotorista
@nome varchar(50)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) like '%' + @nome + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarTodasAsChamadasDestino
@destino varchar(255)
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista, (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Placa, a.Modelo, a.Data_Servico as Data from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado where (Select top 1 Endereco from Destino as d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) like '%' + @destino + '%'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_UltimoIdChamadas
as
declare @ultimo_id int = (select top 1 ID_Chamado from Abertura order by ID_Chamado desc), @id int
	select @ultimo_id as ID
go
----------------------Home-----------------------
go
create procedure usp_PesquisarChamadasDataFechados
@data varchar(10)
as
	select a.ID_Chamado, (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, a.Placa, a.Modelo, a.Marca from Abertura as a right join Fechamento as f on a.ID_Chamado = f.ID_Chamado where a.Data_Servico like @data
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarChamadasDataAbertos
@data varchar(10)
as
	select a.ID_Chamado as id,(Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as Cliente, a.Placa, a.Modelo, a.Marca, 
		(Select Count(*) from Cliente as c inner join Abertura as ab on ab.ID_Cliente = c.ID_Cliente where ab.ID_Chamado in 
			(Select ID_Chamado FROM Funcionario_Abertura) and ab.ID_Chamado = a.ID_Chamado) as 'Mot' from Abertura as a 
				where ID_Chamado not in (select ID_Chamado from Fechamento) and a.Data_Servico like @data
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_ConsultaUltimaAberturaporCPF
	@cpf varchar(14)
as 
	SELECT top 1 a.* FROM Abertura AS a INNER JOIN Cliente AS p ON p.ID_Cliente = a.ID_Cliente
		where p.CPF like @cpf order by a.ID_Chamado desc
go 

----------------Alterar---------------------
go
create procedure usp_AlterarSenhaPC
@senha varchar(200),
@id int
as
update Funcionario set Senha = @senha, Primeiro_Cadastro = 'N' where ID_Funcionario = @id
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_AlterarLoginPC
@login varchar(200),
@id int
as
update Funcionario set Usuario = @login where ID_Funcionario = @id
go
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------
go
create procedure usp_AlterarFuncionario
	@nome varchar(50),
	@cargo varchar(30),
	@salario money,
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
-----------------------------------------------------------------------------------------------
go
create procedure usp_AlterarAdicionais
@nome varchar(50),
@preco money,
@nomeOld varchar(50),
@precoOld varchar(10)
as
	update Adicionais set Nome = @nome, Preco = @preco where Nome like @nomeOld and Preco like @precoOld
go
-----------------------------------------------------------------------------------------------
go
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
-----------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
go
create procedure usp_QtdeEntregasMotorista
	@ID_Funcionario int
as
	select count(ID_Funcionario_Abertura) as qtde from Funcionario_Abertura
		where ID_Funcionario = @ID_Funcionario
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_AtendimentosPorAtendente
	@NomeAtendente varchar(50)
as
	select count(ID_Chamado) as qtde from Abertura
		where Atendente like @NomeAtendente
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_SalarioPorFaixaDePreco
	@de int,
	@ate int
as
	select Salario as valor from Funcionario where Salario between @de and @ate
go
-----------------------------------------------------------------------------------------------
go 
create procedure usp_GastosDeCombustivelPorIntervaloDeTempo
	@data1 date,
	@data2 date
as
	declare @preco_combustivel int;
	declare @ultimo_km int;
	declare @primeiro_km int;
	declare @km_total int;
	declare @gasto_total int;
		set @preco_combustivel = 4
		set	@ultimo_KM = (select top 1 ID_Chamado as ID from Fechamento where Data_Servico between '12/05/2017' and '25/01/2018' 
								order by KM_Chegada desc)
		set	@primeiro_KM = (select top 1 ID_Chamado as ID from Abertura where Data_Servico between '12/05/2017' and '25/01/2018'
									order by KM_Saida)
		set @gasto_total = (@ultimo_km - @primeiro_km) * @preco_combustivel
		print @gasto_total
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_AdicionaisEmCadaIntervaloDeTempo
	@data1 date,
	@data2 date
as
declare @data varchar(10) = (select top 1 Data_Servico from Abertura),
		@data1c varchar(10)= (convert(varchar, @data1, 103)),
		@data2c varchar(10)= convert(varchar, @data2, 103)

	select count(ID_Adicional_Abertura) as qtde from Adicional_Abertura as aa
		inner join Abertura as a on aa.ID_Abertura = a.ID_Chamado
			where month((select Data_Servico from Abertura where ID_Chamado = a.ID_Chamado)) between
				month((convert(date, @data1c, 103))) and month(convert(date, @data2c, 103))
go

exec usp_AdicionaisEmCadaIntervaloDeTempo '12/01/1900', '13/12/3000'
-----------------------------------------------------------------------------------------------
go
create procedure usp_SomaGastosPrecoCombIntervaloDeTempo
	@data1 date,
	@data2 date,
	@preco_comb decimal(5,2)
as
declare @data varchar(10) = (select top 1 Data_Servico from Abertura),
		@data1c varchar(10)= (convert(varchar, @data1, 103)),
		@data2c varchar(10)= convert(varchar, @data2, 103),
		@ultimo_KM int,
		@primeiro_KM int,
		@gasto_total float,
		@sal decimal(10,2)

			set	@ultimo_KM = (select top 1 KM_Chegada as 'KM de Chegada'
									from Fechamento where Data_Servico between '12/05/2017' and '25/01/2018')
			set @primeiro_KM = (select top 1 KM_Saida as 'KM de Saida'
									from Abertura where Data_Servico between '12/05/2017' and '25/01/2018' order by KM_Saida)

			set @gasto_total = (@ultimo_km - @primeiro_km) * @preco_comb
			
			set @sal = (select Sum(salario) from Funcionario)

			select distinct @sal + @gasto_total from Abertura as a where month((select Data_Servico from Abertura where ID_Chamado = a.ID_Chamado)) between
				month((convert(date, @data1c, 103))) and month(convert(date, @data2c, 103))
go

exec usp_SomaGastosPrecoCombIntervaloDeTempo '12/01/1900', '13/12/3000', 10

go
create procedure usp_InserirFuncAberAndroid
@id_Motorista int,
@ultimo_idAbertura int
as
	declare @ultimo_id int = (select top 1 ID_Funcionario_Abertura from Funcionario_Abertura order by ID_Funcionario_Abertura desc), @id int

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

create procedure usp_PesquisarRelatorio
as
	select (Select Nome from Cliente as c where c.ID_Cliente = a.ID_Cliente) as 'Cliente', (Select Placa from Caminhao ca where ca.ID_Caminhao = a.ID_Caminhao) as 'Placa Caminhão', (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as 'Motorista', a.Placa as 'Placa', a.Modelo as 'Modelo', a.Cor 'Cor', a.Ano 'Ano', a.Apolice 'Apolice', a.Marca 'Marca', a.Contato 'Contato', a.Data_Servico 'Data' from Fechamento as a full outer join Fechamento as f on a.ID_Chamado = f.ID_Chamado
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarDestinoId_Chamada
@id int
as
	select d.Endereco from Destino as d where d.ID_Chamado = @id
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarAcessoriosId_Chamada
@id int
as
	select * from Acessorios as a where a.ID_Chamado = @id
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PesquisarAberturas
as
	select (Select Nome from Cliente c where c.ID_Cliente = a.ID_Cliente) as Cliente, (Select top 1 Endereco from Destino d where d.ID_Chamado = a.ID_Chamado order by d.ID_Destino desc) as 'Destino Final', a.Modelo as Modelo, (Select Nome from Funcionario as m inner join Funcionario_Abertura fa on m.ID_Funcionario = fa.ID_Funcionario where fa.ID_Chamado = a.ID_Chamado) as Motorista,  a.Placa as Placa from Abertura as a 
go

-----------------------------------------		
/*Procedures para java*/
-----------------------------------------
go

/*Vendas*/
go
create procedure usp_PedidoEntre10he12h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '10:00' and '11:59'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre12he14h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '12:00' and '13:59'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre14he16h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '14:00' and '15:59'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre16he18h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '16:00' and '17:59'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre18he20h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '18:00' and '19:59'
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre20he22h
as
	select count(ID_Chamado) as qtde from Abertura where Hora_Saida between '20:00' and '22:00'
-----------------------------------------------------------------------------------------------
go
create procedure usp_QtdeServiços
@tIn varchar(10),
@tFim varchar(10)
as 
select count(*) as qtde from Abertura where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)

go
create procedure usp_QtdeDeServicosPorDeterminadoPeriodo
	@data1 varchar(10),
	@data2 varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Data_Servico LIKE '%' 
		and convert(date, Data_Servico, 103) BETWEEN 
			convert(date, @data1, 103) and convert(date, @data2, 103);
go

create procedure usp_QtdeAdicionaisAbertura

@tIn varchar(10),
@tFim varchar(10)
as
select  a.Nome ,count(*)/3 as qtde from Adicional_Abertura as ad inner join Abertura as ab on ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) inner join Adicionais as a on a.ID_Adicionais = ad.ID_Abertura group by a.nome
go
create procedure usp_AdicionaisPeriodo
@tIn varchar(10),
@tFim varchar(10)
as 
select  a.Nome, REPLACE(REPLACE(a.Preco,'R$',''),',00','')*count(*)/3 as qtde from Adicional_Abertura as ad
 inner join Abertura as ab on ab.ID_Chamado = ad.ID_Abertura and ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
  inner join Adicionais as a on a.ID_Adicionais = ad.ID_Abertura group by a.Nome, a.Preco
go 
create procedure usp_PrimeiroFechamentoData
as 
SELECT top 1  Data_Servico FROM Fechamento ORDER BY CONVERT(DATE, Data_Servico, 103) ASC
go 
create procedure usp_QtdeFechamento
@tIn varchar(10),
@tFim varchar(10)
as
select count(*) as qtde from Fechamento where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go 
create procedure usp_KmPeriodo
@tIn varchar(10),
@tFim varchar(10)
as 
select sum(Convert(float,KM_Chegada))-sum (Convert (float,KM_Saida)) as qtde from Fechamento  where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
/*Despesas*/
go
create procedure usp_QtdeSalario
@preçoIn varchar(8),
@preçoFim varchar(8)
as
	select count(*) as qtde from Funcionario 
	where REPLACE(REPLACE(Salario,'R$',''),'.','') <= Convert (float,@preçoFim) and REPLACE(REPLACE(Salario,'R$',''),'.','') > Convert (float,@preçoIn)
go
create procedure usp_SalarioFuncionarios
as
    select nome, Salario as qtde from Funcionario
go
create procedure usp_GasolinaPeriodo
@tIn varchar(10),
@tFim varchar(10)
as 
	select sum(((Convert (float,KM_Chegada)-Convert (float,KM_Saida))/10)* 4.344) as qtde  from Fechamento where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) 
go 
create procedure usp_GastoSalario
@mes numeric
as
	select sum(Convert(numeric,REPLACE(REPLACE(Salario,'R$',''),'.','')))*@mes as qtde from Funcionario
go


/*Funcionarios*/
go
create procedure usp_QtdeAberturasMotoristas
@tIn varchar(10),
@tFim varchar(10)
as
select f.Nome,count(*) as qtde from Funcionario_Abertura as a  inner join Funcionario as f on CNH != '' and a.ID_Funcionario = f.ID_Funcionario inner join Abertura as ab on a.ID_Chamado = ab.ID_Chamado and  ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) group by f.Nome
go
create procedure usp_AtendimentosAtendente
@tIn varchar(10),
@tFim varchar(10)
as
	select Atendente as nome,count(*) as qtde from Fechamento where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) group by Atendente order by qtde desc
go

/*Caminhão*/
go 
create procedure usp_InserirCaminhao

@marca varchar(30),
@modelo varchar(20),
@cor varchar(10),
@placa varchar(8),
@ano varchar(4),
@Km varchar(7)
as 
declare @ultimo_id int = (select top 1 ID_Caminhao from Caminhao order by ID_Caminhao desc),@id numeric
	if @ultimo_id=0
	begin
		set @id = 1
	end
	else
	begin
		set @id = @ultimo_id + 1
	end
insert into Caminhao values(@id , @marca , @modelo, @cor, @placa,@ano,@Km)

go
create Procedure usp_DeleteCaminhao
@id numeric
as

delete Destino from Destino as d inner join Abertura as a on d.ID_Chamado = a.ID_Chamado and a.ID_Caminhao = @id
delete Declaracao from Declaracao as d inner join Abertura as a on d.ID_Chamado = a.ID_Chamado and ID_Caminhao = @id
delete Acessorios from Acessorios as ses inner join Abertura as a on ses.ID_Chamado = a.ID_Chamado and a.ID_Caminhao = @id
delete Funcionario_Abertura from Funcionario_Abertura as f inner join Abertura as a on f.ID_Chamado = a.ID_Chamado and a.ID_Caminhao = @id
delete Adicional_Abertura from Adicional_Abertura as ad inner join Abertura as a on ad.ID_Abertura = a.ID_Chamado and a.ID_Caminhao = @id
delete from Abertura where ID_Caminhao = @id
delete from Fechamento where ID_Caminhao = @id
delete from caminhao where ID_Caminhao = @id
go
create procedure usp_AlterarCaminhao
@id numeric,
@marca varchar(30),
@modelo varchar(20),
@cor varchar(10),
@placa varchar(8),
@ano varchar(4),
@Km varchar(7)
as
	update Caminhao set Marca = @marca, Modelo= @modelo,Cor=@cor,Placa=@placa,Ano=@ano,KM_Rodados = @Km where ID_Caminhao = @id 
/*Testes*/
 go 
 /*Vendas*/
exec usp_PedidoEntre20he22h
exec usp_QtdeServiços '01/12/2015','01/03/2016'
select * from Abertura
exec usp_QtdeAdicionaisAbertura '10/10/2014','10/10/2019'
exec usp_AdicionaisPeriodo '10/12/2015','10/01/2016'
exec usp_PrimeiroFechamentoData 
exec usp_QtdeFechamento '01/12/2015','01/03/2019'
exec usp_KmPeriodo '01/12/2015','01/03/2019'
/*Despesas*/
exec usp_QtdeSalario '16000','20000'
exec usp_SalarioFuncionarios
exec usp_GasolinaPeriodo '10/10/2014','10/10/2019'
exec usp_GastoSalario '1'
/*Funcionarios*/
exec usp_QtdeAberturasMotoristas '10/10/2014','10/10/2019'
exec usp_AtendimentosAtendente '10/10/2014','10/10/2019'
/*Caminhao*/
exec usp_InserirCaminhao  'Pejo' , '666', 'Azu', 'MQK-7060','2000','120000'
exec usp_DeleteCaminhao '0'/*esse delete apaga geral que tiver esse numero ai CUIDADO!*/
exec usp_AlterarCaminhao '4','Pejo' , '666', 'Azu', 'MQK-7060','2000','120000'
