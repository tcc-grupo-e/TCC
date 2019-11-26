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
	(3, 'Maria Lacia Melo', '(11)97542-9492', 'm_lucia10@outlook.com', '258.651.722-89'),
	(4, 'Nair e Analu Pizzaria Ltda', '(19) 3766-7731', 'estoque_nair@analupizzarialtda.com', '-'),
	(5, 'Elisa e Rita Entregas Expressas ME', '(11) 3664-1939', 'comunicacoes_elisa@eritaentregasexpressasme.com', '-'),
	(6, 'Allana Bruna Santos', '(65) 3611-5303', 'aallanabrunas_imoneoliveira@msaengenharia.com', '236.823.770-42'),
	(7, 'Mariana Letícia Melo', '(21) 3685-7830', 'mmariana_leticiamelo@mega.com', '316.761.407-27'),
	(8, 'Felipe e Martin Marketing Ltda', '(11) 3530-1997', 'fiscal_felipe@emartinmarketingltda.com', '-'),
	(9, 'Betina e Cauê Ferragens Ltda', '(11) 3835-2558', 'manutencao_betina@ecaueferragensltda.com', '-'),
	(10, 'Son Goku', '(81) 2702-9191', 'son_goku@gmail.com', '488.580.373-08'),
	(11, 'Yago e Gabriela Alimentos ME', '(11) 3723-2492', 'administracao_yg@yagoegabrielaalimentosme.com', '-'),
	(12, 'Sophia e Laura Filmagens Ltda', '(19) 3556-9025', 'estoque_sl@sophiaelaurafilmagensltda.com', '-'),
	(13, 'Malu Mirella Pereira', '(69) 2699-5816', 'mmalumirella_sophiaaragao@tjsp.jus.br', '592.313.499-37'),
	(14, 'Hugo Sebastião Ferreira', '(79) 3984-3264', 'hugosebastiaorenan_goncalves@pgpci.com', '279.045.471-04'),
	(15, 'Laís e Kaique Entulhos ME', '(18) 2811-9205', 'suporte_lk@laisekaiqueentulhosme.com', '-'),
	(16, 'Breno e Yuri Lavanderia ME', '(11) 2803-8347', 'fiscal_by@brenoeyurilavanderiame.com', '-'),
	(17, 'César Manuel Braga', '(27) 3601-7282', 'cesarmanuel_tiagosilveira-88@iq.unesp.com', '283.604.608-25'),
	(18, 'Thiago Alexandre Honda', '(51) 3736-1545', 'tthiagoalexandre_joaquimramos@sefaz.com', '862.182.704-24'),
	(19, 'Augusto e Paulo Mudanças Ltda', '(11) 2690-5820', 'treinamento_ap@augustoepaulomudancasltda.com', '-'),
	(20, 'Calebe e Laura Consultoria Financeira ME', '(18) 3934-9658', 'qualidade_cc@calebeelauraconsultoriafinanceirame.com', '-')

--------------------------------------------------------------------------------
go
create table Empresa(
	ID_Cliente int primary key,
	IE varchar(255),
	CNPJ varchar(18),
)
go
insert into Empresa values
	(2, '641.090.339.426', '70.957.494/0001-82'),
	(4, '662.333.009.960', '95.644.239/0001-00'),
	(5, '362.198.571.832', '31.358.013/0001-60'),
	(8, '513.594.594.148', '54.651.323/0001-74'),
	(9, '261.902.682.253', '98.606.462/0001-51'),
	(11, '443.997.818.214', '95.998.226/0001-30'),
	(12, '195.684.260.262', '75.240.224/0001-70'),
	(15, '701.680.224.401', '19.262.036/0001-71'),
	(16, '378.764.233.043', '52.385.303/0001-73'),
	(19, '801.256.210.069', '35.369.622/0001-76'),
	(20, '374.165.691.022', '68.844.421/0001-32')
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
	(1, 'Volkswagen', '8160', 'Branco', 'BZD-4574', '2014', '120000'),
	(2, 'Mercedes', 'Atron 6283', 'Azul', 'MRW-3636', '2008', '110000'),
	(3, 'Mercedes', 'Axor 5479', 'Branco', 'HWV-7973', '2009', '100000'),
	(4, 'Mercedes', 'Accelo 7852', 'Preto', 'MSN-9566', '2007', '120000'),
	(5, 'Mercedes', 'Actros 4527', 'Verde', 'JKZ-0254', '2005', '110000'),
	(6, 'Mercedes', 'Atego 9520', 'Amarelo', 'CRF-3073', '2015', '120000'),
	(7, 'Volks', '8150', 'Bege', 'AHB-5651', '2016', '120000'),
	(8, 'Mercedes', '710', 'Cinza', 'MVQ-5407', '2011', '120000'),
	(9, 'Volvo', 'FH 460', 'Preto', 'MNN-0567', '2010', '110000'),
	(10, 'Scania', 'R440', 'Vermelho', 'MUR-0446', '2012', '120000'),
	(11, 'Maserati', 'GT Cup', 'Amarelo', 'NAW-7790', '1999', '130000'),
	(12, 'Agrale', 'MARRU', 'Dourado', 'KWA-0541', '2004', '110000'),
	(13, 'Rover', 'Mini Cooper', 'Preto', 'JEA-4553', '1992', '140000'),
	(14, 'Hyundai', 'HB20S', 'Azul', 'NES-5936', '2014', '150000'),
	(15, 'JPX', 'Jipe', 'Vermelho', 'HVQ-7645', '1994', '100000'),
	(16, 'GM Chevrolet', 'Astra', 'Laranja', 'HQL-5800', '2002', '110000'),
	(17, 'Seat', 'Ibiza', 'Cinza', 'KOG-1504', '1994', '100000'),
	(18, 'Daewoo', 'Prince', 'Bege', 'KJK-8391', '1994', '90000'),
	(19, 'Land Rover', 'Range', 'Vermelho', 'MYY-7916', '2012', '140000'),
	(20, 'Audi', 'A4', 'Cinza', 'HTR-1005', '1997', '120000')
	
	
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
(1, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '4109', '26/02/2016', 'Citroen', 'HB20', 'Vinho', '2000', 'PIE-907',35000, '22:42', 'Sem um parafuso direita atraz'),
(2, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '8309', '26/06/2015', 'Ford', 'Gol', 'Prata', '2000', 'PIE-292',44000, '22:01', 'Tudo certo'),
(3, 3, 3, 'Rua21', 'Leonardo Teixeira', '8285', '15/09/2017', 'Volkswagen', 'Onix', 'Preto', '2001', 'PIE-796',47000, '08:54', 'Tudo certo'),
(4, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '159', '20/08/2014', 'Mercedes', 'Prisma', 'Preto', '2000', 'PIE-306',18000, '08:16', 'Escapamento com defeito'),
(5, 5, 5, 'Rua41', 'Gustavo Honda', '1803', '21/04/2017', 'Honda', 'Prisma', 'Vinho', '2000', 'PIE-889',30000, '10:49', 'Sem um parafuso direita atraz'),
(6, 6, 6, 'Rua51', 'Rafael Hadzic', '4865', '15/11/2017', 'Ford', 'Prisma', 'Preto', '2002', 'PIE-999',7000, '20:54', 'rádio imbutido'),
(7, 7, 7, 'Rua61', 'Rafael Hadzic', '1720', '13/03/2015', 'Volkswagen', 'Kwid', 'Branco', '2001', 'PIE-920',53000, '01:35', 'Escapamento com defeito'),
(8, 1, 1, 'Rua01', 'Leonardo Teixeira', '5821', '06/06/2015', 'Volkswagen', 'Prisma', 'Cinza', '2000', 'PIE-139',99000, '20:37', 'Placa esta à cair'),
(9, 2, 2, 'Rua11', 'Nicolas Castro', '2948', '25/02/2014', 'Citroen', 'Argo', 'Preto', '2002', 'PIE-444',82000, '09:10', 'Escapamento com defeito'),
(10, 3, 3, 'Rua21', 'Ederson Gonzaga', '9831', '14/01/2014', 'Chevrolet', 'Prisma', 'Cinza', '2002', 'PIE-884',22000, '01:24', 'Escapamento com defeito'),
(11, 4, 4, 'Rua31', 'Gustavo Honda', '5093', '07/07/2016', 'Citroen', 'Argo', 'Preto', '2003', 'PIE-546',30000, '16:28', 'Retrovisor quebrado'),
(12, 5, 5, 'Rua41', 'Ederson Gonzaga', '2937', '24/03/2018', 'Mercedes', 'Onix', 'Cinza', '2003', 'PIE-710',5000, '16:27', 'Tudo certo'),
(13, 6, 6, 'Rua51', 'Rafael Hadzic', '1654', '04/11/2017', 'Honda', 'Onix', 'Vinho', '2003', 'PIE-49',99000, '22:31', 'Escapamento com defeito'),
(14, 7, 7, 'Rua61', 'Gustavo Honda', '9199', '25/05/2014', 'Mercedes', 'HB20', 'Branco', '2001', 'PIE-413',85000, '21:09', 'rádio imbutido'),
(15, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '5459', '03/03/2015', 'Audi', 'Gol', 'Vinho', '2003', 'PIE-580',25000, '15:50', 'rádio imbutido'),
(16, 2, 2, 'Rua11', 'Gabriel Gameiro', '2591', '13/03/2014', 'Audi', 'Kwid', 'Prata', '2002', 'PIE-366',10000, '23:33', 'rádio imbutido'),
(17, 3, 3, 'Rua21', 'Leonardo Teixeira', '9221', '04/06/2018', 'Honda', 'Prisma', 'Prata', '2003', 'PIE-377',46000, '19:51', 'Retrovisor quebrado'),
(18, 4, 4, 'Rua31', 'Ederson Gonzaga', '3282', '21/03/2014', 'Citroen', 'Kwid', 'Preto', '2002', 'PIE-616',67000, '10:24', 'rádio imbutido'),
(19, 5, 5, 'Rua41', 'Gustavo Honda', '9779', '04/11/2017', 'Chevrolet', 'Argo', 'Branco', '2001', 'PIE-249',18000, '11:44', 'Retrovisor quebrado'),
(20, 6, 6, 'Rua51', 'Leonardo Teixeira', '361', '07/03/2015', 'Chevrolet', 'Onix', 'Azul', '2004', 'PIE-319',30000, '08:23', 'rádio imbutido'),
(21, 7, 7, 'Rua61', 'Gabriel Gameiro', '9010', '16/02/2018', 'Honda', 'HB20', 'Preto', '2001', 'PIE-601',54000, '19:58', 'Tudo certo'),
(22, 1, 1, 'Rua01', 'Rafael Hadzic', '3543', '08/11/2018', 'Chevrolet', 'Ka', 'Cinza', '2001', 'PIE-288',34000, '10:53', 'Vidro trincado'),
(23, 2, 2, 'Rua11', 'Nicolas Castro', '3426', '04/01/2017', 'Audi', 'HB20', 'Preto', '2003', 'PIE-848',5000, '23:15', 'Sem um parafuso direita atraz'),
(24, 3, 3, 'Rua21', 'Ederson Gonzaga', '6574', '20/05/2016', 'Honda', 'Ka', 'Prata', '2000', 'PIE-322',5000, '23:39', 'Sem um parafuso direita atraz'),
(25, 4, 4, 'Rua31', 'Gustavo Honda', '8266', '02/02/2018', 'Mercedes', 'Prisma', 'Vinho', '2001', 'PIE-20',36000, '04:29', 'Tudo certo'),
(26, 5, 5, 'Rua41', 'Gabriel Gameiro', '4872', '15/02/2015', 'Mercedes', 'Kwid', 'Vermelho', '2004', 'PIE-197',3000, '14:50', 'rádio imbutido'),
(27, 6, 6, 'Rua51', 'Nicolas Castro', '317', '02/04/2015', 'Audi', 'Onix', 'Prata', '2004', 'PIE-697',71000, '06:15', 'rádio imbutido'),
(28, 7, 7, 'Rua61', 'Rafael Hadzic', '9518', '05/02/2018', 'Audi', 'Kwid', 'Prata', '2002', 'PIE-998',49000, '14:45', 'Tudo certo'),
(29, 1, 1, 'Rua01', 'Ederson Gonzaga', '6851', '04/09/2014', 'Audi', 'Prisma', 'Preto', '2004', 'PIE-818',17000, '12:18', 'Vidro trincado'),
(30, 2, 2, 'Rua11', 'Gustavo Honda', '8924', '20/06/2017', 'Citroen', 'Gol', 'Preto', '2004', 'PIE-665',10000, '01:32', 'Vidro trincado'),
(31, 3, 3, 'Rua21', 'Leonardo Teixeira', '5867', '18/05/2015', 'Mercedes', 'HB20', 'Vermelho', '2003', 'PIE-216',6000, '12:39', 'Sem um parafuso direita atraz')
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
	Estado_Veiculo varchar(50),
	Acompanhado varchar(3),
)
go
--insert into Fechamento values
--	(1, 1, 1, 'Rua Faceten', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
--	78000, '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor', 80040, '20:30', '0:20',
--	'1:40', 'Robson Santos Onix', 'Danificado mecanicamente', 'Não'),
--	(2, 2, 3, 'Rua Piquiá', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
--	24500, '14:00', 'O veículo se encontra com uma batida na porta lateral esquerda', 25550, '17:00', '1:30', '1:30', 'Localiza',
--	'Danificado estéticamente', 'Sim'),
--	(3, 3, 2, 'Rua Humberto Correia 1792', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
--	8500, '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens', 8920,
--	'10:30', '0:00', '1:00', 'Maria Lúcia Mustang', 'Não danificado', 'Não'),
--	(4, 4, 8, 'Rua Cafarnaum', 'Jesus', '961054684', '25/12/2017', 'Mercedes', 'Ferrari', 'Branco', '2012', 'GOD-1313',
--	85000, '00:25', 'O veí­culo está em um estado impecável, e o serviço foi solicitado apenas para transporte de garagens', 95040,
--	'05:30', '7:40', '1:50', 'Nair e Analu Pizzaria Ltda', 'Danificado mecanicamente', 'Não'),
--	(5, 5, 10, 'Rua Trinta e Dois', 'Goku', '742246217', '07/10/2016', 'Ford', 'Mustang GT', 'Amarelo', '2014', 'KAM-3414',
--	75000, '20:15', 'O veí­culo está em um estado lámentavel, se encontra com batidas em várias partes, serviço solicitado foi o de reboque', 85050,
--	'00:30', '2:00', '1:30', 'Elisa e Rita Entregas Expressas ME', 'Danificado mecanicamente', 'Não'),
--	(6, 6, 4, 'Rua Estefano Kusnick', 'Jean', '823482456', '01/11/2019', 'Chevrolet', 'Camaro', 'Vermelho', '2018', 'JAN-5671',
--	65000, '23:50', 'É verificável que a indiligência do condutor levou o veículo a uma série de arranhões e pancadas, serviço solicitado foi o de reboque', 70050,
--	'01:30', '02:40', '1:10', 'Allana Bruna Santos', 'Danificado mecanicamente', 'Não'),
--	(7, 7, 5, 'Rua Ministro Salgado Filho', 'Link', '431795531', '25/10/2018', 'Volkswagen', 'Horse', 'Verde', '2017', 'EPO-7643',
--	45000, '14:20', 'Veículo em boas condições,e o serviço foi solicitado apenas para transporte de garagens', 51000,
--	'17:30', '20:40', '2:50', 'Mariana Letícia Melo', 'Danificado mecanicamente', 'Sim'),
--	(8, 8, 6, 'Avenida Dom João VI', 'Michael', '812345723', '17/08/2016', 'Volvo', 'XC60', 'Vermelho', '2015', 'TOF-3291',
--	35000, '01:30', 'Veículo em condições críticas, serviço solicitado foi o de reboque', 40000,
--	'02:30', '04:00', '2:00', 'Felipe e Martin Marketing Ltda', 'Danificado mecanicamente', 'Sim'),
--	(9, 9, 7, 'Rua Engenho Bom Futuro', 'Saitama', '324671266', '02/05/2015', 'Mercedes', 'Classe S', 'Preto', '2015', 'ONE-1111',
--	62500, '15:40', 'Veículo em ótimas condições apenas com um pneu furado, serviço de troca de pneu solicitado', 70540,
--	'18:30', '20:00', '1:50', 'Betina e Cauê Ferragens Ltda', 'Danificado mecanicamente', 'Não'),
--	(10, 10, 9, 'Rua Felipe dos Santos', 'Sanji', '012342489', '10/07/2015', 'Mercedes', 'Classe G', 'Cinza', '2010', 'PIE-9752',
--	73500, '12:45', 'Veículo em ótimas condições com falta de combustível, serviço de pane seca solicitado', 78530,
--	'14:30', '16:00', '2:30', 'Son Goku', 'Danificado mecanicamente', 'Sim'),
--	(11, 11, 12, 'Rua Chalanger', 'Eduardo', '256212489', '09/06/2012', 'Agrale', 'MARRU', 'Dourado', '1997', 'KWA-0541',
--	76500, '13:50', 'O veí­culo se encontra com uma batida na porta lateral esquerda.', 78500,
--	'15:30', '18:00', '3:30', 'André', 'Danificado mecanicamente', 'Sim'),
--	(12, 12, 11, 'Rua Fluminense', 'Leonardo', '346212949', '02/04/2015', 'Maserati', 'GT Cup', 'Amarelo', '1999', 'NAW-7790',
--	61200, '10:00', 'O veí­culo se encontra com uma batida na porta lateral direita.', 70550,
--	'15:30', '20:00', '4:50', 'Geraldo', 'Danificado mecanicamente', 'Sim'),
--	(13, 13, 14, 'Rua Maria de Lourdes Pimentel', 'Sandro', '745723167', '01/07/2010', 'Hyundai', 'HB20S', 'Azul', '2014', 'NES-5936',
--	52000, '09:00', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 60410,
--	'17:30', '21:00', '4:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
--	(14, 14, 13, 'Rua Arseno Rodrigues', 'Flávio', '521578321', '05/08/2016', 'Rover', 'Mini Cooper', 'Preto', '1992', 'JEA-4553',
--	64500, '08:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.', 70030,
--	'10:30', '12:00', '5:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
--	(15, 15, 16, 'Avenida Fernando de Noronha', 'Rodrigo', '432464212', '06/04/2013', 'GM Chevrolet', 'Astra', 'Laranja', '2002', 'HQL-5800',
--	77500, '09:40', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 90020,
--	'10:30', '12:00', '5:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
--	(16, 16, 15, 'Rua Doutor Arlindo Sodré', 'Seará', '221456812', '17/09/2017', 'JPX', 'Jipe', 'Vermelho', '1994', 'HVQ-7645',
--	80500, '11:42', 'O veí­culo está em perfeito estado, e o serviço foi solicitado apenas para transporte de garagens.', 90050,
--	'13:30', '15:00', '3:00', 'Guilherme', 'Não danificado', 'Não'),
--	(17, 17, 18, 'Rua Visconde de Taunay', 'Byron', '721375421', '18/11/2017', 'Daewoo', 'Prince', 'Bege', '1994', 'KJK-8391',
--	81200, '12:50', 'Veículo em ótimas condições com falta de combustível, serviço de pane seca solicitado', 100050,
--	'10:30', '14:00', '4:00', 'Tânia', 'Não danificado', 'Não'),
--	(18, 18, 17, 'Rua Antônio Leão de Melo', 'Matheus', '998216312', '22/12/2017', 'Seat', 'Ibiza', 'Cinza', '1995', 'KOG-1504',
--	54100, '13:46', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.', 90090,
--	'15:30', '18:00', '2:30', 'Pedro', 'Não danificado', 'Não'),
--	(19, 19, 20, 'Rua Wilson Almeida Santana', 'Akira', '478211544', '27/09/2018', 'Audi', 'A4', 'Cinza', '1997', 'HTR-1005',
--	63700, '09:50', 'O veí­culo se encontra com uma batida na porta lateral direita.', 85090,
--	'11:20', '13:00', '2:40', 'Marcel', 'Danificado mecanicamente', 'Sim'),
--	(20, 20, 19, 'Rua Abdon Assis Inojosa Andrade', 'Ryo', '278347128', '12/02/2019', 'Land Rover', 'Range', 'Vermelho', '2012', 'MYY-7916',
--	76500, '15:20', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 105090,
--	'18:20', '22:50', '4:30', 'Fred', 'Danificado mecanicamente', 'Não')

insert into Fechamento values
(1, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '5238', '27/10/2018', 'Ford', 'Prisma', 'Vinho', '2001', 'PIE-484',0, '13:18', 'Sem um parafuso direita atraz', 80 ,'5:33', '19:44', '18:20', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(2, 2, 2, 'Rua11', 'Rafael Hadzic', '9523', '27/03/2018', 'Honda', 'Argo', 'Preto', '2001', 'PIE-886',47000, '14:19', 'Retrovisor quebrado', 47060 ,'20:38', '23:19', '22:31', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(3, 3, 3, 'Rua21', 'Ederson Gonzaga', '4196', '24/11/2014', 'Honda', 'Argo', 'Vinho', '2002', 'PIE-18',3000, '7:29', 'Retrovisor quebrado', 3050 ,'22:3', '5:39', '12:22', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(4, 4, 4, 'Rua31', 'Gustavo Honda', '1121', '22/10/2014', 'Audi', 'Ka', 'Branco', '2003', 'PIE-212',86000, '5:10', 'Retrovisor quebrado', 86060 ,'17:48', '14:50', '22:28', 'Son Goku', 'Não danificado', 'sim'),
(5, 5, 5, 'Rua41', 'Leonardo Teixeira', '6596', '08/02/2016', 'Ford', 'Prisma', 'Azul', '2001', 'PIE-574',28000, '12:43', 'Placa esta à cair', 28020 ,'4:8', '16:14', '23:47', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(6, 6, 6, 'Rua51', 'Nicolas Castro', '2739', '11/02/2014', 'Honda', 'Argo', 'Cinza', '2004', 'PIE-996',93000, '6:51', 'rádio imbutido', 93060 ,'20:48', '8:3', '17:29', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(7, 7, 7, 'Rua61', 'Gustavo Honda', '4909', '26/10/2014', 'Honda', 'HB20', 'Branco', '2004', 'PIE-54',38000, '18:2', 'rádio imbutido', 38020 ,'20:37', '11:29', '22:48', 'Maria Lúcia Mustang', 'Não autorizado', 'não'),
(8, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '7813', '03/11/2016', 'Chevrolet', 'HB20', 'Branco', '2004', 'PIE-632',29000, '15:5', 'Retrovisor quebrado', 29080 ,'6:29', '14:9', '2:31', 'Son Goku', ' Não avaliado', 'sim'),
(9, 2, 2, 'Rua11', 'Gustavo Honda', '5379', '04/07/2017', 'Volkswagen', 'Kwid', 'Cinza', '2004', 'PIE-340',40000, '8:4', 'Sem um parafuso direita atraz', 40020 ,'23:46', '4:14', '3:58', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(10, 3, 3, 'Rua21', 'Gustavo Honda', '2049', '22/07/2018', 'Volkswagen', 'Prisma', 'Cinza', '2000', 'PIE-53',99000, '19:15', 'Sem um parafuso direita atraz', 99010 ,'10:42', '19:58', '8:7', 'Robson Santos Onix', 'Não danificado', 'não'),
(11, 4, 4, 'Rua31', 'Gustavo Honda', '5573', '07/03/2015', 'Volkswagen', 'Ka', 'Branco', '2003', 'PIE-144',55000, '13:31', 'Sem um parafuso direita atraz', 55070 ,'17:6', '7:25', '20:47', 'Son Goku', ' Não avaliado', 'não'),
(12, 5, 5, 'Rua41', 'Rafael Hadzic', '3958', '10/08/2016', 'Audi', 'Prisma', 'Vinho', '2003', 'PIE-233',80000, '9:31', 'Placa esta à cair', 80070 ,'12:38', '20:5', '11:26', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(13, 6, 6, 'Rua51', 'Gustavo Honda', '1653', '08/05/2018', 'Chevrolet', 'Argo', 'Azul', '2004', 'PIE-530',36000, '14:51', 'Escapamento com defeito', 36030 ,'23:33', '16:29', '2:42', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'não'),
(14, 7, 7, 'Rua61', 'Gabriel Gameiro', '2619', '10/01/2015', 'Chevrolet', 'Kwid', 'Branco', '2002', 'PIE-94',61000, '6:32', 'Escapamento com defeito', 61090 ,'15:17', '4:30', '13:43', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'não'),
(15, 1, 1, 'Rua01', 'Ederson Gonzaga', '377', '17/03/2017', 'Volkswagen', 'Ka', 'Azul', '2002', 'PIE-586',69000, '18:45', 'Tudo certo', 69040 ,'19:37', '8:55', '7:12', 'Son Goku', ' Não avaliado', 'sim'),
(16, 2, 2, 'Rua11', 'Leonardo Teixeira', '7666', '17/07/2018', 'Honda', 'Kwid', 'Preto', '2004', 'PIE-328',49000, '17:51', 'Tudo certo', 49070 ,'21:26', '7:43', '16:19', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(17, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '825', '07/04/2017', 'Mercedes', 'Gol', 'Preto', '2003', 'PIE-764',20000, '7:43', 'Escapamento com defeito', 20050 ,'7:42', '4:58', '9:17', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(18, 4, 4, 'Rua31', 'Leonardo Teixeira', '6506', '03/05/2018', 'Honda', 'Gol', 'Cinza', '2002', 'PIE-625',88000, '7:16', 'Tudo certo', 88070 ,'13:52', '22:20', '16:57', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(19, 5, 5, 'Rua41', 'Rafael Hadzic', '855', '01/04/2015', 'Mercedes', 'Argo', 'Vinho', '2002', 'PIE-380',74000, '22:31', 'Vidro trincado', 74080 ,'10:23', '14:36', '3:54', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(20, 6, 6, 'Rua51', 'Leonardo Teixeira', '3758', '07/10/2016', 'Citroen', 'HB20', 'Cinza', '2001', 'PIE-813',53000, '12:35', 'rádio imbutido', 53090 ,'19:5', '17:44', '8:47', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(21, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '3282', '07/10/2015', 'Citroen', 'Onix', 'Vinho', '2003', 'PIE-766',5000, '2:39', 'Escapamento com defeito', 5010 ,'11:56', '21:21', '13:57', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(22, 1, 1, 'Rua01', 'Rafael Hadzic', '7923', '01/02/2016', 'Chevrolet', 'Onix', 'Prata', '2000', 'PIE-410',52000, '4:24', 'Retrovisor quebrado', 52060 ,'3:3', '21:35', '23:38', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(23, 2, 2, 'Rua11', 'Rafael Hadzic', '6781', '17/08/2015', 'Citroen', 'Kwid', 'Cinza', '2001', 'PIE-591',56000, '23:48', 'Vidro trincado', 56070 ,'23:55', '23:45', '6:9', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(24, 3, 3, 'Rua21', 'Ederson Gonzaga', '277', '03/11/2016', 'Honda', 'Kwid', 'Vermelho', '2004', 'PIE-84',96000, '23:18', 'Tudo certo', 96010 ,'15:44', '10:26', '20:56', 'Allana Bruna Santos', 'Não danificado', 'não'),
(25, 4, 4, 'Rua31', 'Ederson Gonzaga', '6528', '06/10/2015', 'Citroen', 'Ka', 'Branco', '2003', 'PIE-838',40000, '9:19', 'Escapamento com defeito', 40050 ,'17:51', '9:32', '8:25', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(26, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '998', '04/02/2018', 'Honda', 'Argo', 'Vermelho', '2001', 'PIE-519',85000, '7:7', 'Placa esta à cair', 85010 ,'12:38', '14:53', '2:55', 'Son Goku', 'Não danificado', 'não'),
(27, 6, 6, 'Rua51', 'Rafael Hadzic', '9551', '25/08/2017', 'Chevrolet', 'Gol', 'Branco', '2002', 'PIE-943',41000, '20:23', 'Tudo certo', 41080 ,'5:51', '17:12', '9:16', 'Son Goku', ' Não avaliado', 'sim'),
(28, 7, 7, 'Rua61', 'Nicolas Castro', '7506', '21/08/2018', 'Citroen', 'Onix', 'Cinza', '2002', 'PIE-204',62000, '14:37', 'rádio imbutido', 62070 ,'4:46', '21:10', '21:35', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(29, 1, 1, 'Rua01', 'Leonardo Teixeira', '9825', '04/08/2016', 'Citroen', 'Kwid', 'Cinza', '2004', 'PIE-593',63000, '9:42', 'Placa esta à cair', 63090 ,'14:43', '22:41', '21:38', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(30, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '44', '27/11/2015', 'Audi', 'Prisma', 'Cinza', '2002', 'PIE-615',81000, '15:8', 'Tudo certo', 81030 ,'13:5', '23:59', '22:43', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(31, 3, 3, 'Rua21', 'Nicolas Castro', '8076', '11/01/2018', 'Mercedes', 'Kwid', 'Prata', '2002', 'PIE-684',55000, '1:31', 'Retrovisor quebrado', 55050 ,'21:40', '9:14', '22:41', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(32, 4, 4, 'Rua31', 'Gustavo Honda', '9477', '04/10/2014', 'Audi', 'Ka', 'Prata', '2001', 'PIE-322',41000, '13:40', 'Sem um parafuso direita atraz', 41070 ,'6:6', '12:57', '12:52', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(33, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '1329', '22/11/2016', 'Audi', 'Onix', 'Vermelho', '2001', 'PIE-937',88000, '10:8', 'Escapamento com defeito', 88080 ,'8:32', '14:20', '10:2', 'Allana Bruna Santos', 'Peças totalmente danificada', 'não'),
(34, 6, 6, 'Rua51', 'Rafael Hadzic', '2319', '07/05/2017', 'Volkswagen', 'Kwid', 'Cinza', '2001', 'PIE-496',37000, '22:5', 'Sem um parafuso direita atraz', 37050 ,'12:56', '18:21', '22:19', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(35, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '7167', '04/02/2018', 'Ford', 'Prisma', 'Branco', '2003', 'PIE-681',20000, '19:2', 'Placa esta à cair', 20080 ,'16:49', '20:59', '4:5', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'sim'),
(36, 1, 1, 'Rua01', 'Leonardo Teixeira', '7989', '06/09/2015', 'Mercedes', 'Kwid', 'Cinza', '2000', 'PIE-336',75000, '6:34', 'Escapamento com defeito', 75030 ,'13:51', '20:16', '6:57', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'sim'),
(37, 2, 2, 'Rua11', 'Gabriel Gameiro', '7730', '16/02/2014', 'Mercedes', 'Onix', 'Branco', '2003', 'PIE-291',99000, '13:17', 'Retrovisor quebrado', 99070 ,'2:7', '12:51', '18:40', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'sim'),
(38, 3, 3, 'Rua21', 'Leonardo Teixeira', '3289', '21/05/2017', 'Chevrolet', 'Argo', 'Cinza', '2002', 'PIE-892',7000, '14:19', 'Retrovisor quebrado', 7010 ,'4:45', '9:15', '6:18', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(39, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '8429', '20/03/2014', 'Citroen', 'Onix', 'Preto', '2002', 'PIE-784',67000, '5:35', 'Vidro trincado', 67050 ,'21:13', '21:57', '12:53', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'não'),
(40, 5, 5, 'Rua41', 'Gustavo Honda', '9117', '02/10/2017', 'Mercedes', 'Kwid', 'Vinho', '2000', 'PIE-813',30000, '23:23', 'Sem um parafuso direita atraz', 30030 ,'21:28', '7:13', '16:9', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'sim'),
(41, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '6393', '15/02/2015', 'Citroen', 'Prisma', 'Vinho', '2000', 'PIE-80',87000, '9:39', 'Escapamento com defeito', 87090 ,'20:46', '7:5', '18:3', 'Allana Bruna Santos', 'Não danificado', 'não'),
(42, 7, 7, 'Rua61', 'Nicolas Castro', '4394', '16/07/2017', 'Mercedes', 'Prisma', 'Azul', '2002', 'PIE-499',97000, '10:48', 'Escapamento com defeito', 97080 ,'20:3', '19:56', '8:41', 'Son Goku', 'Não autorizado', 'sim'),
(43, 1, 1, 'Rua01', 'Gustavo Honda', '3643', '22/09/2015', 'Honda', 'Onix', 'Branco', '2001', 'PIE-422',82000, '18:13', 'Tudo certo', 82040 ,'4:41', '11:46', '11:2', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(44, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '2230', '10/05/2016', 'Ford', 'Prisma', 'Azul', '2001', 'PIE-158',99000, '1:3', 'Escapamento com defeito', 99060 ,'11:39', '7:48', '5:5', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(45, 3, 3, 'Rua21', 'Nicolas Castro', '9991', '21/02/2017', 'Audi', 'Argo', 'Azul', '2000', 'PIE-454',99000, '4:15', 'Tudo certo', 99050 ,'4:55', '20:12', '5:44', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'sim'),
(46, 4, 4, 'Rua31', 'Gabriel Gameiro', '3310', '11/02/2014', 'Mercedes', 'Gol', 'Vinho', '2004', 'PIE-280',64000, '17:22', 'Retrovisor quebrado', 64070 ,'5:39', '4:8', '22:23', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(47, 5, 5, 'Rua41', 'Leonardo Teixeira', '661', '04/08/2016', 'Citroen', 'Ka', 'Prata', '2000', 'PIE-462',71000, '18:2', 'Vidro trincado', 71080 ,'19:1', '19:18', '7:48', 'Son Goku', 'Não autorizado', 'sim'),
(48, 6, 6, 'Rua51', 'Gabriel Gameiro', '1504', '19/07/2015', 'Volkswagen', 'Argo', 'Vinho', '2003', 'PIE-23',18000, '23:51', 'Tudo certo', 18040 ,'10:2', '16:38', '21:15', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'não'),
(49, 7, 7, 'Rua61', 'Leonardo Teixeira', '3648', '03/10/2018', 'Volkswagen', 'HB20', 'Prata', '2001', 'PIE-273',21000, '4:21', 'Escapamento com defeito', 21050 ,'16:9', '7:1', '13:35', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(50, 1, 1, 'Rua01', 'Ederson Gonzaga', '6713', '12/02/2015', 'Ford', 'Prisma', 'Preto', '2004', 'PIE-0',62000, '1:10', 'rádio imbutido', 62050 ,'18:18', '22:44', '22:44', 'Maria Lúcia Mustang', ' Não avaliado', 'sim'),
(51, 2, 2, 'Rua11', 'Gustavo Honda', '1791', '21/01/2016', 'Ford', 'Ka', 'Vinho', '2003', 'PIE-314',51000, '21:22', 'Sem um parafuso direita atraz', 51020 ,'18:53', '13:49', '3:12', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(52, 3, 3, 'Rua21', 'Leonardo Teixeira', '9933', '11/10/2018', 'Citroen', 'Kwid', 'Vermelho', '2000', 'PIE-984',20000, '6:59', 'Sem um parafuso direita atraz', 20090 ,'23:39', '15:44', '16:53', 'Son Goku', 'Não danificado', 'sim'),
(53, 4, 4, 'Rua31', 'Ederson Gonzaga', '4579', '23/05/2016', 'Honda', 'Argo', 'Vermelho', '2003', 'PIE-333',80000, '9:50', 'Sem um parafuso direita atraz', 80060 ,'23:25', '7:15', '15:2', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(54, 5, 5, 'Rua41', 'Nicolas Castro', '5545', '01/07/2015', 'Citroen', 'Ka', 'Vinho', '2001', 'PIE-20',96000, '8:21', 'Vidro trincado', 96050 ,'3:25', '4:53', '2:34', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(55, 6, 6, 'Rua51', 'Nicolas Castro', '4685', '17/07/2016', 'Ford', 'Ka', 'Azul', '2001', 'PIE-281',65000, '18:58', 'Placa esta à cair', 65080 ,'11:25', '23:42', '15:15', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(56, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '5844', '20/05/2015', 'Ford', 'Kwid', 'Cinza', '2003', 'PIE-450',4000, '20:22', 'Placa esta à cair', 4010 ,'8:1', '5:35', '1:54', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'sim'),
(57, 1, 1, 'Rua01', 'Ederson Gonzaga', '4223', '01/10/2017', 'Honda', 'Argo', 'Cinza', '2001', 'PIE-848',73000, '3:29', 'Escapamento com defeito', 73060 ,'2:35', '10:19', '19:42', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(58, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '2774', '02/10/2016', 'Audi', 'Argo', 'Preto', '2000', 'PIE-342',8000, '8:6', 'Tudo certo', 8090 ,'21:7', '23:7', '4:10', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(59, 3, 3, 'Rua21', 'Ederson Gonzaga', '5731', '02/04/2018', 'Volkswagen', 'Prisma', 'Branco', '2004', 'PIE-169',29000, '1:32', 'Tudo certo', 29070 ,'8:40', '16:8', '13:51', 'Robson Santos Onix', 'Peça parcialmente danificada', 'sim'),
(60, 4, 4, 'Rua31', 'Nicolas Castro', '1911', '02/01/2015', 'Ford', 'Ka', 'Azul', '2003', 'PIE-837',35000, '10:42', 'Sem um parafuso direita atraz', 35040 ,'1:14', '20:36', '11:8', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'sim'),
(61, 5, 5, 'Rua41', 'Rafael Hadzic', '2887', '16/01/2017', 'Mercedes', 'Onix', 'Vinho', '2001', 'PIE-180',23000, '7:37', 'rádio imbutido', 23040 ,'11:10', '1:11', '23:14', 'Son Goku', 'Peças totalmente danificada', 'sim'),
(62, 6, 6, 'Rua51', 'Gustavo Honda', '3658', '10/10/2017', 'Audi', 'Onix', 'Vinho', '2004', 'PIE-897',92000, '11:46', 'Vidro trincado', 92020 ,'14:36', '11:46', '4:48', 'Robson Santos Onix', 'Não danificado', 'sim'),
(63, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '5940', '04/05/2015', 'Citroen', 'Argo', 'Preto', '2004', 'PIE-139',93000, '11:29', 'Tudo certo', 93020 ,'8:34', '9:6', '10:41', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(64, 1, 1, 'Rua01', 'Leonardo Teixeira', '6671', '15/02/2018', 'Mercedes', 'Onix', 'Branco', '2004', 'PIE-976',65000, '11:54', 'Retrovisor quebrado', 65020 ,'19:28', '13:37', '14:55', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(65, 2, 2, 'Rua11', 'Rafael Hadzic', '6881', '05/07/2014', 'Volkswagen', 'Onix', 'Vinho', '2000', 'PIE-813',58000, '16:3', 'Escapamento com defeito', 58070 ,'4:16', '1:29', '15:20', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'sim'),
(66, 3, 3, 'Rua21', 'Rafael Hadzic', '8513', '07/06/2018', 'Chevrolet', 'Kwid', 'Branco', '2000', 'PIE-87',22000, '6:26', 'Vidro trincado', 22010 ,'1:39', '18:54', '5:25', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(67, 4, 4, 'Rua31', 'Gabriel Gameiro', '9332', '14/09/2016', 'Audi', 'Gol', 'Prata', '2000', 'PIE-811',36000, '13:4', 'Tudo certo', 36020 ,'17:59', '5:48', '2:21', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'não'),
(68, 5, 5, 'Rua41', 'Rafael Hadzic', '8533', '19/01/2015', 'Mercedes', 'Ka', 'Azul', '2000', 'PIE-790',85000, '23:34', 'rádio imbutido', 85070 ,'6:36', '19:49', '10:55', 'Son Goku', 'Não autorizado', 'sim'),
(69, 6, 6, 'Rua51', 'Rafael Hadzic', '8161', '26/05/2017', 'Ford', 'Gol', 'Cinza', '2000', 'PIE-591',12000, '16:10', 'Retrovisor quebrado', 12010 ,'10:53', '10:6', '21:13', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(70, 7, 7, 'Rua61', 'Gabriel Gameiro', '7971', '16/03/2016', 'Honda', 'Argo', 'Preto', '2002', 'PIE-582',19000, '2:30', 'Escapamento com defeito', 19060 ,'14:30', '5:9', '22:21', 'Maria Lúcia Mustang', ' Não avaliado', 'sim'),
(71, 1, 1, 'Rua01', 'Leonardo Teixeira', '3830', '08/03/2015', 'Audi', 'Kwid', 'Azul', '2000', 'PIE-618',83000, '3:29', 'Escapamento com defeito', 83010 ,'2:12', '18:8', '18:59', 'Allana Bruna Santos', 'Não danificado', 'não'),
(72, 2, 2, 'Rua11', 'Rafael Hadzic', '2294', '18/10/2018', 'Mercedes', 'Ka', 'Vinho', '2003', 'PIE-204',92000, '6:56', 'Vidro trincado', 92050 ,'23:10', '6:49', '17:5', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(73, 3, 3, 'Rua21', 'Gabriel Gameiro', '6463', '15/05/2014', 'Audi', 'Argo', 'Cinza', '2004', 'PIE-190',58000, '21:28', 'Tudo certo', 58020 ,'2:25', '13:35', '9:4', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'não'),
(74, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '748', '22/09/2018', 'Citroen', 'Ka', 'Cinza', '2001', 'PIE-354',35000, '1:45', 'Sem um parafuso direita atraz', 35040 ,'9:48', '23:57', '5:39', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(75, 5, 5, 'Rua41', 'Nicolas Castro', '4645', '10/05/2015', 'Mercedes', 'Ka', 'Azul', '2001', 'PIE-414',42000, '10:34', 'Vidro trincado', 42070 ,'18:20', '3:26', '23:51', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(76, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '8153', '12/08/2015', 'Audi', 'Argo', 'Vinho', '2001', 'PIE-313',92000, '16:55', 'Retrovisor quebrado', 92090 ,'5:34', '2:4', '17:53', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(77, 7, 7, 'Rua61', 'Nicolas Castro', '3945', '19/03/2017', 'Audi', 'Prisma', 'Cinza', '2003', 'PIE-852',61000, '10:3', 'Sem um parafuso direita atraz', 61040 ,'20:19', '22:22', '15:59', 'Allana Bruna Santos', 'Não danificado', 'sim'),
(78, 1, 1, 'Rua01', 'Rafael Hadzic', '3906', '16/07/2017', 'Ford', 'Onix', 'Preto', '2004', 'PIE-978',60000, '2:33', 'Sem um parafuso direita atraz', 60010 ,'15:3', '21:4', '17:27', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(79, 2, 2, 'Rua11', 'Rafael Hadzic', '165', '23/09/2017', 'Ford', 'Ka', 'Prata', '2000', 'PIE-323',79000, '7:29', 'Vidro trincado', 79010 ,'8:27', '5:36', '6:24', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(80, 3, 3, 'Rua21', 'Ederson Gonzaga', '3225', '11/02/2016', 'Volkswagen', 'Argo', 'Cinza', '2000', 'PIE-804',20000, '9:24', 'Retrovisor quebrado', 20070 ,'23:27', '5:18', '6:57', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'sim'),
(81, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '2321', '17/02/2014', 'Honda', 'Ka', 'Branco', '2004', 'PIE-363',57000, '4:36', 'rádio imbutido', 57030 ,'4:11', '6:39', '12:1', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(82, 5, 5, 'Rua41', 'Gustavo Honda', '5614', '06/08/2015', 'Audi', 'Ka', 'Vinho', '2003', 'PIE-166',62000, '12:15', 'Escapamento com defeito', 62040 ,'16:57', '11:17', '9:32', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(83, 6, 6, 'Rua51', 'Gabriel Gameiro', '344', '23/09/2014', 'Ford', 'HB20', 'Vermelho', '2004', 'PIE-849',2000, '12:45', 'Escapamento com defeito', 2060 ,'11:31', '10:22', '11:20', 'Robson Santos Onix', 'Não danificado', 'sim'),
(84, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '5554', '03/07/2018', 'Volkswagen', 'Argo', 'Preto', '2002', 'PIE-616',91000, '11:53', 'Retrovisor quebrado', 91080 ,'11:27', '9:35', '18:47', 'Son Goku', 'Não danificado', 'sim'),
(85, 1, 1, 'Rua01', 'Nicolas Castro', '2508', '01/11/2017', 'Chevrolet', 'Kwid', 'Preto', '2001', 'PIE-281',56000, '8:35', 'Tudo certo', 56090 ,'20:56', '11:2', '6:29', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(86, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '419', '22/08/2016', 'Mercedes', 'Onix', 'Prata', '2002', 'PIE-564',44000, '11:57', 'Escapamento com defeito', 44070 ,'16:31', '4:25', '9:20', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(87, 3, 3, 'Rua21', 'Rafael Hadzic', '7592', '11/04/2016', 'Audi', 'Ka', 'Prata', '2003', 'PIE-226',80000, '18:32', 'Retrovisor quebrado', 80070 ,'21:50', '16:47', '3:16', 'Son Goku', 'Não danificado', 'sim'),
(88, 4, 4, 'Rua31', 'Nicolas Castro', '625', '10/06/2014', 'Chevrolet', 'HB20', 'Azul', '2003', 'PIE-861',69000, '21:21', 'Escapamento com defeito', 69080 ,'20:4', '10:19', '22:45', 'Robson Santos Onix', 'Não danificado', 'não'),
(89, 5, 5, 'Rua41', 'Gabriel Gameiro', '6757', '03/02/2014', 'Citroen', 'Onix', 'Branco', '2003', 'PIE-419',74000, '12:31', 'rádio imbutido', 74090 ,'18:26', '14:1', '23:39', 'Son Goku', 'Peças totalmente danificada', 'sim'),
(90, 6, 6, 'Rua51', 'Gustavo Honda', '7000', '06/06/2018', 'Audi', 'Kwid', 'Vinho', '2000', 'PIE-793',31000, '2:31', 'rádio imbutido', 31010 ,'4:51', '1:32', '22:2', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(91, 7, 7, 'Rua61', 'Nicolas Castro', '161', '21/08/2014', 'Honda', 'Kwid', 'Branco', '2003', 'PIE-27',89000, '11:12', 'Retrovisor quebrado', 89060 ,'23:38', '23:6', '1:18', 'Son Goku', 'Peças totalmente danificada', 'não'),
(92, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '381', '16/06/2018', 'Mercedes', 'Argo', 'Preto', '2002', 'PIE-990',68000, '15:17', 'Retrovisor quebrado', 68040 ,'18:52', '5:34', '8:27', 'Allana Bruna Santos', 'Não danificado', 'sim'),
(93, 2, 2, 'Rua11', 'Nicolas Castro', '3294', '02/02/2017', 'Chevrolet', 'Argo', 'Vinho', '2003', 'PIE-571',84000, '10:44', 'Placa esta à cair', 84050 ,'17:2', '2:4', '16:27', 'Son Goku', 'Peça parcialmente danificada', 'sim'),
(94, 3, 3, 'Rua21', 'Nicolas Castro', '8440', '19/04/2015', 'Mercedes', 'Prisma', 'Vinho', '2000', 'PIE-738',81000, '8:38', 'Retrovisor quebrado', 81020 ,'7:35', '10:24', '7:58', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(95, 4, 4, 'Rua31', 'Rafael Hadzic', '8038', '24/04/2016', 'Mercedes', 'Prisma', 'Prata', '2004', 'PIE-13',70000, '21:2', 'Sem um parafuso direita atraz', 70070 ,'21:56', '15:44', '6:59', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'sim'),
(96, 5, 5, 'Rua41', 'Gabriel Gameiro', '4735', '06/05/2015', 'Audi', 'Gol', 'Azul', '2003', 'PIE-210',73000, '19:1', 'Retrovisor quebrado', 73030 ,'22:57', '8:46', '9:9', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(97, 6, 6, 'Rua51', 'Gustavo Honda', '3460', '14/11/2016', 'Ford', 'Onix', 'Vermelho', '2000', 'PIE-495',98000, '16:16', 'rádio imbutido', 98070 ,'14:42', '1:40', '2:40', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(98, 7, 7, 'Rua61', 'Gustavo Honda', '4986', '12/11/2015', 'Audi', 'Gol', 'Vinho', '2001', 'PIE-96',19000, '19:27', 'Escapamento com defeito', 19020 ,'18:26', '23:17', '10:20', 'Robson Santos Onix', 'Não danificado', 'não'),
(99, 1, 1, 'Rua01', 'Leonardo Teixeira', '1327', '04/04/2018', 'Chevrolet', 'Argo', 'Azul', '2004', 'PIE-243',31000, '22:17', 'Sem um parafuso direita atraz', 31050 ,'19:46', '21:36', '5:39', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(100, 2, 2, 'Rua11', 'Nicolas Castro', '5582', '17/02/2018', 'Audi', 'Ka', 'Branco', '2003', 'PIE-153',89000, '4:21', 'rádio imbutido', 89030 ,'23:36', '12:30', '15:36', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(101, 3, 3, 'Rua21', 'Nicolas Castro', '1348', '15/11/2014', 'Citroen', 'Onix', 'Azul', '2004', 'PIE-137',69000, '22:56', 'Vidro trincado', 69020 ,'2:17', '10:47', '22:15', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(102, 4, 4, 'Rua31', 'Rafael Hadzic', '9311', '12/02/2016', 'Citroen', 'Onix', 'Cinza', '2001', 'PIE-161',99000, '3:10', 'Tudo certo', 99040 ,'19:57', '6:50', '18:58', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(103, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '1144', '07/06/2016', 'Ford', 'Kwid', 'Azul', '2003', 'PIE-425',54000, '11:29', 'Retrovisor quebrado', 54050 ,'17:22', '17:40', '5:45', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(104, 6, 6, 'Rua51', 'Nicolas Castro', '3317', '04/11/2014', 'Mercedes', 'Onix', 'Prata', '2001', 'PIE-789',15000, '1:26', 'rádio imbutido', 15090 ,'17:12', '17:33', '6:8', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'sim'),
(105, 7, 7, 'Rua61', 'Gustavo Honda', '5944', '19/04/2018', 'Chevrolet', 'Ka', 'Prata', '2001', 'PIE-117',22000, '4:51', 'Tudo certo', 22040 ,'19:54', '13:34', '17:49', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(106, 1, 1, 'Rua01', 'Gabriel Gameiro', '4283', '25/11/2016', 'Citroen', 'Argo', 'Cinza', '2002', 'PIE-871',87000, '17:4', 'Vidro trincado', 87050 ,'7:41', '17:24', '14:39', 'Allana Bruna Santos', 'Peças totalmente danificada', 'não'),
(107, 2, 2, 'Rua11', 'Gustavo Honda', '3004', '19/10/2015', 'Volkswagen', 'Kwid', 'Preto', '2001', 'PIE-521',44000, '13:56', 'Sem um parafuso direita atraz', 44030 ,'20:57', '4:42', '22:38', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(108, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '5844', '08/09/2015', 'Honda', 'Kwid', 'Branco', '2000', 'PIE-596',39000, '8:45', 'Placa esta à cair', 39060 ,'7:27', '4:26', '14:45', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(109, 4, 4, 'Rua31', 'Ederson Gonzaga', '5762', '10/02/2018', 'Audi', 'Onix', 'Vermelho', '2001', 'PIE-454',7000, '11:56', 'Placa esta à cair', 7020 ,'1:47', '16:11', '3:41', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(110, 5, 5, 'Rua41', 'Rafael Hadzic', '3222', '11/04/2014', 'Audi', 'Ka', 'Vermelho', '2004', 'PIE-99',76000, '10:41', 'Sem um parafuso direita atraz', 76020 ,'9:22', '4:28', '21:22', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(111, 6, 6, 'Rua51', 'Ederson Gonzaga', '2707', '01/07/2018', 'Citroen', 'Ka', 'Azul', '2004', 'PIE-603',91000, '17:30', 'Placa esta à cair', 91020 ,'6:32', '7:20', '12:29', 'Robson Santos Onix', 'Não danificado', 'não'),
(112, 7, 7, 'Rua61', 'Ederson Gonzaga', '91', '12/02/2018', 'Honda', 'Ka', 'Vermelho', '2002', 'PIE-975',64000, '16:30', 'Retrovisor quebrado', 64040 ,'1:47', '1:47', '8:52', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(113, 1, 1, 'Rua01', 'Ederson Gonzaga', '5985', '13/10/2014', 'Audi', 'Kwid', 'Cinza', '2000', 'PIE-548',80000, '10:59', 'Tudo certo', 80050 ,'23:15', '4:3', '8:45', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(114, 2, 2, 'Rua11', 'Ederson Gonzaga', '2668', '20/08/2014', 'Mercedes', 'Onix', 'Vinho', '2000', 'PIE-193',16000, '12:20', 'Placa esta à cair', 16020 ,'5:31', '7:23', '14:5', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(115, 3, 3, 'Rua21', 'Gabriel Gameiro', '4729', '18/05/2015', 'Mercedes', 'Gol', 'Preto', '2004', 'PIE-954',66000, '6:36', 'rádio imbutido', 66050 ,'11:58', '7:22', '13:33', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'sim'),
(116, 4, 4, 'Rua31', 'Nicolas Castro', '6028', '14/02/2014', 'Chevrolet', 'Argo', 'Branco', '2000', 'PIE-921',54000, '5:15', 'Sem um parafuso direita atraz', 54080 ,'5:4', '16:25', '15:56', 'Allana Bruna Santos', 'Não danificado', 'não'),
(117, 5, 5, 'Rua41', 'Ederson Gonzaga', '8106', '07/09/2018', 'Volkswagen', 'Ka', 'Cinza', '2001', 'PIE-408',2000, '21:39', 'Tudo certo', 2050 ,'3:53', '17:12', '8:56', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(118, 6, 6, 'Rua51', 'Ederson Gonzaga', '7646', '22/08/2014', 'Honda', 'Ka', 'Prata', '2001', 'PIE-770',78000, '11:44', 'Vidro trincado', 78090 ,'23:18', '6:22', '16:31', 'Robson Santos Onix', ' Não avaliado', 'não'),
(119, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '3110', '24/02/2018', 'Chevrolet', 'Onix', 'Vermelho', '2000', 'PIE-429',32000, '21:33', 'rádio imbutido', 32030 ,'21:30', '21:17', '14:35', 'Robson Santos Onix', ' Não avaliado', 'não'),
(120, 1, 1, 'Rua01', 'Gustavo Honda', '3172', '04/03/2016', 'Volkswagen', 'Argo', 'Cinza', '2001', 'PIE-934',8000, '2:39', 'rádio imbutido', 8060 ,'4:29', '4:16', '15:33', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'não'),
(121, 2, 2, 'Rua11', 'Rafael Hadzic', '2061', '09/03/2015', 'Volkswagen', 'Kwid', 'Prata', '2002', 'PIE-131',75000, '17:59', 'Escapamento com defeito', 75020 ,'4:7', '16:3', '5:48', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(122, 3, 3, 'Rua21', 'Rafael Hadzic', '9424', '20/10/2014', 'Honda', 'Prisma', 'Cinza', '2004', 'PIE-757',38000, '22:4', 'Retrovisor quebrado', 38030 ,'3:31', '1:40', '2:26', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(123, 4, 4, 'Rua31', 'Gabriel Gameiro', '4845', '03/01/2015', 'Volkswagen', 'Gol', 'Azul', '2003', 'PIE-51',92000, '1:59', 'Placa esta à cair', 92070 ,'16:11', '22:4', '20:38', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(124, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '9611', '24/06/2018', 'Ford', 'Gol', 'Preto', '2001', 'PIE-191',56000, '15:39', 'Sem um parafuso direita atraz', 56020 ,'18:46', '17:48', '2:41', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(125, 6, 6, 'Rua51', 'Gustavo Honda', '872', '05/02/2015', 'Audi', 'Onix', 'Branco', '2002', 'PIE-633',94000, '19:58', 'Vidro trincado', 94010 ,'14:54', '1:11', '3:20', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(126, 7, 7, 'Rua61', 'Nicolas Castro', '5783', '09/04/2015', 'Citroen', 'Ka', 'Vinho', '2003', 'PIE-684',87000, '21:5', 'Placa esta à cair', 87040 ,'17:57', '11:12', '5:54', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(127, 1, 1, 'Rua01', 'Leonardo Teixeira', '5768', '07/04/2014', 'Ford', 'Onix', 'Azul', '2003', 'PIE-874',50000, '17:45', 'Sem um parafuso direita atraz', 50090 ,'17:52', '3:14', '22:52', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(128, 2, 2, 'Rua11', 'Gabriel Gameiro', '3508', '19/08/2018', 'Citroen', 'Prisma', 'Vermelho', '2001', 'PIE-960',87000, '18:45', 'Vidro trincado', 87090 ,'21:39', '21:42', '10:14', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(129, 3, 3, 'Rua21', 'Leonardo Teixeira', '7784', '21/04/2017', 'Chevrolet', 'Onix', 'Cinza', '2004', 'PIE-629',23000, '13:33', 'Tudo certo', 23060 ,'5:47', '3:36', '7:58', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(130, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '3775', '22/04/2014', 'Citroen', 'Kwid', 'Azul', '2002', 'PIE-225',69000, '22:40', 'Escapamento com defeito', 69070 ,'12:55', '3:4', '7:5', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(131, 5, 5, 'Rua41', 'Ederson Gonzaga', '8944', '18/01/2015', 'Citroen', 'Kwid', 'Vermelho', '2002', 'PIE-81',7000, '8:54', 'Sem um parafuso direita atraz', 7060 ,'3:20', '9:9', '6:57', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(132, 6, 6, 'Rua51', 'Nicolas Castro', '7122', '27/03/2014', 'Chevrolet', 'Gol', 'Preto', '2001', 'PIE-270',89000, '7:39', 'Escapamento com defeito', 89030 ,'12:29', '15:35', '22:45', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(133, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '5905', '05/07/2015', 'Audi', 'Prisma', 'Azul', '2003', 'PIE-861',2000, '7:40', 'Tudo certo', 2020 ,'7:7', '3:8', '7:9', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(134, 1, 1, 'Rua01', 'Rafael Hadzic', '4991', '17/05/2014', 'Citroen', 'Kwid', 'Preto', '2001', 'PIE-991',40000, '1:33', 'Retrovisor quebrado', 40020 ,'15:2', '14:40', '14:1', 'Son Goku', ' Não avaliado', 'sim'),
(135, 2, 2, 'Rua11', 'Rafael Hadzic', '5558', '25/11/2014', 'Honda', 'HB20', 'Cinza', '2001', 'PIE-340',76000, '1:52', 'Vidro trincado', 76020 ,'12:35', '22:30', '5:22', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(136, 3, 3, 'Rua21', 'Rafael Hadzic', '3316', '12/03/2015', 'Honda', 'Prisma', 'Branco', '2001', 'PIE-822',29000, '19:1', 'Tudo certo', 29060 ,'15:10', '15:13', '9:35', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(137, 4, 4, 'Rua31', 'Nicolas Castro', '343', '03/01/2015', 'Mercedes', 'Gol', 'Vinho', '2003', 'PIE-575',76000, '10:42', 'Placa esta à cair', 76080 ,'15:27', '10:4', '14:39', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(138, 5, 5, 'Rua41', 'Leonardo Teixeira', '3324', '21/03/2016', 'Audi', 'Argo', 'Azul', '2003', 'PIE-570',52000, '10:9', 'Tudo certo', 52010 ,'3:20', '4:56', '2:49', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(139, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '8302', '06/07/2018', 'Chevrolet', 'Argo', 'Cinza', '2001', 'PIE-413',23000, '23:11', 'Retrovisor quebrado', 23060 ,'5:32', '5:10', '20:12', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(140, 7, 7, 'Rua61', 'Ederson Gonzaga', '4576', '08/10/2018', 'Chevrolet', 'Gol', 'Vermelho', '2004', 'PIE-165',48000, '18:38', 'Sem um parafuso direita atraz', 48020 ,'18:25', '5:45', '9:2', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(141, 1, 1, 'Rua01', 'Ederson Gonzaga', '2846', '22/08/2014', 'Audi', 'Onix', 'Azul', '2004', 'PIE-258',51000, '4:10', 'Placa esta à cair', 51090 ,'23:28', '6:7', '6:36', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(142, 2, 2, 'Rua11', 'Rafael Hadzic', '5229', '02/04/2016', 'Mercedes', 'Prisma', 'Prata', '2004', 'PIE-821',64000, '20:54', 'Retrovisor quebrado', 64070 ,'3:31', '14:46', '6:8', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(143, 3, 3, 'Rua21', 'Ederson Gonzaga', '7263', '18/02/2016', 'Citroen', 'Argo', 'Preto', '2003', 'PIE-3',36000, '12:1', 'Placa esta à cair', 36020 ,'20:49', '9:12', '3:8', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(144, 4, 4, 'Rua31', 'Nicolas Castro', '4521', '04/08/2018', 'Citroen', 'Ka', 'Cinza', '2001', 'PIE-105',85000, '15:43', 'Vidro trincado', 85010 ,'13:9', '23:31', '16:55', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(145, 5, 5, 'Rua41', 'Nicolas Castro', '8939', '01/01/2015', 'Volkswagen', 'Gol', 'Prata', '2003', 'PIE-610',67000, '4:31', 'Escapamento com defeito', 67060 ,'19:51', '22:31', '1:29', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(146, 6, 6, 'Rua51', 'Ederson Gonzaga', '2491', '24/06/2017', 'Mercedes', 'Prisma', 'Azul', '2004', 'PIE-416',81000, '17:44', 'Escapamento com defeito', 81060 ,'21:37', '23:46', '4:40', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'sim'),
(147, 7, 7, 'Rua61', 'Gustavo Honda', '8315', '07/11/2015', 'Citroen', 'HB20', 'Preto', '2004', 'PIE-865',12000, '10:26', 'Vidro trincado', 12010 ,'5:57', '20:12', '13:33', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(148, 1, 1, 'Rua01', 'Nicolas Castro', '1918', '13/09/2016', 'Citroen', 'Onix', 'Vinho', '2000', 'PIE-377',22000, '15:32', 'Sem um parafuso direita atraz', 22080 ,'13:7', '5:39', '9:23', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'sim'),
(149, 2, 2, 'Rua11', 'Gustavo Honda', '7565', '19/03/2017', 'Honda', 'Ka', 'Preto', '2001', 'PIE-778',11000, '23:25', 'rádio imbutido', 11050 ,'5:34', '22:33', '17:31', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(150, 3, 3, 'Rua21', 'Nicolas Castro', '7488', '04/02/2015', 'Mercedes', 'Prisma', 'Cinza', '2001', 'PIE-631',8000, '4:41', 'Sem um parafuso direita atraz', 8030 ,'16:39', '7:14', '21:15', 'Son Goku', ' Não avaliado', 'sim'),
(151, 4, 4, 'Rua31', 'Nicolas Castro', '4005', '20/05/2016', 'Chevrolet', 'Prisma', 'Azul', '2003', 'PIE-156',80000, '21:32', 'Tudo certo', 80030 ,'6:44', '7:43', '22:9', 'Son Goku', 'Não danificado', 'sim'),
(152, 5, 5, 'Rua41', 'Gustavo Honda', '7194', '22/06/2017', 'Honda', 'HB20', 'Branco', '2001', 'PIE-557',61000, '8:11', 'Retrovisor quebrado', 61040 ,'11:53', '4:23', '3:52', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(153, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '3222', '04/09/2018', 'Audi', 'Prisma', 'Branco', '2002', 'PIE-831',38000, '22:4', 'Vidro trincado', 38090 ,'2:20', '6:6', '15:15', 'Robson Santos Onix', 'Peça parcialmente danificada', 'sim'),
(154, 7, 7, 'Rua61', 'Leonardo Teixeira', '952', '10/11/2016', 'Volkswagen', 'Kwid', 'Vermelho', '2000', 'PIE-387',41000, '11:55', 'Placa esta à cair', 41090 ,'2:47', '20:20', '2:47', 'Son Goku', 'Peça parcialmente danificada', 'sim'),
(155, 1, 1, 'Rua01', 'Gustavo Honda', '6941', '21/05/2015', 'Chevrolet', 'Prisma', 'Cinza', '2004', 'PIE-43',38000, '12:1', 'Retrovisor quebrado', 38070 ,'10:46', '8:13', '23:30', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(156, 2, 2, 'Rua11', 'Ederson Gonzaga', '1453', '03/02/2015', 'Citroen', 'Prisma', 'Branco', '2002', 'PIE-235',20000, '17:42', 'Escapamento com defeito', 20030 ,'15:5', '19:16', '5:28', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(157, 3, 3, 'Rua21', 'Leonardo Teixeira', '603', '08/02/2014', 'Honda', 'Kwid', 'Vermelho', '2002', 'PIE-495',30000, '7:49', 'Retrovisor quebrado', 30030 ,'13:24', '11:36', '8:20', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(158, 4, 4, 'Rua31', 'Nicolas Castro', '2236', '06/09/2014', 'Honda', 'Argo', 'Azul', '2004', 'PIE-544',76000, '16:59', 'Retrovisor quebrado', 76050 ,'8:39', '23:41', '15:51', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'sim'),
(159, 5, 5, 'Rua41', 'Nicolas Castro', '5683', '15/11/2018', 'Volkswagen', 'Onix', 'Branco', '2002', 'PIE-556',22000, '6:53', 'Tudo certo', 22010 ,'7:26', '14:58', '5:9', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(160, 6, 6, 'Rua51', 'Nicolas Castro', '7988', '04/10/2015', 'Mercedes', 'Ka', 'Branco', '2000', 'PIE-429',55000, '14:28', 'Tudo certo', 55040 ,'7:41', '19:53', '4:21', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(161, 7, 7, 'Rua61', 'Ederson Gonzaga', '1731', '15/02/2017', 'Citroen', 'Kwid', 'Preto', '2004', 'PIE-130',75000, '9:12', 'rádio imbutido', 75030 ,'18:31', '11:18', '16:42', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(162, 1, 1, 'Rua01', 'Gustavo Honda', '2074', '02/11/2014', 'Chevrolet', 'Kwid', 'Prata', '2002', 'PIE-444',43000, '16:13', 'Escapamento com defeito', 43080 ,'8:48', '9:4', '5:14', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(163, 2, 2, 'Rua11', 'Nicolas Castro', '3132', '14/06/2015', 'Citroen', 'Argo', 'Cinza', '2001', 'PIE-690',96000, '1:41', 'Retrovisor quebrado', 96080 ,'5:55', '14:26', '22:43', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(164, 3, 3, 'Rua21', 'Gustavo Honda', '6292', '11/06/2017', 'Honda', 'Onix', 'Vinho', '2003', 'PIE-250',10000, '23:42', 'rádio imbutido', 10050 ,'20:50', '12:38', '7:37', 'Son Goku', 'Não autorizado', 'não'),
(165, 4, 4, 'Rua31', 'Nicolas Castro', '5604', '10/04/2014', 'Ford', 'HB20', 'Vermelho', '2000', 'PIE-958',68000, '12:55', 'rádio imbutido', 68040 ,'16:14', '17:30', '6:49', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(166, 5, 5, 'Rua41', 'Gustavo Honda', '7849', '01/07/2017', 'Mercedes', 'Prisma', 'Branco', '2001', 'PIE-698',67000, '3:26', 'rádio imbutido', 67080 ,'11:39', '1:16', '3:49', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(167, 6, 6, 'Rua51', 'Gabriel Gameiro', '7414', '07/04/2018', 'Chevrolet', 'Gol', 'Azul', '2000', 'PIE-764',70000, '16:29', 'Tudo certo', 70010 ,'13:42', '6:46', '1:27', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(168, 7, 7, 'Rua61', 'Leonardo Teixeira', '8576', '02/07/2016', 'Ford', 'HB20', 'Branco', '2001', 'PIE-822',89000, '22:21', 'Placa esta à cair', 89040 ,'18:40', '13:51', '22:17', 'Son Goku', 'Não autorizado', 'não'),
(169, 1, 1, 'Rua01', 'Leonardo Teixeira', '328', '16/06/2016', 'Citroen', 'Prisma', 'Prata', '2001', 'PIE-545',44000, '14:25', 'Vidro trincado', 44030 ,'10:16', '23:24', '15:22', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'não'),
(170, 2, 2, 'Rua11', 'Gustavo Honda', '1354', '02/05/2014', 'Ford', 'Kwid', 'Cinza', '2000', 'PIE-235',55000, '1:58', 'Placa esta à cair', 55020 ,'21:24', '23:28', '4:50', 'Allana Bruna Santos', 'Peças totalmente danificada', 'não'),
(171, 3, 3, 'Rua21', 'Leonardo Teixeira', '5276', '24/06/2017', 'Volkswagen', 'Gol', 'Azul', '2000', 'PIE-22',43000, '11:38', 'Vidro trincado', 43080 ,'22:3', '8:38', '4:53', 'Son Goku', ' Não avaliado', 'não'),
(172, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '8780', '14/04/2017', 'Citroen', 'Onix', 'Azul', '2001', 'PIE-449',53000, '17:12', 'Sem um parafuso direita atraz', 53080 ,'2:35', '10:10', '10:36', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(173, 5, 5, 'Rua41', 'Gustavo Honda', '7758', '16/05/2018', 'Citroen', 'Ka', 'Branco', '2002', 'PIE-527',30000, '7:23', 'Sem um parafuso direita atraz', 30040 ,'11:25', '15:52', '13:58', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(174, 6, 6, 'Rua51', 'Leonardo Teixeira', '9054', '10/05/2016', 'Mercedes', 'Kwid', 'Cinza', '2001', 'PIE-588',3000, '7:52', 'Escapamento com defeito', 3050 ,'2:28', '6:40', '11:12', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(175, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '7966', '09/07/2017', 'Honda', 'Gol', 'Vinho', '2001', 'PIE-491',64000, '18:27', 'rádio imbutido', 64010 ,'20:56', '13:13', '2:50', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(176, 1, 1, 'Rua01', 'Ederson Gonzaga', '4089', '14/08/2014', 'Volkswagen', 'HB20', 'Azul', '2000', 'PIE-29',45000, '18:7', 'Escapamento com defeito', 45090 ,'19:38', '11:7', '15:33', 'Son Goku', 'Peça parcialmente danificada', 'sim'),
(177, 2, 2, 'Rua11', 'Gabriel Gameiro', '637', '04/04/2015', 'Chevrolet', 'Argo', 'Preto', '2000', 'PIE-595',25000, '9:43', 'Escapamento com defeito', 25060 ,'15:27', '2:45', '11:25', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(178, 3, 3, 'Rua21', 'Leonardo Teixeira', '4855', '04/06/2015', 'Ford', 'Ka', 'Vinho', '2002', 'PIE-438',38000, '18:19', 'Retrovisor quebrado', 38090 ,'13:57', '14:26', '13:8', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(179, 4, 4, 'Rua31', 'Ederson Gonzaga', '9631', '09/03/2016', 'Chevrolet', 'Ka', 'Azul', '2004', 'PIE-81',33000, '5:14', 'Retrovisor quebrado', 33020 ,'9:14', '10:31', '13:34', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(180, 5, 5, 'Rua41', 'Ederson Gonzaga', '8943', '10/09/2016', 'Audi', 'Onix', 'Preto', '2001', 'PIE-725',35000, '15:46', 'rádio imbutido', 35060 ,'5:11', '23:58', '17:37', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(181, 6, 6, 'Rua51', 'Leonardo Teixeira', '2235', '04/11/2017', 'Volkswagen', 'Prisma', 'Branco', '2003', 'PIE-719',5000, '7:42', 'Vidro trincado', 5080 ,'22:20', '16:8', '5:52', 'Robson Santos Onix', 'Peças totalmente danificada', 'sim'),
(182, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '5361', '14/05/2017', 'Honda', 'Gol', 'Cinza', '2003', 'PIE-407',69000, '4:20', 'Escapamento com defeito', 69010 ,'19:31', '22:46', '15:7', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'sim'),
(183, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '8198', '05/04/2017', 'Chevrolet', 'Kwid', 'Branco', '2001', 'PIE-942',8000, '13:35', 'rádio imbutido', 8010 ,'8:56', '21:56', '19:20', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(184, 2, 2, 'Rua11', 'Ederson Gonzaga', '1553', '21/05/2018', 'Volkswagen', 'Prisma', 'Branco', '2000', 'PIE-880',98000, '10:23', 'Tudo certo', 98070 ,'12:54', '17:53', '6:48', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'sim'),
(185, 3, 3, 'Rua21', 'Gustavo Honda', '8485', '17/03/2018', 'Honda', 'Ka', 'Branco', '2002', 'PIE-631',48000, '3:24', 'Retrovisor quebrado', 48050 ,'13:49', '10:7', '10:33', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(186, 4, 4, 'Rua31', 'Gabriel Gameiro', '7645', '16/08/2018', 'Citroen', 'Gol', 'Vermelho', '2002', 'PIE-100',81000, '20:51', 'Escapamento com defeito', 81040 ,'18:21', '23:31', '7:2', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(187, 5, 5, 'Rua41', 'Ederson Gonzaga', '8766', '02/02/2017', 'Mercedes', 'Argo', 'Vermelho', '2002', 'PIE-70',53000, '15:53', 'Sem um parafuso direita atraz', 53030 ,'13:55', '16:3', '6:59', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(188, 6, 6, 'Rua51', 'Nicolas Castro', '2916', '05/08/2016', 'Ford', 'Kwid', 'Azul', '2001', 'PIE-181',5000, '23:48', 'Vidro trincado', 5080 ,'11:53', '14:13', '23:57', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(189, 7, 7, 'Rua61', 'Gustavo Honda', '2624', '09/04/2018', 'Chevrolet', 'Ka', 'Branco', '2003', 'PIE-553',94000, '13:14', 'rádio imbutido', 94040 ,'14:7', '15:43', '7:31', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(190, 1, 1, 'Rua01', 'Gustavo Honda', '9505', '01/07/2015', 'Chevrolet', 'Kwid', 'Vinho', '2003', 'PIE-394',41000, '1:48', 'Retrovisor quebrado', 41010 ,'1:35', '1:44', '7:33', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(191, 2, 2, 'Rua11', 'Leonardo Teixeira', '9496', '18/10/2015', 'Volkswagen', 'Gol', 'Prata', '2001', 'PIE-158',3000, '13:8', 'Placa esta à cair', 3040 ,'12:45', '8:34', '9:6', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(192, 3, 3, 'Rua21', 'Ederson Gonzaga', '8327', '09/02/2014', 'Audi', 'Onix', 'Vinho', '2002', 'PIE-83',53000, '5:56', 'Retrovisor quebrado', 53080 ,'3:11', '9:8', '21:15', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'sim'),
(193, 4, 4, 'Rua31', 'Nicolas Castro', '2333', '05/08/2018', 'Volkswagen', 'Ka', 'Preto', '2002', 'PIE-177',22000, '5:57', 'Sem um parafuso direita atraz', 22040 ,'12:51', '20:2', '13:47', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'sim'),
(194, 5, 5, 'Rua41', 'Nicolas Castro', '2234', '16/03/2014', 'Chevrolet', 'Argo', 'Vermelho', '2001', 'PIE-985',35000, '3:40', 'Placa esta à cair', 35010 ,'20:47', '18:25', '14:48', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(195, 6, 6, 'Rua51', 'Leonardo Teixeira', '9996', '17/02/2018', 'Ford', 'Prisma', 'Preto', '2000', 'PIE-704',54000, '5:52', 'rádio imbutido', 54060 ,'23:47', '7:46', '19:56', 'Allana Bruna Santos', 'Peças totalmente danificada', 'não'),
(196, 7, 7, 'Rua61', 'Leonardo Teixeira', '1391', '02/05/2015', 'Citroen', 'HB20', 'Vinho', '2004', 'PIE-469',7000, '12:15', 'Retrovisor quebrado', 7050 ,'10:18', '4:28', '10:58', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(197, 1, 1, 'Rua01', 'Gustavo Honda', '9371', '05/02/2017', 'Audi', 'Argo', 'Branco', '2004', 'PIE-893',51000, '9:49', 'Retrovisor quebrado', 51040 ,'8:30', '4:36', '21:39', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(198, 2, 2, 'Rua11', 'Ederson Gonzaga', '5880', '06/01/2017', 'Citroen', 'Kwid', 'Azul', '2004', 'PIE-175',28000, '11:7', 'Sem um parafuso direita atraz', 28070 ,'23:45', '21:31', '22:16', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(199, 3, 3, 'Rua21', 'Rafael Hadzic', '2213', '22/06/2014', 'Mercedes', 'HB20', 'Vermelho', '2002', 'PIE-362',85000, '22:37', 'Placa esta à cair', 85010 ,'7:34', '3:57', '20:14', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'não'),
(200, 4, 4, 'Rua31', 'Ederson Gonzaga', '539', '09/02/2014', 'Audi', 'Gol', 'Vinho', '2003', 'PIE-572',76000, '16:39', 'Escapamento com defeito', 76080 ,'10:21', '14:50', '19:34', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(201, 5, 5, 'Rua41', 'Gustavo Honda', '1718', '15/10/2018', 'Honda', 'Argo', 'Preto', '2000', 'PIE-271',74000, '18:55', 'Placa esta à cair', 74060 ,'11:37', '17:10', '10:18', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(202, 6, 6, 'Rua51', 'Rafael Hadzic', '7013', '27/06/2017', 'Audi', 'Argo', 'Prata', '2002', 'PIE-918',48000, '6:3', 'Placa esta à cair', 48030 ,'23:37', '13:10', '4:54', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(203, 7, 7, 'Rua61', 'Gabriel Gameiro', '3820', '10/02/2016', 'Volkswagen', 'Onix', 'Vinho', '2004', 'PIE-549',91000, '14:13', 'Retrovisor quebrado', 91080 ,'14:28', '10:14', '3:36', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(204, 1, 1, 'Rua01', 'Rafael Hadzic', '8043', '15/04/2016', 'Chevrolet', 'Prisma', 'Prata', '2004', 'PIE-138',13000, '19:34', 'rádio imbutido', 13080 ,'21:6', '16:2', '1:54', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(205, 2, 2, 'Rua11', 'Gabriel Gameiro', '8213', '27/03/2016', 'Chevrolet', 'Ka', 'Cinza', '2003', 'PIE-790',11000, '14:50', 'Escapamento com defeito', 11020 ,'14:47', '8:29', '9:36', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(206, 3, 3, 'Rua21', 'Gabriel Gameiro', '8982', '20/08/2018', 'Citroen', 'Gol', 'Azul', '2002', 'PIE-108',99000, '15:45', 'Sem um parafuso direita atraz', 99080 ,'19:9', '23:8', '4:35', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(207, 4, 4, 'Rua31', 'Gabriel Gameiro', '4105', '08/10/2018', 'Audi', 'HB20', 'Vermelho', '2002', 'PIE-300',58000, '16:45', 'Placa esta à cair', 58010 ,'8:30', '9:37', '7:43', 'Son Goku', 'Não danificado', 'não'),
(208, 5, 5, 'Rua41', 'Ederson Gonzaga', '1526', '04/03/2017', 'Ford', 'Argo', 'Vermelho', '2001', 'PIE-847',31000, '14:16', 'Tudo certo', 31090 ,'13:24', '14:29', '12:46', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(209, 6, 6, 'Rua51', 'Rafael Hadzic', '5690', '14/08/2018', 'Chevrolet', 'Ka', 'Cinza', '2004', 'PIE-814',85000, '23:37', 'Sem um parafuso direita atraz', 85050 ,'22:32', '14:37', '8:17', 'Robson Santos Onix', 'Não danificado', 'sim'),
(210, 7, 7, 'Rua61', 'Leonardo Teixeira', '4687', '19/03/2016', 'Ford', 'Onix', 'Vermelho', '2004', 'PIE-125',96000, '2:24', 'Placa esta à cair', 96020 ,'9:15', '21:34', '2:44', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(211, 1, 1, 'Rua01', 'Ederson Gonzaga', '2359', '05/03/2016', 'Honda', 'Ka', 'Preto', '2000', 'PIE-368',50000, '18:31', 'Sem um parafuso direita atraz', 50030 ,'3:30', '1:15', '14:23', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(212, 2, 2, 'Rua11', 'Rafael Hadzic', '7978', '08/06/2015', 'Honda', 'Argo', 'Prata', '2002', 'PIE-976',61000, '2:28', 'Vidro trincado', 61070 ,'8:57', '20:19', '13:41', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(213, 3, 3, 'Rua21', 'Rafael Hadzic', '8620', '27/03/2014', 'Ford', 'Onix', 'Preto', '2001', 'PIE-828',30000, '13:52', 'Tudo certo', 30050 ,'13:35', '4:14', '9:10', 'Son Goku', 'Peças totalmente danificada', 'sim'),
(214, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '1838', '08/11/2014', 'Mercedes', 'HB20', 'Cinza', '2003', 'PIE-624',23000, '3:44', 'Vidro trincado', 23080 ,'17:51', '8:1', '11:15', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(215, 5, 5, 'Rua41', 'Rafael Hadzic', '8766', '04/05/2015', 'Mercedes', 'Onix', 'Preto', '2001', 'PIE-586',27000, '9:16', 'Tudo certo', 27090 ,'18:27', '14:1', '20:7', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(216, 6, 6, 'Rua51', 'Gustavo Honda', '270', '01/01/2015', 'Honda', 'Kwid', 'Vermelho', '2003', 'PIE-319',13000, '2:12', 'Vidro trincado', 13040 ,'6:10', '22:16', '18:55', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(217, 7, 7, 'Rua61', 'Leonardo Teixeira', '1248', '16/03/2016', 'Ford', 'Gol', 'Cinza', '2004', 'PIE-911',18000, '5:10', 'rádio imbutido', 18010 ,'4:21', '1:20', '13:50', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'sim'),
(218, 1, 1, 'Rua01', 'Ederson Gonzaga', '718', '12/01/2015', 'Chevrolet', 'Prisma', 'Prata', '2004', 'PIE-580',22000, '8:4', 'Retrovisor quebrado', 22070 ,'6:54', '16:34', '3:35', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(219, 2, 2, 'Rua11', 'Gabriel Gameiro', '7792', '02/05/2017', 'Ford', 'Kwid', 'Branco', '2001', 'PIE-464',88000, '22:46', 'rádio imbutido', 88070 ,'18:8', '4:16', '9:46', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(220, 3, 3, 'Rua21', 'Nicolas Castro', '6165', '15/06/2015', 'Citroen', 'Kwid', 'Vinho', '2001', 'PIE-354',86000, '12:51', 'Vidro trincado', 86010 ,'19:23', '17:9', '17:47', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(221, 4, 4, 'Rua31', 'Gustavo Honda', '2231', '23/01/2017', 'Volkswagen', 'HB20', 'Prata', '2000', 'PIE-469',15000, '6:41', 'Tudo certo', 15040 ,'23:39', '9:9', '20:25', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(222, 5, 5, 'Rua41', 'Rafael Hadzic', '4451', '01/09/2016', 'Mercedes', 'Kwid', 'Prata', '2001', 'PIE-577',0, '7:26', 'Tudo certo', 20 ,'1:44', '3:23', '15:16', 'Robson Santos Onix', 'Não autorizado', 'não'),
(223, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '4071', '05/06/2017', 'Audi', 'Onix', 'Branco', '2004', 'PIE-48',35000, '18:38', 'Vidro trincado', 35070 ,'15:57', '8:54', '19:32', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(224, 7, 7, 'Rua61', 'Ederson Gonzaga', '9834', '20/06/2014', 'Citroen', 'Prisma', 'Prata', '2004', 'PIE-656',82000, '14:31', 'rádio imbutido', 82030 ,'19:16', '12:26', '21:8', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(225, 1, 1, 'Rua01', 'Gustavo Honda', '1779', '15/03/2015', 'Audi', 'Kwid', 'Prata', '2000', 'PIE-213',58000, '20:10', 'Placa esta à cair', 58090 ,'2:49', '18:20', '4:44', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(226, 2, 2, 'Rua11', 'Rafael Hadzic', '1760', '10/09/2014', 'Citroen', 'Onix', 'Branco', '2000', 'PIE-350',68000, '3:8', 'Tudo certo', 68020 ,'22:33', '19:28', '18:25', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(227, 3, 3, 'Rua21', 'Rafael Hadzic', '797', '19/05/2015', 'Audi', 'Argo', 'Vinho', '2003', 'PIE-23',67000, '21:15', 'rádio imbutido', 67080 ,'18:10', '16:42', '7:10', 'Son Goku', ' Não avaliado', 'não'),
(228, 4, 4, 'Rua31', 'Ederson Gonzaga', '5871', '25/01/2014', 'Audi', 'Prisma', 'Vinho', '2001', 'PIE-569',59000, '6:35', 'Placa esta à cair', 59070 ,'1:32', '4:8', '2:8', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(229, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '1290', '10/09/2015', 'Citroen', 'HB20', 'Branco', '2000', 'PIE-391',61000, '10:59', 'Vidro trincado', 61030 ,'13:48', '22:22', '10:34', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(230, 6, 6, 'Rua51', 'Ederson Gonzaga', '2235', '09/05/2014', 'Ford', 'Gol', 'Vermelho', '2000', 'PIE-580',97000, '3:24', 'Tudo certo', 97090 ,'7:18', '7:34', '15:45', 'Robson Santos Onix', 'Não autorizado', 'não'),
(231, 7, 7, 'Rua61', 'Leonardo Teixeira', '610', '22/03/2017', 'Chevrolet', 'Kwid', 'Vinho', '2000', 'PIE-67',94000, '11:7', 'Sem um parafuso direita atraz', 94080 ,'17:5', '18:44', '18:24', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(232, 1, 1, 'Rua01', 'Rafael Hadzic', '5803', '01/09/2016', 'Ford', 'Ka', 'Cinza', '2004', 'PIE-122',0, '4:38', 'Placa esta à cair', 30 ,'9:51', '15:47', '15:19', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(233, 2, 2, 'Rua11', 'Leonardo Teixeira', '5493', '02/03/2014', 'Volkswagen', 'Prisma', 'Vermelho', '2003', 'PIE-265',44000, '16:38', 'rádio imbutido', 44020 ,'14:45', '17:12', '8:19', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'sim'),
(234, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '4095', '12/05/2017', 'Audi', 'Gol', 'Azul', '2003', 'PIE-933',9000, '18:21', 'Retrovisor quebrado', 9020 ,'5:41', '19:27', '8:42', 'Allana Bruna Santos', 'Não danificado', 'sim'),
(235, 4, 4, 'Rua31', 'Gustavo Honda', '8985', '27/04/2014', 'Citroen', 'Kwid', 'Preto', '2003', 'PIE-459',84000, '22:19', 'Escapamento com defeito', 84040 ,'4:49', '22:20', '20:43', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(236, 5, 5, 'Rua41', 'Nicolas Castro', '7107', '21/03/2014', 'Mercedes', 'Ka', 'Cinza', '2002', 'PIE-191',14000, '12:24', 'Escapamento com defeito', 14010 ,'10:5', '13:58', '9:50', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(237, 6, 6, 'Rua51', 'Nicolas Castro', '7084', '26/08/2015', 'Citroen', 'Argo', 'Vermelho', '2001', 'PIE-840',86000, '14:18', 'Sem um parafuso direita atraz', 86060 ,'21:42', '12:12', '3:47', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(238, 7, 7, 'Rua61', 'Gabriel Gameiro', '4451', '09/02/2014', 'Volkswagen', 'Gol', 'Branco', '2000', 'PIE-355',83000, '14:15', 'rádio imbutido', 83080 ,'7:30', '6:20', '19:48', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(239, 1, 1, 'Rua01', 'Leonardo Teixeira', '123', '11/01/2016', 'Ford', 'Argo', 'Preto', '2001', 'PIE-927',22000, '5:24', 'Escapamento com defeito', 22070 ,'19:9', '5:56', '13:19', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(240, 2, 2, 'Rua11', 'Nicolas Castro', '4720', '09/04/2014', 'Chevrolet', 'Kwid', 'Vinho', '2000', 'PIE-924',60000, '11:14', 'Escapamento com defeito', 60020 ,'21:35', '2:49', '10:2', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(241, 3, 3, 'Rua21', 'Ederson Gonzaga', '3865', '08/09/2018', 'Audi', 'HB20', 'Prata', '2000', 'PIE-845',4000, '19:49', 'Placa esta à cair', 4080 ,'12:38', '9:18', '9:19', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(242, 4, 4, 'Rua31', 'Rafael Hadzic', '2073', '09/03/2016', 'Honda', 'HB20', 'Preto', '2003', 'PIE-609',90000, '22:54', 'Vidro trincado', 90040 ,'2:11', '6:43', '22:21', 'Son Goku', 'Não autorizado', 'não'),
(243, 5, 5, 'Rua41', 'Leonardo Teixeira', '5338', '21/01/2014', 'Ford', 'Gol', 'Azul', '2001', 'PIE-759',10000, '1:18', 'Retrovisor quebrado', 10010 ,'22:33', '6:34', '14:15', 'Robson Santos Onix', 'Não danificado', 'não'),
(244, 6, 6, 'Rua51', 'Gabriel Gameiro', '5056', '26/02/2015', 'Audi', 'HB20', 'Preto', '2001', 'PIE-402',91000, '15:39', 'Sem um parafuso direita atraz', 91040 ,'11:4', '7:53', '12:8', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'sim'),
(245, 7, 7, 'Rua61', 'Gustavo Honda', '8383', '09/07/2015', 'Mercedes', 'Prisma', 'Cinza', '2002', 'PIE-965',60000, '6:48', 'Placa esta à cair', 60070 ,'15:41', '6:27', '16:5', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(246, 1, 1, 'Rua01', 'Gabriel Gameiro', '2647', '13/05/2014', 'Audi', 'Gol', 'Vinho', '2001', 'PIE-73',59000, '11:28', 'Sem um parafuso direita atraz', 59040 ,'7:37', '9:15', '21:18', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(247, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '3944', '04/10/2018', 'Audi', 'Argo', 'Cinza', '2003', 'PIE-152',77000, '21:39', 'rádio imbutido', 77090 ,'16:40', '20:16', '14:57', 'Maria Lúcia Mustang', 'Não autorizado', 'não'),
(248, 3, 3, 'Rua21', 'Rafael Hadzic', '2520', '08/04/2016', 'Chevrolet', 'Argo', 'Prata', '2004', 'PIE-558',28000, '20:8', 'Tudo certo', 28040 ,'4:20', '10:14', '8:22', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(249, 4, 4, 'Rua31', 'Gabriel Gameiro', '69', '10/05/2016', 'Volkswagen', 'Prisma', 'Preto', '2003', 'PIE-313',88000, '21:4', 'Sem um parafuso direita atraz', 88050 ,'19:39', '10:13', '20:41', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(250, 5, 5, 'Rua41', 'Gabriel Gameiro', '6547', '18/02/2017', 'Chevrolet', 'HB20', 'Preto', '2003', 'PIE-777',56000, '22:19', 'rádio imbutido', 56070 ,'22:11', '15:2', '17:26', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(251, 6, 6, 'Rua51', 'Gustavo Honda', '6648', '08/05/2016', 'Citroen', 'Prisma', 'Vinho', '2001', 'PIE-822',24000, '21:19', 'Tudo certo', 24010 ,'6:53', '11:52', '1:57', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(252, 7, 7, 'Rua61', 'Ederson Gonzaga', '8519', '10/09/2018', 'Chevrolet', 'Argo', 'Azul', '2003', 'PIE-343',62000, '6:16', 'Retrovisor quebrado', 62040 ,'12:40', '14:50', '12:10', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'sim'),
(253, 1, 1, 'Rua01', 'Gabriel Gameiro', '9874', '03/05/2015', 'Audi', 'Prisma', 'Vinho', '2003', 'PIE-168',48000, '22:13', 'Placa esta à cair', 48090 ,'10:42', '6:46', '18:6', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(254, 2, 2, 'Rua11', 'Nicolas Castro', '9093', '03/05/2017', 'Mercedes', 'Argo', 'Azul', '2001', 'PIE-699',98000, '15:19', 'Placa esta à cair', 98010 ,'1:4', '13:2', '4:45', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(255, 3, 3, 'Rua21', 'Gabriel Gameiro', '1433', '08/07/2014', 'Audi', 'Prisma', 'Prata', '2003', 'PIE-854',90000, '20:10', 'Vidro trincado', 90090 ,'9:13', '5:10', '19:49', 'Allana Bruna Santos', ' Não avaliado', 'sim'),
(256, 4, 4, 'Rua31', 'Leonardo Teixeira', '2975', '11/11/2016', 'Citroen', 'HB20', 'Branco', '2004', 'PIE-146',71000, '12:3', 'Retrovisor quebrado', 71040 ,'3:6', '17:10', '7:45', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(257, 5, 5, 'Rua41', 'Leonardo Teixeira', '7414', '06/02/2017', 'Mercedes', 'Argo', 'Vermelho', '2002', 'PIE-950',6000, '2:37', 'Retrovisor quebrado', 6030 ,'11:26', '6:1', '13:32', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(258, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '3316', '26/01/2018', 'Honda', 'Argo', 'Prata', '2004', 'PIE-303',90000, '12:15', 'rádio imbutido', 90090 ,'22:51', '18:53', '21:8', 'Maria Lúcia Mustang', 'Não autorizado', 'não'),
(259, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '1953', '26/08/2017', 'Chevrolet', 'Prisma', 'Azul', '2000', 'PIE-809',43000, '1:6', 'Retrovisor quebrado', 43030 ,'9:20', '18:3', '17:23', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(260, 1, 1, 'Rua01', 'Leonardo Teixeira', '8344', '14/09/2017', 'Ford', 'Kwid', 'Preto', '2002', 'PIE-457',73000, '8:30', 'Sem um parafuso direita atraz', 73050 ,'21:11', '18:58', '21:53', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'não'),
(261, 2, 2, 'Rua11', 'Leonardo Teixeira', '601', '08/06/2014', 'Citroen', 'Ka', 'Azul', '2004', 'PIE-448',37000, '4:32', 'Vidro trincado', 37080 ,'6:4', '5:59', '16:1', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(262, 3, 3, 'Rua21', 'Ederson Gonzaga', '5221', '06/01/2016', 'Honda', 'Kwid', 'Vermelho', '2001', 'PIE-336',78000, '1:35', 'Retrovisor quebrado', 78070 ,'20:17', '19:52', '14:11', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(263, 4, 4, 'Rua31', 'Gabriel Gameiro', '8416', '03/06/2016', 'Citroen', 'Onix', 'Branco', '2001', 'PIE-77',0, '14:19', 'Tudo certo', 70 ,'23:8', '20:8', '16:10', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(264, 5, 5, 'Rua41', 'Ederson Gonzaga', '6123', '18/09/2014', 'Mercedes', 'Ka', 'Vermelho', '2000', 'PIE-787',94000, '10:30', 'Vidro trincado', 94010 ,'18:51', '3:33', '2:51', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(265, 6, 6, 'Rua51', 'Rafael Hadzic', '7787', '24/07/2014', 'Chevrolet', 'Ka', 'Preto', '2004', 'PIE-303',56000, '3:30', 'Escapamento com defeito', 56030 ,'19:56', '18:38', '16:47', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'não'),
(266, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '1553', '27/04/2017', 'Volkswagen', 'Kwid', 'Preto', '2002', 'PIE-864',45000, '1:23', 'Placa esta à cair', 45040 ,'16:20', '9:2', '20:28', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'sim'),
(267, 1, 1, 'Rua01', 'Ederson Gonzaga', '977', '18/09/2017', 'Ford', 'Prisma', 'Vermelho', '2004', 'PIE-482',63000, '20:51', 'Sem um parafuso direita atraz', 63090 ,'21:8', '22:33', '11:10', 'Son Goku', 'Não autorizado', 'sim'),
(268, 2, 2, 'Rua11', 'Ederson Gonzaga', '5871', '03/04/2018', 'Ford', 'Kwid', 'Prata', '2002', 'PIE-832',71000, '6:51', 'Sem um parafuso direita atraz', 71090 ,'7:43', '4:55', '14:50', 'Son Goku', 'Peças totalmente danificada', 'não'),
(269, 3, 3, 'Rua21', 'Gabriel Gameiro', '2401', '26/06/2015', 'Volkswagen', 'Argo', 'Preto', '2001', 'PIE-737',73000, '18:1', 'Sem um parafuso direita atraz', 73070 ,'7:18', '2:32', '19:20', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'sim'),
(270, 4, 4, 'Rua31', 'Rafael Hadzic', '59', '23/08/2014', 'Ford', 'Prisma', 'Azul', '2003', 'PIE-569',13000, '20:31', 'Placa esta à cair', 13040 ,'18:32', '3:48', '19:53', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(271, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '5623', '06/05/2016', 'Audi', 'Gol', 'Cinza', '2001', 'PIE-137',90000, '7:23', 'rádio imbutido', 90010 ,'2:31', '22:59', '12:45', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(272, 6, 6, 'Rua51', 'Rafael Hadzic', '6713', '25/02/2017', 'Mercedes', 'Gol', 'Azul', '2001', 'PIE-894',73000, '15:39', 'Retrovisor quebrado', 73010 ,'6:23', '8:34', '12:20', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(273, 7, 7, 'Rua61', 'Ederson Gonzaga', '86', '10/07/2016', 'Volkswagen', 'Gol', 'Azul', '2003', 'PIE-531',67000, '14:22', 'Tudo certo', 67030 ,'13:16', '18:14', '3:15', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(274, 1, 1, 'Rua01', 'Ederson Gonzaga', '2253', '13/10/2015', 'Volkswagen', 'Gol', 'Branco', '2001', 'PIE-289',83000, '17:12', 'Retrovisor quebrado', 83090 ,'13:31', '18:38', '7:19', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(275, 2, 2, 'Rua11', 'Gabriel Gameiro', '2564', '19/06/2018', 'Chevrolet', 'Prisma', 'Azul', '2000', 'PIE-549',87000, '22:9', 'Sem um parafuso direita atraz', 87050 ,'18:10', '8:57', '7:57', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'sim'),
(276, 3, 3, 'Rua21', 'Gabriel Gameiro', '1365', '20/02/2015', 'Ford', 'Argo', 'Vinho', '2000', 'PIE-545',46000, '23:51', 'rádio imbutido', 46080 ,'12:10', '8:11', '2:2', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(277, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '8341', '23/07/2018', 'Citroen', 'Kwid', 'Vermelho', '2003', 'PIE-255',96000, '21:52', 'rádio imbutido', 96010 ,'5:4', '10:37', '15:46', 'Allana Bruna Santos', 'Não danificado', 'não'),
(278, 5, 5, 'Rua41', 'Leonardo Teixeira', '8675', '19/02/2017', 'Mercedes', 'Prisma', 'Azul', '2000', 'PIE-808',92000, '14:35', 'Placa esta à cair', 92080 ,'14:48', '12:2', '5:26', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(279, 6, 6, 'Rua51', 'Gabriel Gameiro', '7122', '10/01/2017', 'Volkswagen', 'Ka', 'Preto', '2001', 'PIE-971',21000, '12:23', 'Tudo certo', 21080 ,'12:1', '16:20', '10:49', 'Allana Bruna Santos', 'Não danificado', 'sim'),
(280, 7, 7, 'Rua61', 'Rafael Hadzic', '2637', '22/05/2018', 'Chevrolet', 'HB20', 'Prata', '2000', 'PIE-544',92000, '7:9', 'Placa esta à cair', 92080 ,'3:5', '10:49', '11:44', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(281, 1, 1, 'Rua01', 'Gabriel Gameiro', '8659', '02/04/2017', 'Mercedes', 'Prisma', 'Vinho', '2002', 'PIE-748',25000, '22:17', 'Placa esta à cair', 25040 ,'18:32', '16:32', '2:16', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(282, 2, 2, 'Rua11', 'Gabriel Gameiro', '6661', '16/10/2018', 'Honda', 'Kwid', 'Vermelho', '2004', 'PIE-904',2000, '17:52', 'Tudo certo', 2010 ,'19:53', '10:44', '4:3', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(283, 3, 3, 'Rua21', 'Ederson Gonzaga', '3117', '03/05/2014', 'Honda', 'Gol', 'Cinza', '2002', 'PIE-9',64000, '20:42', 'Vidro trincado', 64020 ,'10:45', '3:11', '14:14', 'Maria Lúcia Mustang', 'Não danificado', 'sim'),
(284, 4, 4, 'Rua31', 'Leonardo Teixeira', '2456', '10/01/2016', 'Audi', 'Kwid', 'Vermelho', '2003', 'PIE-7',60000, '2:56', 'Sem um parafuso direita atraz', 60040 ,'18:56', '4:21', '9:46', 'Robson Santos Onix', 'Não danificado', 'não'),
(285, 5, 5, 'Rua41', 'Leonardo Teixeira', '1160', '25/09/2016', 'Ford', 'Ka', 'Preto', '2000', 'PIE-845',76000, '23:18', 'rádio imbutido', 76050 ,'2:54', '8:45', '14:6', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(286, 6, 6, 'Rua51', 'Ederson Gonzaga', '605', '24/05/2017', 'Ford', 'Prisma', 'Cinza', '2000', 'PIE-632',8000, '4:25', 'Tudo certo', 8040 ,'23:33', '5:16', '5:20', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'não'),
(287, 7, 7, 'Rua61', 'Rafael Hadzic', '8760', '23/09/2017', 'Honda', 'Gol', 'Vinho', '2000', 'PIE-475',61000, '14:56', 'rádio imbutido', 61040 ,'18:38', '5:46', '9:48', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(288, 1, 1, 'Rua01', 'Gustavo Honda', '3371', '02/06/2015', 'Citroen', 'Argo', 'Cinza', '2002', 'PIE-819',75000, '16:53', 'Retrovisor quebrado', 75060 ,'7:52', '6:50', '1:23', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(289, 2, 2, 'Rua11', 'Gustavo Honda', '1740', '10/10/2016', 'Mercedes', 'Ka', 'Branco', '2002', 'PIE-362',12000, '12:38', 'Escapamento com defeito', 12090 ,'1:43', '2:8', '16:41', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(290, 3, 3, 'Rua21', 'Ederson Gonzaga', '4719', '19/06/2014', 'Honda', 'Kwid', 'Prata', '2002', 'PIE-876',76000, '22:11', 'Escapamento com defeito', 76010 ,'13:24', '12:34', '23:32', 'Maria Lúcia Mustang', ' Não avaliado', 'sim'),
(291, 4, 4, 'Rua31', 'Rafael Hadzic', '5038', '10/07/2015', 'Chevrolet', 'Argo', 'Azul', '2000', 'PIE-494',21000, '10:13', 'Retrovisor quebrado', 21060 ,'19:35', '2:52', '8:9', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(292, 5, 5, 'Rua41', 'Gabriel Gameiro', '2574', '26/11/2018', 'Mercedes', 'Gol', 'Azul', '2001', 'PIE-305',81000, '19:17', 'Escapamento com defeito', 81050 ,'16:55', '22:37', '8:34', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(293, 6, 6, 'Rua51', 'Gabriel Gameiro', '1700', '27/02/2018', 'Volkswagen', 'HB20', 'Vinho', '2000', 'PIE-320',40000, '23:7', 'Vidro trincado', 40080 ,'13:10', '19:58', '14:54', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'sim'),
(294, 7, 7, 'Rua61', 'Nicolas Castro', '8301', '10/06/2018', 'Audi', 'Kwid', 'Azul', '2000', 'PIE-132',99000, '21:32', 'Vidro trincado', 99050 ,'14:40', '20:5', '3:56', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(295, 1, 1, 'Rua01', 'Ederson Gonzaga', '6602', '06/01/2017', 'Citroen', 'Ka', 'Vinho', '2000', 'PIE-854',30000, '16:6', 'Tudo certo', 30090 ,'19:37', '21:20', '11:15', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(296, 2, 2, 'Rua11', 'Gustavo Honda', '8410', '09/01/2017', 'Chevrolet', 'Gol', 'Vermelho', '2000', 'PIE-147',20000, '8:2', 'Retrovisor quebrado', 20090 ,'3:2', '3:18', '12:7', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(297, 3, 3, 'Rua21', 'Leonardo Teixeira', '9890', '09/03/2017', 'Honda', 'Ka', 'Azul', '2004', 'PIE-428',40000, '15:59', 'Tudo certo', 40090 ,'16:28', '6:50', '17:37', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(298, 4, 4, 'Rua31', 'Ederson Gonzaga', '3495', '21/01/2017', 'Chevrolet', 'Ka', 'Preto', '2004', 'PIE-557',87000, '11:10', 'Escapamento com defeito', 87070 ,'23:18', '13:54', '17:55', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(299, 5, 5, 'Rua41', 'Leonardo Teixeira', '5159', '27/02/2015', 'Audi', 'Ka', 'Branco', '2000', 'PIE-615',97000, '16:16', 'rádio imbutido', 97080 ,'12:26', '5:48', '21:19', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'não'),
(300, 6, 6, 'Rua51', 'Leonardo Teixeira', '9390', '03/11/2018', 'Volkswagen', 'Prisma', 'Prata', '2003', 'PIE-548',23000, '7:38', 'Vidro trincado', 23090 ,'10:12', '7:4', '14:51', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'sim'),
(301, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '7347', '06/07/2014', 'Honda', 'Argo', 'Vinho', '2000', 'PIE-808',18000, '12:44', 'Tudo certo', 18040 ,'2:45', '10:17', '16:34', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(302, 1, 1, 'Rua01', 'Gustavo Honda', '5558', '18/04/2018', 'Ford', 'Prisma', 'Azul', '2002', 'PIE-257',77000, '20:18', 'Sem um parafuso direita atraz', 77040 ,'2:14', '6:17', '9:24', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(303, 2, 2, 'Rua11', 'Nicolas Castro', '5361', '24/11/2015', 'Honda', 'Ka', 'Preto', '2001', 'PIE-960',22000, '16:10', 'Placa esta à cair', 22080 ,'11:18', '4:49', '18:38', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(304, 3, 3, 'Rua21', 'Ederson Gonzaga', '5706', '14/07/2016', 'Citroen', 'Prisma', 'Vermelho', '2004', 'PIE-652',37000, '5:39', 'Retrovisor quebrado', 37080 ,'14:56', '8:25', '15:13', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(305, 4, 4, 'Rua31', 'Nicolas Castro', '4432', '08/01/2018', 'Honda', 'Kwid', 'Branco', '2002', 'PIE-981',85000, '20:50', 'Sem um parafuso direita atraz', 85070 ,'15:58', '20:7', '22:23', 'Son Goku', 'Peças totalmente danificada', 'não'),
(306, 5, 5, 'Rua41', 'Nicolas Castro', '5624', '06/09/2015', 'Audi', 'Ka', 'Cinza', '2002', 'PIE-829',63000, '12:10', 'Escapamento com defeito', 63050 ,'7:58', '2:22', '3:29', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(307, 6, 6, 'Rua51', 'Ederson Gonzaga', '3189', '06/08/2018', 'Audi', 'Argo', 'Vinho', '2002', 'PIE-302',81000, '6:7', 'Retrovisor quebrado', 81050 ,'22:7', '5:6', '9:47', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'não'),
(308, 7, 7, 'Rua61', 'Leonardo Teixeira', '3248', '16/08/2017', 'Ford', 'Ka', 'Vinho', '2003', 'PIE-208',74000, '14:11', 'Placa esta à cair', 74070 ,'18:58', '17:54', '17:57', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(309, 1, 1, 'Rua01', 'Gabriel Gameiro', '469', '24/07/2014', 'Citroen', 'Onix', 'Vermelho', '2003', 'PIE-92',65000, '18:1', 'rádio imbutido', 65040 ,'16:7', '19:51', '10:59', 'Allana Bruna Santos', 'Peças totalmente danificada', 'não'),
(310, 2, 2, 'Rua11', 'Gustavo Honda', '5962', '07/08/2018', 'Mercedes', 'Argo', 'Cinza', '2001', 'PIE-154',64000, '16:42', 'Placa esta à cair', 64070 ,'7:24', '22:10', '16:20', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(311, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '6845', '17/05/2016', 'Citroen', 'Ka', 'Cinza', '2001', 'PIE-638',50000, '9:34', 'Retrovisor quebrado', 50020 ,'3:53', '21:4', '14:13', 'Allana Bruna Santos', 'Não autorizado', 'sim'),
(312, 4, 4, 'Rua31', 'Leonardo Teixeira', '110', '16/05/2016', 'Citroen', 'Prisma', 'Prata', '2001', 'PIE-491',78000, '16:44', 'Placa esta à cair', 78060 ,'8:6', '21:19', '13:14', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(313, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '5886', '08/08/2015', 'Ford', 'Ka', 'Cinza', '2002', 'PIE-389',20000, '21:32', 'Sem um parafuso direita atraz', 20010 ,'17:47', '14:18', '22:13', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(314, 6, 6, 'Rua51', 'Rafael Hadzic', '7746', '06/03/2014', 'Chevrolet', 'Kwid', 'Vermelho', '2004', 'PIE-442',5000, '11:32', 'Retrovisor quebrado', 5080 ,'1:48', '1:48', '11:25', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(315, 7, 7, 'Rua61', 'Nicolas Castro', '142', '08/08/2014', 'Chevrolet', 'Onix', 'Azul', '2003', 'PIE-153',41000, '3:36', 'Vidro trincado', 41080 ,'6:16', '3:40', '14:46', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'não'),
(316, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '5609', '26/05/2018', 'Mercedes', 'HB20', 'Azul', '2003', 'PIE-466',32000, '15:22', 'Placa esta à cair', 32040 ,'7:25', '1:57', '5:50', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(317, 2, 2, 'Rua11', 'Ederson Gonzaga', '6852', '23/03/2014', 'Volkswagen', 'Kwid', 'Azul', '2003', 'PIE-957',6000, '17:59', 'Vidro trincado', 6040 ,'9:55', '11:31', '21:31', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(318, 3, 3, 'Rua21', 'Nicolas Castro', '1318', '14/09/2016', 'Honda', 'Ka', 'Vinho', '2002', 'PIE-517',28000, '19:12', 'Tudo certo', 28070 ,'9:13', '16:58', '21:47', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'sim'),
(319, 4, 4, 'Rua31', 'Ederson Gonzaga', '8388', '08/06/2018', 'Honda', 'Gol', 'Prata', '2001', 'PIE-73',74000, '19:44', 'Sem um parafuso direita atraz', 74030 ,'7:26', '5:24', '15:51', 'Son Goku', 'Peças totalmente danificada', 'não'),
(320, 5, 5, 'Rua41', 'Ederson Gonzaga', '1800', '03/05/2018', 'Citroen', 'Gol', 'Preto', '2002', 'PIE-203',74000, '16:56', 'Placa esta à cair', 74020 ,'20:46', '22:20', '1:47', 'Robson Santos Onix', 'Não danificado', 'sim'),
(321, 6, 6, 'Rua51', 'Ederson Gonzaga', '2414', '23/08/2018', 'Honda', 'HB20', 'Azul', '2003', 'PIE-692',51000, '17:7', 'Sem um parafuso direita atraz', 51080 ,'15:44', '14:1', '12:14', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(322, 7, 7, 'Rua61', 'Ederson Gonzaga', '8946', '11/08/2017', 'Mercedes', 'Onix', 'Branco', '2000', 'PIE-365',28000, '1:33', 'Escapamento com defeito', 28060 ,'21:57', '11:40', '23:48', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(323, 1, 1, 'Rua01', 'Ederson Gonzaga', '6780', '12/06/2014', 'Honda', 'HB20', 'Branco', '2001', 'PIE-772',63000, '19:55', 'Placa esta à cair', 63020 ,'14:13', '21:34', '6:30', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'sim'),
(324, 2, 2, 'Rua11', 'Nicolas Castro', '7485', '04/11/2015', 'Volkswagen', 'HB20', 'Azul', '2000', 'PIE-552',45000, '15:46', 'Vidro trincado', 45060 ,'8:27', '3:56', '18:2', 'Son Goku', 'Peça parcialmente danificada', 'sim'),
(325, 3, 3, 'Rua21', 'Gabriel Gameiro', '4139', '04/08/2015', 'Volkswagen', 'Kwid', 'Branco', '2003', 'PIE-535',63000, '5:53', 'Vidro trincado', 63070 ,'3:2', '4:4', '19:44', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(326, 4, 4, 'Rua31', 'Nicolas Castro', '94', '24/04/2016', 'Volkswagen', 'Ka', 'Vinho', '2001', 'PIE-924',14000, '12:35', 'Placa esta à cair', 14010 ,'17:29', '8:11', '8:1', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(327, 5, 5, 'Rua41', 'Gabriel Gameiro', '1289', '08/10/2015', 'Chevrolet', 'Argo', 'Preto', '2001', 'PIE-127',38000, '22:50', 'rádio imbutido', 38040 ,'6:29', '20:53', '19:55', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(328, 6, 6, 'Rua51', 'Gabriel Gameiro', '4729', '23/09/2018', 'Honda', 'Argo', 'Prata', '2004', 'PIE-51',67000, '18:27', 'Vidro trincado', 67070 ,'8:3', '10:24', '8:29', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(329, 7, 7, 'Rua61', 'Rafael Hadzic', '8249', '12/02/2014', 'Chevrolet', 'Gol', 'Cinza', '2004', 'PIE-946',52000, '20:5', 'Tudo certo', 52090 ,'2:39', '3:29', '13:13', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(330, 1, 1, 'Rua01', 'Ederson Gonzaga', '9184', '17/09/2014', 'Mercedes', 'Onix', 'Azul', '2001', 'PIE-126',94000, '11:16', 'Placa esta à cair', 94020 ,'1:21', '7:17', '21:20', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(331, 2, 2, 'Rua11', 'Leonardo Teixeira', '2051', '06/04/2015', 'Audi', 'Gol', 'Cinza', '2004', 'PIE-119',82000, '15:28', 'Placa esta à cair', 82010 ,'3:47', '3:15', '23:10', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(332, 3, 3, 'Rua21', 'Gabriel Gameiro', '7875', '02/06/2015', 'Chevrolet', 'Prisma', 'Prata', '2003', 'PIE-96',36000, '20:55', 'rádio imbutido', 36030 ,'3:41', '12:48', '6:23', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(333, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '264', '16/07/2017', 'Audi', 'Argo', 'Branco', '2002', 'PIE-642',92000, '1:47', 'Retrovisor quebrado', 92030 ,'21:16', '16:30', '13:21', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(334, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '5856', '21/03/2017', 'Mercedes', 'HB20', 'Cinza', '2000', 'PIE-189',84000, '3:49', 'Placa esta à cair', 84010 ,'6:36', '3:46', '18:24', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'não'),
(335, 6, 6, 'Rua51', 'Ederson Gonzaga', '9251', '05/10/2015', 'Audi', 'HB20', 'Preto', '2001', 'PIE-689',3000, '1:46', 'Sem um parafuso direita atraz', 3080 ,'13:9', '1:44', '16:5', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(336, 7, 7, 'Rua61', 'Nicolas Castro', '5055', '07/10/2015', 'Mercedes', 'HB20', 'Vermelho', '2001', 'PIE-362',48000, '7:50', 'Sem um parafuso direita atraz', 48080 ,'3:29', '18:20', '16:42', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'sim'),
(337, 1, 1, 'Rua01', 'Gabriel Gameiro', '2138', '05/10/2015', 'Ford', 'Gol', 'Branco', '2000', 'PIE-568',96000, '4:23', 'Placa esta à cair', 96050 ,'19:19', '7:54', '4:28', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'sim'),
(338, 2, 2, 'Rua11', 'Leonardo Teixeira', '7739', '08/05/2017', 'Chevrolet', 'Gol', 'Branco', '2001', 'PIE-157',45000, '8:15', 'Sem um parafuso direita atraz', 45010 ,'2:20', '12:12', '7:14', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(339, 3, 3, 'Rua21', 'Ederson Gonzaga', '1521', '05/07/2015', 'Mercedes', 'Gol', 'Vinho', '2001', 'PIE-846',19000, '15:47', 'Retrovisor quebrado', 19090 ,'3:15', '10:58', '9:35', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(340, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '2206', '05/02/2017', 'Volkswagen', 'Onix', 'Branco', '2004', 'PIE-464',45000, '20:10', 'Sem um parafuso direita atraz', 45070 ,'21:10', '19:6', '18:2', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(341, 5, 5, 'Rua41', 'Ederson Gonzaga', '1896', '13/03/2014', 'Chevrolet', 'Prisma', 'Preto', '2003', 'PIE-131',20000, '2:36', 'Escapamento com defeito', 20050 ,'19:18', '4:31', '7:56', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(342, 6, 6, 'Rua51', 'Leonardo Teixeira', '5706', '03/07/2017', 'Volkswagen', 'Argo', 'Branco', '2000', 'PIE-697',43000, '22:54', 'Escapamento com defeito', 43040 ,'8:26', '8:45', '11:11', 'Son Goku', 'Não autorizado', 'sim'),
(343, 7, 7, 'Rua61', 'Rafael Hadzic', '6817', '12/05/2014', 'Citroen', 'Gol', 'Azul', '2004', 'PIE-16',82000, '18:51', 'Sem um parafuso direita atraz', 82010 ,'18:45', '19:37', '7:7', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(344, 1, 1, 'Rua01', 'Nicolas Castro', '9582', '05/05/2014', 'Citroen', 'HB20', 'Prata', '2000', 'PIE-879',89000, '8:55', 'Placa esta à cair', 89020 ,'10:4', '9:13', '23:28', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(345, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '5777', '10/11/2014', 'Audi', 'Onix', 'Vermelho', '2003', 'PIE-679',94000, '5:5', 'Retrovisor quebrado', 94070 ,'19:14', '10:47', '22:40', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(346, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '1645', '04/03/2018', 'Honda', 'Argo', 'Vermelho', '2001', 'PIE-136',36000, '22:35', 'Placa esta à cair', 36040 ,'6:40', '5:37', '10:3', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(347, 4, 4, 'Rua31', 'Rafael Hadzic', '5819', '13/05/2014', 'Volkswagen', 'Kwid', 'Preto', '2003', 'PIE-649',14000, '17:15', 'Vidro trincado', 14030 ,'1:59', '4:11', '6:16', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(348, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '769', '06/04/2018', 'Ford', 'Ka', 'Branco', '2000', 'PIE-107',59000, '15:27', 'Sem um parafuso direita atraz', 59050 ,'3:16', '13:16', '20:5', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(349, 6, 6, 'Rua51', 'Leonardo Teixeira', '2870', '27/02/2014', 'Volkswagen', 'Onix', 'Vermelho', '2000', 'PIE-229',74000, '7:51', 'Placa esta à cair', 74060 ,'6:27', '1:46', '3:59', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(350, 7, 7, 'Rua61', 'Ederson Gonzaga', '8718', '22/07/2015', 'Citroen', 'Onix', 'Branco', '2002', 'PIE-755',82000, '11:39', 'Placa esta à cair', 82050 ,'23:4', '4:20', '10:27', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(351, 1, 1, 'Rua01', 'Leonardo Teixeira', '7808', '22/07/2015', 'Honda', 'Onix', 'Azul', '2002', 'PIE-75',76000, '1:48', 'Vidro trincado', 76060 ,'17:46', '17:1', '9:51', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'sim'),
(352, 2, 2, 'Rua11', 'Ederson Gonzaga', '4196', '14/08/2017', 'Audi', 'Prisma', 'Azul', '2000', 'PIE-96',77000, '1:34', 'Vidro trincado', 77010 ,'18:1', '5:45', '2:16', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'sim'),
(353, 3, 3, 'Rua21', 'Gabriel Gameiro', '2251', '03/01/2015', 'Chevrolet', 'HB20', 'Vermelho', '2003', 'PIE-447',25000, '4:22', 'Placa esta à cair', 25010 ,'10:33', '18:16', '17:42', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(354, 4, 4, 'Rua31', 'Gustavo Honda', '4127', '19/02/2016', 'Citroen', 'Onix', 'Azul', '2002', 'PIE-332',75000, '7:35', 'rádio imbutido', 75070 ,'10:19', '20:38', '19:31', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(355, 5, 5, 'Rua41', 'Gustavo Honda', '9067', '12/02/2015', 'Mercedes', 'Gol', 'Branco', '2003', 'PIE-606',60000, '18:4', 'Retrovisor quebrado', 60090 ,'16:32', '2:43', '12:4', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(356, 6, 6, 'Rua51', 'Ederson Gonzaga', '7154', '13/01/2017', 'Citroen', 'HB20', 'Vinho', '2002', 'PIE-902',49000, '16:17', 'rádio imbutido', 49040 ,'6:30', '13:4', '12:36', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(357, 7, 7, 'Rua61', 'Nicolas Castro', '2626', '01/04/2014', 'Honda', 'HB20', 'Vermelho', '2004', 'PIE-881',20000, '22:33', 'Retrovisor quebrado', 20060 ,'20:37', '9:14', '2:30', 'Son Goku', 'Peças totalmente danificada', 'sim'),
(358, 1, 1, 'Rua01', 'Gabriel Gameiro', '4377', '12/11/2017', 'Ford', 'Onix', 'Prata', '2001', 'PIE-932',6000, '10:36', 'Sem um parafuso direita atraz', 6040 ,'23:44', '19:21', '10:49', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(359, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '3761', '02/09/2016', 'Audi', 'Gol', 'Azul', '2004', 'PIE-891',5000, '10:28', 'Placa esta à cair', 5070 ,'17:41', '12:33', '9:56', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'não'),
(360, 3, 3, 'Rua21', 'Gabriel Gameiro', '2305', '16/11/2014', 'Volkswagen', 'Prisma', 'Prata', '2004', 'PIE-608',48000, '10:33', 'Sem um parafuso direita atraz', 48060 ,'18:39', '10:33', '20:53', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(361, 4, 4, 'Rua31', 'Ederson Gonzaga', '4467', '21/06/2015', 'Honda', 'Ka', 'Vermelho', '2002', 'PIE-433',74000, '2:17', 'Escapamento com defeito', 74080 ,'6:48', '4:28', '2:29', 'Robson Santos Onix', 'Não autorizado', 'não'),
(362, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '3041', '27/06/2015', 'Mercedes', 'Gol', 'Vinho', '2004', 'PIE-949',50000, '3:42', 'rádio imbutido', 50070 ,'5:15', '1:40', '4:27', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(363, 6, 6, 'Rua51', 'Ederson Gonzaga', '7326', '05/11/2015', 'Honda', 'HB20', 'Branco', '2000', 'PIE-522',39000, '17:58', 'Escapamento com defeito', 39030 ,'6:17', '16:19', '11:7', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(364, 7, 7, 'Rua61', 'Nicolas Castro', '6695', '21/03/2017', 'Mercedes', 'Prisma', 'Vermelho', '2000', 'PIE-495',3000, '21:26', 'Escapamento com defeito', 3070 ,'4:26', '18:52', '7:23', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'sim'),
(365, 1, 1, 'Rua01', 'Rafael Hadzic', '4651', '13/03/2014', 'Audi', 'HB20', 'Branco', '2002', 'PIE-98',95000, '12:58', 'Vidro trincado', 95070 ,'19:1', '14:31', '8:1', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(366, 2, 2, 'Rua11', 'Gustavo Honda', '1019', '24/04/2018', 'Volkswagen', 'Prisma', 'Prata', '2001', 'PIE-402',73000, '21:50', 'Placa esta à cair', 73060 ,'20:41', '15:35', '22:26', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(367, 3, 3, 'Rua21', 'Gustavo Honda', '2364', '16/04/2015', 'Volkswagen', 'Gol', 'Prata', '2004', 'PIE-888',45000, '1:44', 'Retrovisor quebrado', 45030 ,'10:47', '12:22', '17:43', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(368, 4, 4, 'Rua31', 'Leonardo Teixeira', '3271', '26/02/2014', 'Volkswagen', 'Gol', 'Preto', '2003', 'PIE-452',27000, '17:24', 'Placa esta à cair', 27090 ,'12:13', '22:34', '9:21', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'sim'),
(369, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '3597', '23/02/2016', 'Volkswagen', 'Argo', 'Preto', '2003', 'PIE-934',64000, '19:35', 'Vidro trincado', 64010 ,'9:51', '10:50', '2:50', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'sim'),
(370, 6, 6, 'Rua51', 'Ederson Gonzaga', '9308', '02/04/2015', 'Volkswagen', 'HB20', 'Vermelho', '2002', 'PIE-470',70000, '2:23', 'Sem um parafuso direita atraz', 70060 ,'2:22', '1:43', '15:28', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'não'),
(371, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '7024', '05/03/2015', 'Honda', 'Onix', 'Prata', '2001', 'PIE-276',54000, '14:14', 'Retrovisor quebrado', 54030 ,'9:21', '4:51', '19:40', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(372, 1, 1, 'Rua01', 'Gustavo Honda', '4896', '22/01/2014', 'Ford', 'HB20', 'Preto', '2004', 'PIE-649',61000, '2:54', 'rádio imbutido', 61020 ,'2:29', '13:59', '11:49', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(373, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '4910', '05/01/2015', 'Volkswagen', 'Argo', 'Preto', '2000', 'PIE-298',41000, '23:37', 'Escapamento com defeito', 41020 ,'18:3', '21:16', '7:23', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(374, 3, 3, 'Rua21', 'Rafael Hadzic', '4261', '22/06/2018', 'Honda', 'Kwid', 'Azul', '2004', 'PIE-291',25000, '9:50', 'Retrovisor quebrado', 25010 ,'2:55', '5:9', '13:41', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'não'),
(375, 4, 4, 'Rua31', 'Leonardo Teixeira', '5897', '23/04/2015', 'Honda', 'Prisma', 'Vinho', '2003', 'PIE-231',62000, '14:25', 'Escapamento com defeito', 62080 ,'1:2', '11:24', '15:4', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(376, 5, 5, 'Rua41', 'Nicolas Castro', '856', '23/05/2017', 'Audi', 'HB20', 'Branco', '2004', 'PIE-451',52000, '9:16', 'rádio imbutido', 52080 ,'9:43', '3:22', '20:38', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(377, 6, 6, 'Rua51', 'Ederson Gonzaga', '7512', '08/01/2017', 'Volkswagen', 'Argo', 'Prata', '2002', 'PIE-323',92000, '4:40', 'Sem um parafuso direita atraz', 92040 ,'12:41', '5:33', '12:21', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'sim'),
(378, 7, 7, 'Rua61', 'Leonardo Teixeira', '5355', '19/02/2015', 'Mercedes', 'HB20', 'Branco', '2003', 'PIE-999',95000, '19:49', 'rádio imbutido', 95050 ,'12:18', '8:46', '21:57', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(379, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '3401', '23/11/2016', 'Mercedes', 'Kwid', 'Branco', '2003', 'PIE-158',67000, '18:21', 'Placa esta à cair', 67070 ,'10:30', '15:44', '17:55', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'não'),
(380, 2, 2, 'Rua11', 'Ederson Gonzaga', '5879', '21/03/2014', 'Honda', 'HB20', 'Vinho', '2002', 'PIE-585',47000, '13:41', 'Placa esta à cair', 47040 ,'15:42', '13:5', '22:43', 'Maria Lúcia Mustang', ' Não avaliado', 'sim'),
(381, 3, 3, 'Rua21', 'Leonardo Teixeira', '288', '05/10/2018', 'Honda', 'Gol', 'Branco', '2000', 'PIE-649',42000, '20:57', 'Sem um parafuso direita atraz', 42090 ,'21:13', '4:27', '11:35', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'não'),
(382, 4, 4, 'Rua31', 'Nicolas Castro', '5448', '08/11/2018', 'Audi', 'Ka', 'Branco', '2003', 'PIE-18',23000, '21:18', 'rádio imbutido', 23070 ,'2:8', '10:44', '18:9', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(383, 5, 5, 'Rua41', 'Ederson Gonzaga', '9669', '04/07/2016', 'Volkswagen', 'Kwid', 'Prata', '2000', 'PIE-176',44000, '19:56', 'Placa esta à cair', 44020 ,'9:53', '23:50', '11:12', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(384, 6, 6, 'Rua51', 'Rafael Hadzic', '1650', '25/05/2015', 'Ford', 'Onix', 'Cinza', '2001', 'PIE-557',18000, '2:42', 'Escapamento com defeito', 18010 ,'9:48', '5:27', '19:36', 'Robson Santos Onix', 'Não autorizado', 'não'),
(385, 7, 7, 'Rua61', 'Rafael Hadzic', '9220', '08/05/2018', 'Ford', 'Prisma', 'Azul', '2001', 'PIE-399',60000, '3:19', 'Placa esta à cair', 60080 ,'22:15', '8:45', '2:10', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(386, 1, 1, 'Rua01', 'Rafael Hadzic', '3550', '20/06/2018', 'Audi', 'Onix', 'Vermelho', '2001', 'PIE-606',71000, '23:56', 'Tudo certo', 71020 ,'1:14', '9:10', '3:52', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'não'),
(387, 2, 2, 'Rua11', 'Gustavo Honda', '8942', '06/10/2018', 'Ford', 'Prisma', 'Branco', '2000', 'PIE-221',29000, '20:57', 'Sem um parafuso direita atraz', 29070 ,'7:53', '1:13', '23:53', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim'),
(388, 3, 3, 'Rua21', 'Leonardo Teixeira', '818', '03/08/2016', 'Mercedes', 'Kwid', 'Azul', '2001', 'PIE-323',8000, '14:40', 'Escapamento com defeito', 8080 ,'5:45', '2:24', '16:11', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(389, 4, 4, 'Rua31', 'Nicolas Castro', '7027', '16/10/2015', 'Volkswagen', 'Gol', 'Prata', '2002', 'PIE-414',57000, '6:17', 'Vidro trincado', 57050 ,'5:53', '5:46', '19:40', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(390, 5, 5, 'Rua41', 'Nicolas Castro', '82', '14/02/2017', 'Ford', 'Onix', 'Preto', '2003', 'PIE-641',83000, '2:58', 'Escapamento com defeito', 83080 ,'9:28', '14:7', '6:21', 'Allana Bruna Santos', 'Não danificado', 'não'),
(391, 6, 6, 'Rua51', 'Leonardo Teixeira', '453', '01/09/2014', 'Volkswagen', 'Argo', 'Branco', '2002', 'PIE-406',39000, '4:22', 'Sem um parafuso direita atraz', 39040 ,'2:11', '2:22', '16:35', 'Son Goku', 'Não autorizado', 'não'),
(392, 7, 7, 'Rua61', 'Nicolas Castro', '3516', '18/10/2014', 'Chevrolet', 'Prisma', 'Cinza', '2001', 'PIE-198',6000, '20:37', 'Escapamento com defeito', 6020 ,'3:33', '2:42', '5:46', 'Son Goku', ' Não avaliado', 'não'),
(393, 1, 1, 'Rua01', 'Ederson Gonzaga', '5303', '19/07/2017', 'Volkswagen', 'Argo', 'Branco', '2002', 'PIE-727',16000, '15:34', 'Escapamento com defeito', 16090 ,'20:17', '14:58', '6:51', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(394, 2, 2, 'Rua11', 'Gabriel Gameiro', '4642', '26/03/2016', 'Audi', 'Onix', 'Cinza', '2001', 'PIE-671',68000, '13:6', 'Placa esta à cair', 68020 ,'4:47', '1:49', '6:33', 'Robson Santos Onix', 'Peças totalmente danificada', 'sim'),
(395, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '1817', '11/11/2017', 'Honda', 'HB20', 'Prata', '2001', 'PIE-618',16000, '23:43', 'Escapamento com defeito', 16020 ,'16:57', '13:42', '23:10', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(396, 4, 4, 'Rua31', 'Rafael Hadzic', '6372', '22/06/2018', 'Chevrolet', 'Onix', 'Preto', '2004', 'PIE-31',44000, '11:24', 'Tudo certo', 44020 ,'15:39', '21:14', '9:23', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(397, 5, 5, 'Rua41', 'Leonardo Teixeira', '9160', '01/06/2017', 'Mercedes', 'HB20', 'Cinza', '2002', 'PIE-296',51000, '21:37', 'Placa esta à cair', 51090 ,'9:12', '13:54', '19:28', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(398, 6, 6, 'Rua51', 'Nicolas Castro', '6267', '08/08/2017', 'Mercedes', 'HB20', 'Branco', '2003', 'PIE-199',10000, '9:36', 'Tudo certo', 10020 ,'18:30', '11:16', '21:38', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(399, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '4924', '05/05/2017', 'Audi', 'Prisma', 'Preto', '2002', 'PIE-380',89000, '23:7', 'Placa esta à cair', 89040 ,'12:55', '23:31', '1:44', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(400, 1, 1, 'Rua01', 'Ederson Gonzaga', '4024', '03/05/2017', 'Honda', 'Onix', 'Prata', '2004', 'PIE-617',20000, '10:58', 'Escapamento com defeito', 20060 ,'19:23', '17:38', '9:14', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(401, 2, 2, 'Rua11', 'Gabriel Gameiro', '4358', '20/08/2018', 'Mercedes', 'Kwid', 'Preto', '2004', 'PIE-982',80000, '3:36', 'Sem um parafuso direita atraz', 80090 ,'3:13', '6:26', '16:18', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'sim'),
(402, 3, 3, 'Rua21', 'Ederson Gonzaga', '6196', '15/02/2017', 'Audi', 'Ka', 'Vermelho', '2000', 'PIE-228',8000, '14:1', 'Vidro trincado', 8090 ,'20:52', '5:44', '20:35', 'Maria Lúcia Mustang', 'Não autorizado', 'não'),
(403, 4, 4, 'Rua31', 'Ederson Gonzaga', '4319', '08/08/2015', 'Audi', 'Ka', 'Branco', '2000', 'PIE-950',67000, '16:5', 'Placa esta à cair', 67060 ,'6:17', '5:15', '1:53', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'sim'),
(404, 5, 5, 'Rua41', 'Nicolas Castro', '3130', '09/06/2014', 'Honda', 'HB20', 'Azul', '2001', 'PIE-366',46000, '10:2', 'Placa esta à cair', 46020 ,'15:38', '15:11', '20:31', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(405, 6, 6, 'Rua51', 'Rafael Hadzic', '6953', '08/06/2016', 'Volkswagen', 'Onix', 'Cinza', '2002', 'PIE-779',35000, '10:30', 'Vidro trincado', 35050 ,'3:49', '3:58', '9:32', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(406, 7, 7, 'Rua61', 'Leonardo Teixeira', '3138', '14/10/2017', 'Citroen', 'Argo', 'Azul', '2004', 'PIE-54',30000, '20:38', 'Tudo certo', 30060 ,'6:54', '14:57', '20:6', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'sim'),
(407, 1, 1, 'Rua01', 'Gabriel Gameiro', '8100', '17/07/2014', 'Audi', 'Onix', 'Vermelho', '2000', 'PIE-677',59000, '21:53', 'Sem um parafuso direita atraz', 59020 ,'23:13', '12:5', '12:6', 'Robson Santos Onix', 'Não danificado', 'sim'),
(408, 2, 2, 'Rua11', 'Rafael Hadzic', '8888', '13/08/2017', 'Chevrolet', 'Argo', 'Prata', '2002', 'PIE-219',21000, '20:46', 'Retrovisor quebrado', 21080 ,'14:48', '21:48', '9:27', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(409, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '5429', '18/05/2015', 'Audi', 'Prisma', 'Branco', '2001', 'PIE-293',86000, '3:33', 'Sem um parafuso direita atraz', 86060 ,'14:1', '13:25', '23:25', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(410, 4, 4, 'Rua31', 'Gabriel Gameiro', '1031', '20/09/2018', 'Honda', 'Kwid', 'Vermelho', '2004', 'PIE-307',5000, '13:37', 'Tudo certo', 5070 ,'6:28', '10:13', '11:42', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(411, 5, 5, 'Rua41', 'Rafael Hadzic', '1298', '05/08/2016', 'Honda', 'Ka', 'Branco', '2004', 'PIE-606',12000, '5:8', 'Tudo certo', 12020 ,'12:24', '12:42', '4:30', 'Maria Lúcia Mustang', ' Não avaliado', 'sim'),
(412, 6, 6, 'Rua51', 'Rafael Hadzic', '4044', '01/04/2018', 'Volkswagen', 'Ka', 'Vermelho', '2003', 'PIE-817',27000, '18:4', 'Sem um parafuso direita atraz', 27060 ,'17:59', '14:32', '3:33', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(413, 7, 7, 'Rua61', 'Gabriel Gameiro', '5340', '22/06/2016', 'Audi', 'Argo', 'Vinho', '2002', 'PIE-472',99000, '8:51', 'Retrovisor quebrado', 99080 ,'1:54', '12:47', '4:58', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'sim'),
(414, 1, 1, 'Rua01', 'Gustavo Honda', '9308', '02/10/2015', 'Mercedes', 'Kwid', 'Azul', '2002', 'PIE-241',28000, '16:8', 'Tudo certo', 28030 ,'4:27', '22:53', '19:15', 'Son Goku', ' Não avaliado', 'sim'),
(415, 2, 2, 'Rua11', 'Rafael Hadzic', '1774', '18/04/2015', 'Audi', 'Gol', 'Prata', '2001', 'PIE-334',79000, '14:26', 'Placa esta à cair', 79050 ,'20:58', '17:22', '13:48', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(416, 3, 3, 'Rua21', 'Rafael Hadzic', '407', '17/09/2015', 'Chevrolet', 'Kwid', 'Vinho', '2002', 'PIE-915',58000, '1:46', 'Tudo certo', 58080 ,'11:24', '16:5', '21:9', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(417, 4, 4, 'Rua31', 'Leonardo Teixeira', '6448', '04/02/2014', 'Volkswagen', 'Gol', 'Prata', '2000', 'PIE-587',11000, '18:19', 'Escapamento com defeito', 11010 ,'5:54', '13:37', '23:11', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(418, 5, 5, 'Rua41', 'Ederson Gonzaga', '5659', '08/03/2018', 'Volkswagen', 'Onix', 'Prata', '2003', 'PIE-279',99000, '11:50', 'Vidro trincado', 99060 ,'23:31', '13:13', '14:30', 'Son Goku', 'Peças totalmente danificada', 'não'),
(419, 6, 6, 'Rua51', 'Gabriel Gameiro', '8602', '05/04/2018', 'Chevrolet', 'Prisma', 'Vermelho', '2004', 'PIE-111',12000, '11:31', 'Vidro trincado', 12040 ,'3:37', '1:11', '10:35', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'sim'),
(420, 7, 7, 'Rua61', 'Ederson Gonzaga', '2866', '19/03/2018', 'Citroen', 'Ka', 'Branco', '2002', 'PIE-51',59000, '3:18', 'Retrovisor quebrado', 59010 ,'10:59', '2:37', '8:8', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(421, 1, 1, 'Rua01', 'Ederson Gonzaga', '2362', '13/07/2018', 'Audi', 'Ka', 'Preto', '2000', 'PIE-457',41000, '2:48', 'Escapamento com defeito', 41020 ,'20:49', '22:13', '11:16', 'Maria Lúcia Mustang', 'Não danificado', 'sim'),
(422, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '1298', '03/04/2014', 'Mercedes', 'Ka', 'Prata', '2001', 'PIE-805',80000, '21:36', 'Tudo certo', 80090 ,'9:45', '12:11', '18:3', 'Maria Lúcia Mustang', 'Não autorizado', 'não'),
(423, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '2958', '06/08/2016', 'Ford', 'HB20', 'Branco', '2004', 'PIE-197',74000, '23:28', 'Tudo certo', 74060 ,'12:54', '15:38', '3:39', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'sim'),
(424, 4, 4, 'Rua31', 'Ederson Gonzaga', '5898', '19/06/2014', 'Citroen', 'Ka', 'Vermelho', '2002', 'PIE-463',7000, '14:27', 'Vidro trincado', 7010 ,'10:30', '3:2', '9:4', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(425, 5, 5, 'Rua41', 'Rafael Hadzic', '2674', '01/06/2018', 'Ford', 'Argo', 'Prata', '2001', 'PIE-933',13000, '17:29', 'Vidro trincado', 13030 ,'23:24', '10:27', '20:18', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'sim'),
(426, 6, 6, 'Rua51', 'Rafael Hadzic', '8721', '07/02/2018', 'Ford', 'Gol', 'Prata', '2003', 'PIE-201',84000, '18:29', 'Placa esta à cair', 84020 ,'3:47', '4:48', '17:26', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(427, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '1512', '27/02/2016', 'Mercedes', 'Onix', 'Vermelho', '2000', 'PIE-466',89000, '6:14', 'Tudo certo', 89010 ,'18:57', '1:23', '1:48', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(428, 1, 1, 'Rua01', 'Rafael Hadzic', '2588', '07/10/2016', 'Chevrolet', 'Argo', 'Prata', '2001', 'PIE-256',5000, '9:34', 'Retrovisor quebrado', 5080 ,'3:35', '5:7', '23:22', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'sim'),
(429, 2, 2, 'Rua11', 'Rafael Hadzic', '7601', '27/01/2018', 'Citroen', 'Ka', 'Preto', '2004', 'PIE-626',11000, '4:33', 'Escapamento com defeito', 11080 ,'9:5', '15:33', '13:5', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(430, 3, 3, 'Rua21', 'Gabriel Gameiro', '1977', '24/05/2018', 'Mercedes', 'Argo', 'Branco', '2000', 'PIE-147',85000, '15:54', 'Escapamento com defeito', 85040 ,'8:8', '22:37', '10:36', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(431, 4, 4, 'Rua31', 'Nicolas Castro', '2314', '18/04/2017', 'Honda', 'HB20', 'Cinza', '2000', 'PIE-260',99000, '9:27', 'Sem um parafuso direita atraz', 99090 ,'14:17', '15:21', '18:48', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'não'),
(432, 5, 5, 'Rua41', 'Gabriel Gameiro', '6137', '22/11/2014', 'Mercedes', 'Gol', 'Vinho', '2001', 'PIE-815',4000, '23:46', 'rádio imbutido', 4040 ,'11:12', '17:18', '4:53', 'Robson Santos Onix', ' Não avaliado', 'sim'),
(433, 6, 6, 'Rua51', 'Rafael Hadzic', '5124', '25/06/2015', 'Audi', 'Ka', 'Cinza', '2001', 'PIE-885',61000, '5:6', 'Escapamento com defeito', 61060 ,'5:58', '8:24', '2:10', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'sim'),
(434, 7, 7, 'Rua61', 'Gabriel Gameiro', '9426', '10/05/2018', 'Honda', 'Onix', 'Cinza', '2004', 'PIE-157',52000, '13:7', 'Tudo certo', 52040 ,'10:39', '8:23', '11:32', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(435, 1, 1, 'Rua01', 'Leonardo Teixeira', '3183', '11/01/2018', 'Chevrolet', 'Prisma', 'Branco', '2003', 'PIE-494',63000, '3:26', 'Vidro trincado', 63010 ,'13:54', '1:55', '5:36', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'sim'),
(436, 2, 2, 'Rua11', 'Gustavo Honda', '3879', '10/02/2014', 'Ford', 'Argo', 'Cinza', '2004', 'PIE-481',55000, '22:38', 'Tudo certo', 55060 ,'14:22', '8:25', '1:43', 'Robson Santos Onix', 'Não danificado', 'sim'),
(437, 3, 3, 'Rua21', 'Leonardo Teixeira', '624', '19/03/2018', 'Citroen', 'Kwid', 'Vinho', '2001', 'PIE-30',35000, '9:13', 'Sem um parafuso direita atraz', 35080 ,'20:9', '10:51', '10:12', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(438, 4, 4, 'Rua31', 'Rafael Hadzic', '9003', '04/04/2016', 'Honda', 'Gol', 'Branco', '2000', 'PIE-372',8000, '7:56', 'Retrovisor quebrado', 8070 ,'1:29', '4:4', '5:7', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(439, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '2596', '04/08/2018', 'Ford', 'Onix', 'Prata', '2003', 'PIE-11',72000, '11:29', 'Placa esta à cair', 72080 ,'2:46', '6:35', '18:46', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'sim'),
(440, 6, 6, 'Rua51', 'Gustavo Honda', '3794', '15/04/2014', 'Honda', 'Argo', 'Preto', '2003', 'PIE-459',77000, '16:2', 'Escapamento com defeito', 77080 ,'21:4', '6:53', '11:6', 'Son Goku', 'Não autorizado', 'não'),
(441, 7, 7, 'Rua61', 'Gustavo Honda', '9020', '18/10/2017', 'Chevrolet', 'Onix', 'Prata', '2004', 'PIE-827',76000, '3:31', 'rádio imbutido', 76090 ,'9:2', '18:26', '14:36', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(442, 1, 1, 'Rua01', 'Leonardo Teixeira', '5985', '23/04/2018', 'Chevrolet', 'Argo', 'Preto', '2002', 'PIE-603',19000, '16:46', 'Sem um parafuso direita atraz', 19060 ,'7:59', '4:4', '17:19', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(443, 2, 2, 'Rua11', 'Rafael Hadzic', '3077', '26/09/2014', 'Citroen', 'Kwid', 'Prata', '2002', 'PIE-184',87000, '17:22', 'Placa esta à cair', 87020 ,'18:17', '9:39', '10:12', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(444, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '3520', '25/03/2016', 'Honda', 'Gol', 'Branco', '2003', 'PIE-988',61000, '13:6', 'Tudo certo', 61050 ,'14:23', '21:58', '19:49', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(445, 4, 4, 'Rua31', 'Gustavo Honda', '9413', '26/07/2016', 'Chevrolet', 'Ka', 'Branco', '2001', 'PIE-221',57000, '15:39', 'rádio imbutido', 57060 ,'17:17', '11:16', '7:18', 'Son Goku', 'Não autorizado', 'sim'),
(446, 5, 5, 'Rua41', 'Nicolas Castro', '3253', '24/05/2015', 'Audi', 'Ka', 'Branco', '2004', 'PIE-624',3000, '11:42', 'Escapamento com defeito', 3070 ,'7:8', '19:43', '7:37', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(447, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '7085', '12/05/2017', 'Chevrolet', 'Argo', 'Vermelho', '2004', 'PIE-775',12000, '15:8', 'Escapamento com defeito', 12080 ,'4:18', '12:21', '5:7', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'não'),
(448, 7, 7, 'Rua61', 'Gabriel Gameiro', '1872', '14/11/2017', 'Chevrolet', 'Onix', 'Preto', '2000', 'PIE-761',85000, '3:43', 'rádio imbutido', 85050 ,'4:2', '1:31', '17:43', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(449, 1, 1, 'Rua01', 'Gustavo Honda', '2218', '02/08/2015', 'Ford', 'Gol', 'Cinza', '2001', 'PIE-314',59000, '7:19', 'Sem um parafuso direita atraz', 59030 ,'12:40', '7:14', '1:51', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(450, 2, 2, 'Rua11', 'Rafael Hadzic', '4054', '25/11/2015', 'Ford', 'Onix', 'Vermelho', '2003', 'PIE-712',65000, '19:1', 'Placa esta à cair', 65030 ,'22:59', '8:2', '17:37', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(451, 3, 3, 'Rua21', 'Gustavo Honda', '5403', '14/01/2015', 'Honda', 'HB20', 'Azul', '2001', 'PIE-33',80000, '19:7', 'Retrovisor quebrado', 80010 ,'5:6', '18:4', '14:17', 'Robson Santos Onix', 'Não autorizado', 'não'),
(452, 4, 4, 'Rua31', 'Rafael Hadzic', '2846', '19/01/2014', 'Volkswagen', 'Prisma', 'Vinho', '2000', 'PIE-587',69000, '16:4', 'Vidro trincado', 69090 ,'9:56', '17:39', '10:22', 'Son Goku', 'Não autorizado', 'não'),
(453, 5, 5, 'Rua41', 'Gustavo Honda', '8808', '22/06/2014', 'Volkswagen', 'Gol', 'Prata', '2003', 'PIE-596',71000, '7:20', 'Escapamento com defeito', 71010 ,'23:23', '16:22', '9:48', 'Allana Bruna Santos', 'Peças totalmente danificada', 'sim'),
(454, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '7267', '24/02/2016', 'Audi', 'HB20', 'Preto', '2000', 'PIE-439',57000, '3:54', 'rádio imbutido', 57040 ,'19:37', '1:36', '15:56', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(455, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '8027', '10/07/2016', 'Volkswagen', 'Ka', 'Vinho', '2000', 'PIE-56',71000, '16:14', 'Sem um parafuso direita atraz', 71030 ,'15:54', '18:55', '22:26', 'Allana Bruna Santos', ' Não avaliado', 'sim'),
(456, 1, 1, 'Rua01', 'Gustavo Honda', '2144', '02/02/2017', 'Mercedes', 'Argo', 'Prata', '2002', 'PIE-313',46000, '23:24', 'Tudo certo', 46010 ,'5:15', '19:1', '8:15', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(457, 2, 2, 'Rua11', 'Gustavo Honda', '3649', '11/06/2015', 'Mercedes', 'Onix', 'Branco', '2000', 'PIE-421',27000, '10:5', 'Escapamento com defeito', 27070 ,'3:33', '5:36', '12:17', 'Robson Santos Onix', ' Não avaliado', 'sim'),
(458, 3, 3, 'Rua21', 'Gabriel Gameiro', '5167', '07/02/2018', 'Mercedes', 'Ka', 'Azul', '2001', 'PIE-716',65000, '14:31', 'Vidro trincado', 65080 ,'12:3', '19:53', '2:25', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'não'),
(459, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '7555', '20/03/2014', 'Audi', 'Kwid', 'Vermelho', '2000', 'PIE-389',58000, '6:30', 'Tudo certo', 58080 ,'4:24', '3:35', '1:1', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(460, 5, 5, 'Rua41', 'Gustavo Honda', '6179', '26/07/2015', 'Citroen', 'Onix', 'Azul', '2003', 'PIE-986',57000, '9:12', 'Escapamento com defeito', 57010 ,'12:29', '17:2', '14:52', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(461, 6, 6, 'Rua51', 'Gustavo Honda', '8942', '20/09/2014', 'Mercedes', 'Argo', 'Vermelho', '2004', 'PIE-740',54000, '4:8', 'Sem um parafuso direita atraz', 54020 ,'3:52', '11:33', '2:46', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'sim'),
(462, 7, 7, 'Rua61', 'Gustavo Honda', '3685', '07/07/2015', 'Mercedes', 'Ka', 'Prata', '2004', 'PIE-82',17000, '17:1', 'Retrovisor quebrado', 17070 ,'3:37', '22:44', '7:28', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'sim'),
(463, 1, 1, 'Rua01', 'Nicolas Castro', '5073', '11/05/2018', 'Mercedes', 'Kwid', 'Branco', '2002', 'PIE-884',68000, '8:49', 'Tudo certo', 68080 ,'22:37', '7:14', '22:6', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(464, 2, 2, 'Rua11', 'Ederson Gonzaga', '3592', '22/09/2018', 'Mercedes', 'Onix', 'Azul', '2004', 'PIE-274',78000, '2:28', 'Escapamento com defeito', 78050 ,'8:57', '5:35', '3:28', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'sim'),
(465, 3, 3, 'Rua21', 'Gustavo Honda', '1757', '03/05/2016', 'Honda', 'Kwid', 'Branco', '2004', 'PIE-79',52000, '3:13', 'Tudo certo', 52080 ,'4:46', '22:49', '2:17', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(466, 4, 4, 'Rua31', 'Gabriel Gameiro', '5175', '22/09/2016', 'Mercedes', 'Onix', 'Prata', '2003', 'PIE-249',24000, '13:9', 'Tudo certo', 24020 ,'2:32', '6:59', '22:43', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(467, 5, 5, 'Rua41', 'Rafael Hadzic', '8549', '24/04/2016', 'Volkswagen', 'Argo', 'Branco', '2000', 'PIE-800',76000, '5:57', 'Placa esta à cair', 76030 ,'13:6', '19:55', '11:42', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'sim'),
(468, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '9267', '02/03/2016', 'Honda', 'Kwid', 'Vinho', '2002', 'PIE-130',65000, '15:24', 'rádio imbutido', 65020 ,'2:28', '14:48', '18:36', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(469, 7, 7, 'Rua61', 'Rafael Hadzic', '3679', '27/09/2016', 'Ford', 'Argo', 'Preto', '2002', 'PIE-770',1000, '13:15', 'Tudo certo', 1090 ,'7:28', '6:19', '5:39', 'Robson Santos Onix', ' Não avaliado', 'não'),
(470, 1, 1, 'Rua01', 'Leonardo Teixeira', '3678', '04/05/2016', 'Citroen', 'Gol', 'Branco', '2003', 'PIE-894',32000, '8:57', 'Retrovisor quebrado', 32080 ,'21:41', '6:36', '7:1', 'Robson Santos Onix', ' Não avaliado', 'não'),
(471, 2, 2, 'Rua11', 'Leonardo Teixeira', '3714', '12/01/2016', 'Mercedes', 'HB20', 'Branco', '2000', 'PIE-158',24000, '1:54', 'Escapamento com defeito', 24090 ,'1:12', '14:8', '5:8', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(472, 3, 3, 'Rua21', 'Gustavo Honda', '842', '06/05/2015', 'Ford', 'Ka', 'Vermelho', '2002', 'PIE-712',29000, '16:6', 'rádio imbutido', 29060 ,'10:15', '7:13', '1:19', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'sim'),
(473, 4, 4, 'Rua31', 'Rafael Hadzic', '2937', '06/02/2014', 'Honda', 'Onix', 'Cinza', '2003', 'PIE-428',87000, '5:51', 'rádio imbutido', 87060 ,'12:39', '16:58', '10:8', 'Maria Lúcia Mustang', 'Não autorizado', 'sim'),
(474, 5, 5, 'Rua41', 'Nicolas Castro', '2684', '07/11/2018', 'Mercedes', 'Argo', 'Vermelho', '2001', 'PIE-696',14000, '10:41', 'rádio imbutido', 14030 ,'18:42', '18:46', '1:23', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'sim'),
(475, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '7458', '08/07/2018', 'Audi', 'HB20', 'Azul', '2002', 'PIE-350',58000, '4:18', 'Sem um parafuso direita atraz', 58030 ,'1:48', '12:28', '10:47', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'sim'),
(476, 7, 7, 'Rua61', 'Ederson Gonzaga', '7723', '01/02/2016', 'Citroen', 'Argo', 'Azul', '2001', 'PIE-549',33000, '3:46', 'Tudo certo', 33030 ,'19:8', '7:4', '10:21', 'Elisa e Rita Entregas Expressas ME', 'Peça parcialmente danificada', 'sim'),
(477, 1, 1, 'Rua01', 'Rafael Hadzic', '9052', '08/05/2016', 'Ford', 'HB20', 'Vermelho', '2004', 'PIE-681',60000, '11:58', 'Tudo certo', 60050 ,'9:5', '23:38', '19:13', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(478, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '5395', '04/09/2018', 'Volkswagen', 'Argo', 'Preto', '2003', 'PIE-635',79000, '13:4', 'Placa esta à cair', 79060 ,'19:13', '19:27', '21:38', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(479, 3, 3, 'Rua21', 'Ederson Gonzaga', '3716', '05/06/2018', 'Mercedes', 'Ka', 'Cinza', '2001', 'PIE-988',97000, '3:19', 'rádio imbutido', 97030 ,'16:5', '8:47', '21:5', 'Elisa e Rita Entregas Expressas ME', 'Peças totalmente danificada', 'não'),
(480, 4, 4, 'Rua31', 'Nicolas Castro', '2602', '06/01/2015', 'Ford', 'Kwid', 'Vinho', '2000', 'PIE-954',13000, '8:59', 'Vidro trincado', 13020 ,'1:58', '7:57', '15:40', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'sim'),
(481, 5, 5, 'Rua41', 'Gabriel Gameiro', '9969', '03/07/2016', 'Mercedes', 'Onix', 'Prata', '2004', 'PIE-151',9000, '15:43', 'Sem um parafuso direita atraz', 9010 ,'15:38', '6:16', '10:46', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(482, 6, 6, 'Rua51', 'Leonardo Teixeira', '7491', '18/03/2015', 'Honda', 'Gol', 'Branco', '2002', 'PIE-528',5000, '3:40', 'Sem um parafuso direita atraz', 5040 ,'23:30', '12:6', '21:53', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'não'),
(483, 7, 7, 'Rua61', 'Nicolas Castro', '1855', '26/08/2016', 'Ford', 'Gol', 'Vermelho', '2002', 'PIE-11',28000, '3:36', 'Escapamento com defeito', 28010 ,'1:42', '17:31', '1:37', 'Robson Santos Onix', 'Peça parcialmente danificada', 'sim'),
(484, 1, 1, 'Rua01', 'Gustavo Honda', '5462', '02/07/2017', 'Mercedes', 'HB20', 'Preto', '2002', 'PIE-698',32000, '16:21', 'rádio imbutido', 32080 ,'2:23', '16:42', '19:19', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(485, 2, 2, 'Rua11', 'Gabriel Gameiro', '1699', '16/07/2015', 'Volkswagen', 'Gol', 'Vermelho', '2002', 'PIE-684',69000, '14:36', 'Vidro trincado', 69040 ,'4:36', '1:19', '15:22', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(486, 3, 3, 'Rua21', 'Leonardo Teixeira', '2393', '04/03/2018', 'Citroen', 'HB20', 'Branco', '2000', 'PIE-827',3000, '20:48', 'Tudo certo', 3050 ,'21:12', '10:38', '13:32', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(487, 4, 4, 'Rua31', 'Gabriel Gameiro', '7565', '20/04/2018', 'Chevrolet', 'Onix', 'Cinza', '2001', 'PIE-39',16000, '22:36', 'Sem um parafuso direita atraz', 16040 ,'12:10', '17:5', '9:47', 'Robson Santos Onix', 'Não autorizado', 'não'),
(488, 5, 5, 'Rua41', 'Leonardo Teixeira', '101', '20/09/2015', 'Honda', 'Kwid', 'Branco', '2004', 'PIE-922',44000, '7:16', 'rádio imbutido', 44080 ,'9:35', '3:24', '22:18', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(489, 6, 6, 'Rua51', 'Gabriel Gameiro', '458', '27/08/2018', 'Honda', 'Gol', 'Branco', '2004', 'PIE-827',48000, '15:53', 'Retrovisor quebrado', 48080 ,'1:7', '5:25', '18:46', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(490, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '9025', '26/07/2015', 'Audi', 'Ka', 'Prata', '2004', 'PIE-655',0, '19:17', 'Vidro trincado', 30 ,'6:25', '3:39', '16:20', 'Robson Santos Onix', 'Não danificado', 'não'),
(491, 1, 1, 'Rua01', 'Rafael Hadzic', '6245', '03/02/2014', 'Honda', 'Prisma', 'Vermelho', '2000', 'PIE-979',52000, '16:4', 'Vidro trincado', 52050 ,'21:24', '8:47', '6:19', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(492, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '3137', '09/02/2016', 'Volkswagen', 'HB20', 'Preto', '2000', 'PIE-305',1000, '2:4', 'Tudo certo', 1070 ,'2:39', '2:45', '11:58', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(493, 3, 3, 'Rua21', 'Gabriel Gameiro', '7304', '08/05/2018', 'Mercedes', 'Gol', 'Branco', '2002', 'PIE-558',84000, '12:14', 'Placa esta à cair', 84020 ,'5:52', '9:18', '19:57', 'Allana Bruna Santos', 'Multiplas peças danificadas totalmente', 'sim'),
(494, 4, 4, 'Rua31', 'Nicolas Castro', '2079', '18/04/2015', 'Citroen', 'Argo', 'Branco', '2001', 'PIE-101',51000, '10:45', 'rádio imbutido', 51060 ,'8:5', '2:56', '2:51', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(495, 5, 5, 'Rua41', 'Gabriel Gameiro', '8896', '12/09/2014', 'Honda', 'HB20', 'Preto', '2003', 'PIE-876',15000, '2:48', 'Tudo certo', 15040 ,'3:41', '6:49', '11:20', 'Robson Santos Onix', 'Não autorizado', 'não'),
(496, 6, 6, 'Rua51', 'Rafael Hadzic', '5526', '13/02/2015', 'Audi', 'Argo', 'Preto', '2003', 'PIE-482',71000, '5:18', 'rádio imbutido', 71070 ,'14:55', '22:48', '13:32', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(497, 7, 7, 'Rua61', 'Rafael Hadzic', '5274', '18/07/2018', 'Citroen', 'Prisma', 'Vermelho', '2001', 'PIE-267',22000, '19:38', 'Escapamento com defeito', 22060 ,'23:13', '22:57', '10:3', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'sim'),
(498, 1, 1, 'Rua01', 'Gabriel Gameiro', '4778', '21/09/2015', 'Volkswagen', 'Argo', 'Vinho', '2002', 'PIE-762',72000, '2:9', 'Escapamento com defeito', 72040 ,'14:22', '11:13', '14:9', 'Allana Bruna Santos', ' Não avaliado', 'sim'),
(499, 2, 2, 'Rua11', 'Gustavo Honda', '505', '24/08/2015', 'Audi', 'Onix', 'Preto', '2004', 'PIE-23',66000, '23:47', 'Sem um parafuso direita atraz', 66090 ,'22:43', '5:34', '21:34', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(500, 3, 3, 'Rua21', 'Gustavo Honda', '6576', '09/04/2017', 'Citroen', 'Argo', 'Branco', '2001', 'PIE-710',84000, '7:27', 'Placa esta à cair', 84030 ,'19:42', '21:39', '22:50', 'Maria Lúcia Mustang', 'Não danificado', 'sim'),
(501, 4, 4, 'Rua31', 'Leonardo Teixeira', '9029', '09/09/2015', 'Audi', 'Argo', 'Azul', '2003', 'PIE-986',18000, '15:35', 'Sem um parafuso direita atraz', 18040 ,'4:20', '11:4', '7:41', 'Felipe e Martin Marketing Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(502, 5, 5, 'Rua41', 'Rafael Hadzic', '4143', '18/09/2016', 'Chevrolet', 'Kwid', 'Cinza', '2001', 'PIE-536',3000, '12:21', 'Escapamento com defeito', 3020 ,'19:38', '19:1', '16:33', 'Robson Santos Onix', 'Peça parcialmente danificada', 'sim'),
(503, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '937', '05/03/2018', 'Citroen', 'Ka', 'Vermelho', '2003', 'PIE-308',66000, '4:22', 'rádio imbutido', 66070 ,'3:2', '3:10', '10:47', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'sim'),
(504, 7, 7, 'Rua61', 'Rafael Hadzic', '458', '08/03/2015', 'Volkswagen', 'Ka', 'Prata', '2004', 'PIE-787',10000, '13:36', 'Retrovisor quebrado', 10040 ,'18:10', '18:38', '19:20', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'não'),
(505, 1, 1, 'Rua01', 'Gabriel Gameiro', '6985', '22/10/2014', 'Honda', 'HB20', 'Vinho', '2003', 'PIE-864',72000, '7:25', 'Vidro trincado', 72060 ,'1:45', '22:37', '12:43', 'Felipe e Martin Marketing Ltda', 'Não autorizado', 'não'),
(506, 2, 2, 'Rua11', 'Rafael Hadzic', '8751', '20/07/2016', 'Honda', 'Ka', 'Cinza', '2004', 'PIE-659',94000, '1:13', 'Placa esta à cair', 94070 ,'8:27', '6:2', '18:58', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(507, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '8322', '26/06/2017', 'Audi', 'HB20', 'Preto', '2004', 'PIE-827',14000, '23:44', 'Vidro trincado', 14070 ,'14:34', '20:15', '21:33', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(508, 4, 4, 'Rua31', 'Ederson Gonzaga', '5223', '18/07/2014', 'Audi', 'HB20', 'Azul', '2000', 'PIE-213',55000, '13:38', 'Placa esta à cair', 55060 ,'9:31', '6:40', '3:24', 'Allana Bruna Santos', 'Multiplas peças danificadas parcialmente', 'sim'),
(509, 5, 5, 'Rua41', 'Leonardo Teixeira', '5957', '07/03/2014', 'Mercedes', 'Argo', 'Vinho', '2002', 'PIE-903',76000, '11:56', 'Sem um parafuso direita atraz', 76010 ,'20:5', '18:54', '15:54', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(510, 6, 6, 'Rua51', 'Nicolas Castro', '9002', '25/11/2018', 'Ford', 'Prisma', 'Cinza', '2000', 'PIE-4',12000, '8:45', 'Sem um parafuso direita atraz', 12090 ,'13:49', '8:33', '5:12', 'Allana Bruna Santos', 'Peça parcialmente danificada', 'não'),
(511, 7, 7, 'Rua61', 'Nicolas Castro', '4943', '04/05/2018', 'Mercedes', 'Ka', 'Preto', '2003', 'PIE-731',17000, '3:52', 'Placa esta à cair', 17070 ,'6:37', '22:1', '22:8', 'Elisa e Rita Entregas Expressas ME', 'Não danificado', 'sim'),
(512, 1, 1, 'Rua01', 'Nicolas Castro', '4313', '24/03/2015', 'Citroen', 'Kwid', 'Prata', '2003', 'PIE-617',83000, '16:34', 'Vidro trincado', 83070 ,'21:32', '4:50', '21:54', 'Son Goku', 'Multiplas peças danificadas totalmente', 'sim'),
(513, 2, 2, 'Rua11', 'Rafael Hadzic', '8295', '25/03/2017', 'Mercedes', 'HB20', 'Preto', '2002', 'PIE-932',98000, '16:30', 'Sem um parafuso direita atraz', 98050 ,'17:58', '12:39', '11:5', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(514, 3, 3, 'Rua21', 'Rafael Hadzic', '9883', '07/09/2017', 'Audi', 'Ka', 'Vermelho', '2002', 'PIE-619',79000, '6:36', 'rádio imbutido', 79080 ,'12:52', '9:12', '9:33', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas totalmente', 'não'),
(515, 4, 4, 'Rua31', 'Leonardo Teixeira', '5628', '25/09/2017', 'Volkswagen', 'Kwid', 'Azul', '2001', 'PIE-334',80000, '11:27', 'Sem um parafuso direita atraz', 80020 ,'11:49', '21:30', '4:45', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(516, 5, 5, 'Rua41', 'Leonardo Teixeira', '574', '15/03/2015', 'Ford', 'Kwid', 'Vermelho', '2002', 'PIE-415',64000, '11:5', 'Escapamento com defeito', 64020 ,'20:6', '10:15', '5:54', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(517, 6, 6, 'Rua51', 'Gabriel Gameiro', '1525', '06/02/2014', 'Citroen', 'Onix', 'Branco', '2004', 'PIE-840',85000, '15:54', 'Retrovisor quebrado', 85040 ,'6:30', '7:22', '10:28', 'Robson Santos Onix', 'Não danificado', 'sim'),
(518, 7, 7, 'Rua61', 'Ederson Gonzaga', '6231', '23/01/2015', 'Ford', 'Ka', 'Branco', '2001', 'PIE-518',32000, '4:44', 'rádio imbutido', 32040 ,'5:33', '9:49', '1:51', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(519, 1, 1, 'Rua01', 'Ederson Gonzaga', '8634', '11/01/2017', 'Honda', 'Argo', 'Vinho', '2002', 'PIE-469',24000, '8:5', 'Placa esta à cair', 24030 ,'11:42', '9:12', '12:2', 'Son Goku', ' Não avaliado', 'não'),
(520, 2, 2, 'Rua11', 'Nicolas Castro', '2773', '09/09/2016', 'Audi', 'Gol', 'Branco', '2003', 'PIE-730',48000, '15:25', 'Placa esta à cair', 48060 ,'4:16', '15:10', '19:43', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(521, 3, 3, 'Rua21', 'Ederson Gonzaga', '485', '18/05/2016', 'Volkswagen', 'Ka', 'Cinza', '2003', 'PIE-53',91000, '7:59', 'Escapamento com defeito', 91010 ,'23:29', '7:8', '3:17', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(522, 4, 4, 'Rua31', 'Gabriel Gameiro', '496', '02/05/2016', 'Ford', 'Onix', 'Azul', '2001', 'PIE-727',8000, '1:25', 'Sem um parafuso direita atraz', 8030 ,'15:45', '20:54', '20:31', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(523, 5, 5, 'Rua41', 'Nicolas Castro', '9040', '03/08/2015', 'Citroen', 'HB20', 'Preto', '2001', 'PIE-90',25000, '2:57', 'Placa esta à cair', 25070 ,'10:7', '21:45', '20:44', 'Felipe e Martin Marketing Ltda', ' Não avaliado', 'não'),
(524, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '4611', '11/10/2015', 'Mercedes', 'Onix', 'Vermelho', '2000', 'PIE-561',63000, '23:27', 'rádio imbutido', 63070 ,'11:21', '15:18', '19:12', 'Nair e Analu Pizzaria Ltda', 'Multiplas peças danificadas parcialmente', 'não'),
(525, 7, 7, 'Rua61', 'Nicolas Castro', '1966', '10/11/2014', 'Mercedes', 'Onix', 'Vinho', '2002', 'PIE-265',33000, '20:14', 'Placa esta à cair', 33030 ,'15:19', '7:26', '3:35', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(526, 1, 1, 'Rua01', 'Nicolas Castro', '3005', '26/09/2016', 'Volkswagen', 'Ka', 'Preto', '2002', 'PIE-571',56000, '13:27', 'Tudo certo', 56090 ,'8:36', '11:53', '7:56', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(527, 2, 2, 'Rua11', 'Nicolas Castro', '4634', '11/08/2014', 'Honda', 'Onix', 'Vermelho', '2004', 'PIE-125',85000, '14:32', 'Escapamento com defeito', 85070 ,'3:16', '15:2', '4:43', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(528, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '6232', '24/03/2016', 'Audi', 'Ka', 'Cinza', '2001', 'PIE-198',35000, '16:59', 'rádio imbutido', 35090 ,'21:23', '11:30', '15:16', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(529, 4, 4, 'Rua31', 'Ederson Gonzaga', '1848', '15/09/2015', 'Ford', 'Ka', 'Vinho', '2000', 'PIE-417',68000, '3:36', 'Tudo certo', 68050 ,'22:59', '22:23', '21:18', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(530, 5, 5, 'Rua41', 'Ederson Gonzaga', '4726', '24/01/2018', 'Honda', 'Gol', 'Preto', '2002', 'PIE-220',70000, '12:35', 'Sem um parafuso direita atraz', 70070 ,'3:59', '5:55', '18:15', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'sim'),
(531, 6, 6, 'Rua51', 'Gustavo Honda', '4299', '03/03/2018', 'Volkswagen', 'HB20', 'Branco', '2000', 'PIE-585',19000, '13:37', 'Sem um parafuso direita atraz', 19030 ,'17:41', '15:26', '9:7', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'sim'),
(532, 7, 7, 'Rua61', 'Ederson Gonzaga', '8244', '15/08/2017', 'Volkswagen', 'Argo', 'Branco', '2001', 'PIE-888',42000, '17:28', 'Placa esta à cair', 42010 ,'19:51', '13:34', '5:38', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(533, 1, 1, 'Rua01', 'Nicolas Castro', '4742', '14/09/2015', 'Mercedes', 'Prisma', 'Preto', '2001', 'PIE-928',1000, '5:46', 'Placa esta à cair', 1070 ,'14:16', '17:4', '5:38', 'Son Goku', 'Peça parcialmente danificada', 'sim'),
(534, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '2533', '12/01/2015', 'Audi', 'Prisma', 'Prata', '2000', 'PIE-479',51000, '10:19', 'Sem um parafuso direita atraz', 51080 ,'2:26', '13:57', '21:3', 'Maria Lúcia Mustang', 'Multiplas peças danificadas parcialmente', 'sim'),
(535, 3, 3, 'Rua21', 'Ederson Gonzaga', '8906', '18/07/2016', 'Citroen', 'HB20', 'Azul', '2001', 'PIE-916',75000, '8:35', 'Retrovisor quebrado', 75020 ,'21:47', '1:27', '22:50', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(536, 4, 4, 'Rua31', 'Nicolas Castro', '8227', '06/11/2016', 'Chevrolet', 'Onix', 'Prata', '2001', 'PIE-755',81000, '22:37', 'Escapamento com defeito', 81050 ,'21:34', '3:19', '11:54', 'Son Goku', 'Não autorizado', 'sim'),
(537, 5, 5, 'Rua41', 'Gustavo Honda', '6126', '17/10/2018', 'Mercedes', 'Argo', 'Prata', '2004', 'PIE-171',8000, '4:29', 'Placa esta à cair', 8060 ,'8:15', '17:17', '16:39', 'Robson Santos Onix', ' Não avaliado', 'sim'),
(538, 6, 6, 'Rua51', 'Gustavo Honda', '6966', '22/07/2016', 'Mercedes', 'Kwid', 'Cinza', '2004', 'PIE-832',92000, '13:45', 'Placa esta à cair', 92050 ,'23:5', '2:48', '3:42', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(539, 7, 7, 'Rua61', 'Jean-Luc Bonnet', '4701', '07/11/2018', 'Ford', 'Argo', 'Azul', '2000', 'PIE-603',75000, '18:58', 'Sem um parafuso direita atraz', 75050 ,'1:17', '21:24', '11:17', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas totalmente', 'não'),
(540, 1, 1, 'Rua01', 'Gustavo Honda', '9748', '18/01/2017', 'Volkswagen', 'Onix', 'Prata', '2004', 'PIE-964',68000, '19:45', 'Vidro trincado', 68030 ,'16:51', '20:59', '3:49', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(541, 2, 2, 'Rua11', 'Gustavo Honda', '6985', '20/06/2015', 'Chevrolet', 'Gol', 'Branco', '2002', 'PIE-207',97000, '6:13', 'Sem um parafuso direita atraz', 97020 ,'9:3', '23:24', '10:5', 'Robson Santos Onix', ' Não avaliado', 'não'),
(542, 3, 3, 'Rua21', 'Rafael Hadzic', '2499', '23/02/2016', 'Ford', 'Onix', 'Vinho', '2004', 'PIE-731',89000, '23:54', 'rádio imbutido', 89070 ,'13:3', '9:47', '16:43', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(543, 4, 4, 'Rua31', 'Leonardo Teixeira', '9193', '10/09/2014', 'Citroen', 'Gol', 'Azul', '2003', 'PIE-24',80000, '14:11', 'Sem um parafuso direita atraz', 80060 ,'23:11', '18:31', '15:17', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(544, 5, 5, 'Rua41', 'Rafael Hadzic', '3877', '10/09/2014', 'Volkswagen', 'HB20', 'Prata', '2002', 'PIE-141',62000, '20:56', 'rádio imbutido', 62070 ,'3:58', '21:50', '14:46', 'Son Goku', ' Não avaliado', 'não'),
(545, 6, 6, 'Rua51', 'Gustavo Honda', '949', '23/02/2017', 'Ford', 'HB20', 'Vermelho', '2004', 'PIE-759',84000, '5:5', 'Placa esta à cair', 84050 ,'7:51', '23:34', '5:23', 'Nair e Analu Pizzaria Ltda', 'Não danificado', 'não'),
(546, 7, 7, 'Rua61', 'Leonardo Teixeira', '299', '04/03/2015', 'Audi', 'Gol', 'Azul', '2001', 'PIE-140',76000, '1:5', 'Placa esta à cair', 76020 ,'9:58', '21:20', '11:20', 'Son Goku', 'Multiplas peças danificadas totalmente', 'não'),
(547, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '9543', '12/01/2016', 'Citroen', 'Prisma', 'Prata', '2001', 'PIE-558',86000, '18:33', 'rádio imbutido', 86020 ,'16:53', '2:13', '10:20', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'não'),
(548, 2, 2, 'Rua11', 'Nicolas Castro', '3197', '10/06/2018', 'Ford', 'Gol', 'Azul', '2001', 'PIE-35',13000, '5:40', 'Tudo certo', 13090 ,'10:54', '21:1', '5:34', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(549, 3, 3, 'Rua21', 'Nicolas Castro', '3931', '23/01/2014', 'Chevrolet', 'HB20', 'Vinho', '2003', 'PIE-448',94000, '20:58', 'rádio imbutido', 94060 ,'16:7', '10:8', '15:13', 'Felipe e Martin Marketing Ltda', 'Peça parcialmente danificada', 'não'),
(550, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '3496', '16/05/2017', 'Mercedes', 'Ka', 'Azul', '2001', 'PIE-326',86000, '23:40', 'rádio imbutido', 86080 ,'20:48', '9:1', '12:27', 'Robson Santos Onix', ' Não avaliado', 'não'),
(551, 5, 5, 'Rua41', 'Gabriel Gameiro', '3452', '25/06/2015', 'Audi', 'HB20', 'Azul', '2002', 'PIE-935',35000, '5:38', 'Vidro trincado', 35020 ,'7:33', '8:39', '6:2', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(552, 6, 6, 'Rua51', 'Nicolas Castro', '8322', '03/04/2014', 'Audi', 'Gol', 'Azul', '2003', 'PIE-443',32000, '4:43', 'Escapamento com defeito', 32030 ,'5:7', '14:35', '15:31', 'Son Goku', 'Não danificado', 'sim'),
(553, 7, 7, 'Rua61', 'Gustavo Honda', '6270', '23/10/2014', 'Chevrolet', 'Gol', 'Vinho', '2000', 'PIE-266',97000, '2:59', 'Sem um parafuso direita atraz', 97050 ,'14:5', '22:15', '20:49', 'Felipe e Martin Marketing Ltda', 'Não danificado', 'não'),
(554, 1, 1, 'Rua01', 'Leonardo Teixeira', '4939', '24/09/2017', 'Mercedes', 'Prisma', 'Branco', '2004', 'PIE-903',34000, '20:6', 'Retrovisor quebrado', 34050 ,'9:54', '9:46', '16:49', 'Maria Lúcia Mustang', 'Não danificado', 'não'),
(555, 2, 2, 'Rua11', 'Jean-Luc Bonnet', '2552', '14/10/2014', 'Ford', 'Argo', 'Azul', '2003', 'PIE-844',59000, '20:43', 'rádio imbutido', 59070 ,'13:43', '17:30', '23:50', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(556, 3, 3, 'Rua21', 'Gustavo Honda', '6906', '26/04/2018', 'Volkswagen', 'HB20', 'Vinho', '2002', 'PIE-368',93000, '13:11', 'Sem um parafuso direita atraz', 93040 ,'20:53', '6:58', '18:39', 'Son Goku', 'Peças totalmente danificada', 'não'),
(557, 4, 4, 'Rua31', 'Gabriel Gameiro', '7363', '06/04/2018', 'Honda', 'Prisma', 'Azul', '2003', 'PIE-311',58000, '15:3', 'rádio imbutido', 58040 ,'20:31', '20:53', '3:6', 'Robson Santos Onix', 'Não autorizado', 'não'),
(558, 5, 5, 'Rua41', 'Leonardo Teixeira', '7467', '17/01/2017', 'Volkswagen', 'Ka', 'Azul', '2004', 'PIE-121',32000, '18:56', 'Tudo certo', 32060 ,'1:19', '2:25', '8:24', 'Maria Lúcia Mustang', ' Não avaliado', 'não'),
(559, 6, 6, 'Rua51', 'Nicolas Castro', '8293', '15/04/2017', 'Chevrolet', 'Argo', 'Azul', '2002', 'PIE-785',50000, '18:37', 'Vidro trincado', 50090 ,'7:8', '4:3', '16:59', 'Allana Bruna Santos', 'Não autorizado', 'não'),
(560, 7, 7, 'Rua61', 'Leonardo Teixeira', '5161', '17/03/2018', 'Mercedes', 'Ka', 'Prata', '2003', 'PIE-443',53000, '18:47', 'rádio imbutido', 53050 ,'6:39', '22:33', '11:16', 'Son Goku', 'Não danificado', 'não'),
(561, 1, 1, 'Rua01', 'Nicolas Castro', '2808', '13/03/2014', 'Chevrolet', 'Onix', 'Vinho', '2004', 'PIE-762',15000, '18:48', 'Retrovisor quebrado', 15070 ,'19:44', '1:55', '22:27', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(562, 2, 2, 'Rua11', 'Gustavo Honda', '6666', '08/03/2015', 'Ford', 'Prisma', 'Cinza', '2000', 'PIE-409',19000, '3:32', 'rádio imbutido', 19060 ,'4:18', '5:19', '11:1', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'sim'),
(563, 3, 3, 'Rua21', 'Jean-Luc Bonnet', '331', '24/01/2016', 'Honda', 'Kwid', 'Preto', '2002', 'PIE-175',47000, '19:36', 'Placa esta à cair', 47030 ,'7:56', '3:22', '16:46', 'Nair e Analu Pizzaria Ltda', 'Peça parcialmente danificada', 'não'),
(564, 4, 4, 'Rua31', 'Leonardo Teixeira', '1866', '26/11/2014', 'Volkswagen', 'Onix', 'Branco', '2004', 'PIE-593',0, '12:37', 'Tudo certo', 50 ,'12:45', '8:25', '2:40', 'Robson Santos Onix', 'Peças totalmente danificada', 'não'),
(565, 5, 5, 'Rua41', 'Gabriel Gameiro', '4042', '02/06/2017', 'Citroen', 'Onix', 'Vinho', '2001', 'PIE-113',87000, '17:48', 'Sem um parafuso direita atraz', 87010 ,'4:48', '8:34', '11:19', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(566, 6, 6, 'Rua51', 'Ederson Gonzaga', '6139', '26/10/2015', 'Citroen', 'Ka', 'Branco', '2004', 'PIE-171',28000, '9:36', 'Retrovisor quebrado', 28040 ,'10:12', '15:23', '5:16', 'Robson Santos Onix', 'Peça parcialmente danificada', 'não'),
(567, 7, 7, 'Rua61', 'Rafael Hadzic', '7417', '23/09/2018', 'Volkswagen', 'Prisma', 'Vinho', '2001', 'PIE-703',54000, '23:51', 'Sem um parafuso direita atraz', 54080 ,'8:1', '6:58', '3:53', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(568, 1, 1, 'Rua01', 'Nicolas Castro', '4885', '02/09/2018', 'Honda', 'Prisma', 'Vinho', '2004', 'PIE-956',29000, '7:48', 'Tudo certo', 29080 ,'3:19', '9:37', '13:20', 'Elisa e Rita Entregas Expressas ME', 'Não autorizado', 'não'),
(569, 2, 2, 'Rua11', 'Gustavo Honda', '479', '12/10/2014', 'Honda', 'Gol', 'Vinho', '2002', 'PIE-649',2000, '13:55', 'Escapamento com defeito', 2030 ,'6:4', '19:4', '18:41', 'Robson Santos Onix', 'Não autorizado', 'não'),
(570, 3, 3, 'Rua21', 'Gabriel Gameiro', '5266', '15/11/2018', 'Honda', 'HB20', 'Azul', '2002', 'PIE-821',63000, '1:14', 'rádio imbutido', 63030 ,'2:29', '13:20', '5:41', 'Nair e Analu Pizzaria Ltda', ' Não avaliado', 'sim'),
(571, 4, 4, 'Rua31', 'Ederson Gonzaga', '788', '08/03/2016', 'Ford', 'Ka', 'Prata', '2003', 'PIE-932',84000, '20:48', 'Retrovisor quebrado', 84030 ,'10:34', '20:35', '15:17', 'Robson Santos Onix', 'Não autorizado', 'sim'),
(572, 5, 5, 'Rua41', 'Gabriel Gameiro', '180', '15/11/2017', 'Honda', 'Argo', 'Branco', '2003', 'PIE-47',36000, '17:40', 'Retrovisor quebrado', 36060 ,'12:26', '21:26', '11:57', 'Maria Lúcia Mustang', 'Peça parcialmente danificada', 'não'),
(573, 6, 6, 'Rua51', 'Jean-Luc Bonnet', '4149', '11/07/2014', 'Honda', 'Kwid', 'Branco', '2002', 'PIE-174',47000, '4:55', 'Tudo certo', 47010 ,'13:48', '15:37', '21:55', 'Robson Santos Onix', ' Não avaliado', 'sim'),
(574, 7, 7, 'Rua61', 'Gustavo Honda', '9465', '08/07/2017', 'Chevrolet', 'Gol', 'Branco', '2004', 'PIE-78',19000, '14:5', 'Tudo certo', 19060 ,'11:2', '15:10', '14:9', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(575, 1, 1, 'Rua01', 'Nicolas Castro', '53', '12/06/2015', 'Audi', 'Onix', 'Branco', '2000', 'PIE-156',22000, '11:5', 'Sem um parafuso direita atraz', 22030 ,'13:4', '19:9', '3:1', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(576, 2, 2, 'Rua11', 'Ederson Gonzaga', '3321', '05/09/2018', 'Volkswagen', 'Prisma', 'Cinza', '2004', 'PIE-179',45000, '17:6', 'Tudo certo', 45050 ,'10:39', '12:56', '19:11', 'Son Goku', 'Peça parcialmente danificada', 'não'),
(577, 3, 3, 'Rua21', 'Ederson Gonzaga', '6837', '22/09/2015', 'Honda', 'Gol', 'Cinza', '2000', 'PIE-997',54000, '20:27', 'Retrovisor quebrado', 54090 ,'5:25', '4:29', '16:51', 'Son Goku', 'Não danificado', 'sim'),
(578, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '2964', '08/02/2015', 'Audi', 'HB20', 'Branco', '2001', 'PIE-512',10000, '5:52', 'Vidro trincado', 10090 ,'19:41', '18:48', '3:29', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'sim'),
(579, 5, 5, 'Rua41', 'Jean-Luc Bonnet', '1581', '07/11/2017', 'Citroen', 'Ka', 'Vinho', '2001', 'PIE-502',21000, '20:21', 'Tudo certo', 21050 ,'9:18', '13:8', '22:33', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'não'),
(580, 6, 6, 'Rua51', 'Rafael Hadzic', '3505', '13/09/2014', 'Audi', 'Prisma', 'Azul', '2000', 'PIE-123',51000, '22:5', 'Vidro trincado', 51090 ,'21:36', '19:59', '8:18', 'Son Goku', 'Multiplas peças danificadas parcialmente', 'não'),
(581, 7, 7, 'Rua61', 'Ederson Gonzaga', '9721', '09/08/2014', 'Citroen', 'Prisma', 'Vinho', '2000', 'PIE-156',0, '17:8', 'rádio imbutido', 70 ,'2:29', '22:28', '5:11', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(582, 1, 1, 'Rua01', 'Jean-Luc Bonnet', '4056', '17/11/2015', 'Audi', 'Kwid', 'Prata', '2003', 'PIE-331',31000, '3:6', 'Vidro trincado', 31060 ,'3:7', '13:14', '7:24', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(583, 2, 2, 'Rua11', 'Nicolas Castro', '9394', '17/11/2018', 'Volkswagen', 'Prisma', 'Vermelho', '2002', 'PIE-290',15000, '22:47', 'Placa esta à cair', 15020 ,'5:47', '16:4', '11:10', 'Elisa e Rita Entregas Expressas ME', 'Multiplas peças danificadas parcialmente', 'sim'),
(584, 3, 3, 'Rua21', 'Gabriel Gameiro', '64', '26/06/2015', 'Ford', 'Kwid', 'Vermelho', '2002', 'PIE-33',97000, '17:34', 'Tudo certo', 97080 ,'13:57', '19:12', '20:15', 'Maria Lúcia Mustang', 'Peças totalmente danificada', 'não'),
(585, 4, 4, 'Rua31', 'Jean-Luc Bonnet', '5511', '18/04/2018', 'Honda', 'Prisma', 'Branco', '2001', 'PIE-899',36000, '15:58', 'Escapamento com defeito', 36010 ,'21:20', '8:34', '5:56', 'Allana Bruna Santos', ' Não avaliado', 'não'),
(586, 5, 5, 'Rua41', 'Nicolas Castro', '2868', '07/11/2018', 'Volkswagen', 'HB20', 'Prata', '2000', 'PIE-421',48000, '16:57', 'rádio imbutido', 48020 ,'12:47', '18:35', '6:38', 'Elisa e Rita Entregas Expressas ME', ' Não avaliado', 'sim'),
(587, 6, 6, 'Rua51', 'Rafael Hadzic', '8551', '17/05/2018', 'Audi', 'HB20', 'Branco', '2002', 'PIE-628',61000, '7:28', 'Retrovisor quebrado', 61070 ,'13:23', '7:21', '14:40', 'Nair e Analu Pizzaria Ltda', 'Não autorizado', 'sim'),
(588, 7, 7, 'Rua61', 'Gabriel Gameiro', '1485', '08/01/2018', 'Volkswagen', 'HB20', 'Branco', '2000', 'PIE-606',72000, '1:34', 'rádio imbutido', 72020 ,'16:36', '13:21', '5:55', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'sim'),
(589, 1, 1, 'Rua01', 'Gustavo Honda', '3087', '22/03/2014', 'Volkswagen', 'HB20', 'Azul', '2000', 'PIE-412',43000, '6:5', 'Vidro trincado', 43030 ,'17:47', '6:50', '21:28', 'Allana Bruna Santos', ' Não avaliado', 'sim'),
(590, 2, 2, 'Rua11', 'Gustavo Honda', '1622', '22/04/2014', 'Chevrolet', 'Kwid', 'Branco', '2002', 'PIE-648',1000, '13:34', 'Vidro trincado', 1010 ,'15:21', '7:41', '11:25', 'Robson Santos Onix', 'Não danificado', 'sim'),
(591, 3, 3, 'Rua21', 'Nicolas Castro', '1038', '22/01/2014', 'Volkswagen', 'Kwid', 'Preto', '2004', 'PIE-276',9000, '11:11', 'Escapamento com defeito', 9070 ,'11:7', '3:19', '14:26', 'Robson Santos Onix', ' Não avaliado', 'sim'),
(592, 4, 4, 'Rua31', 'Gabriel Gameiro', '6917', '01/04/2014', 'Mercedes', 'Ka', 'Prata', '2002', 'PIE-505',30000, '17:28', 'Retrovisor quebrado', 30080 ,'1:4', '3:1', '1:41', 'Son Goku', 'Não autorizado', 'não'),
(593, 5, 5, 'Rua41', 'Gabriel Gameiro', '4641', '18/09/2014', 'Chevrolet', 'Gol', 'Preto', '2003', 'PIE-802',12000, '9:28', 'Vidro trincado', 12040 ,'15:11', '3:39', '2:24', 'Son Goku', 'Peças totalmente danificada', 'sim'),
(594, 6, 6, 'Rua51', 'Rafael Hadzic', '7401', '23/11/2015', 'Chevrolet', 'Kwid', 'Prata', '2004', 'PIE-387',47000, '23:30', 'Retrovisor quebrado', 47060 ,'15:10', '23:46', '19:57', 'Maria Lúcia Mustang', 'Não autorizado', 'sim'),
(595, 7, 7, 'Rua61', 'Nicolas Castro', '4160', '08/03/2016', 'Honda', 'Ka', 'Branco', '2002', 'PIE-746',89000, '11:28', 'Sem um parafuso direita atraz', 89090 ,'13:23', '8:27', '12:29', 'Robson Santos Onix', 'Multiplas peças danificadas totalmente', 'não'),
(596, 1, 1, 'Rua01', 'Gabriel Gameiro', '191', '06/05/2014', 'Honda', 'Argo', 'Cinza', '2002', 'PIE-21',42000, '5:38', 'Retrovisor quebrado', 42030 ,'16:14', '17:20', '1:13', 'Robson Santos Onix', 'Não danificado', 'não'),
(597, 2, 2, 'Rua11', 'Leonardo Teixeira', '5310', '03/06/2014', 'Citroen', 'Kwid', 'Branco', '2000', 'PIE-324',44000, '13:16', 'Sem um parafuso direita atraz', 44030 ,'16:31', '3:3', '6:6', 'Felipe e Martin Marketing Ltda', 'Peças totalmente danificada', 'não'),
(598, 3, 3, 'Rua21', 'Gustavo Honda', '7410', '05/11/2016', 'Audi', 'Gol', 'Branco', '2003', 'PIE-324',15000, '15:25', 'Escapamento com defeito', 15040 ,'20:5', '23:30', '23:33', 'Maria Lúcia Mustang', 'Multiplas peças danificadas totalmente', 'sim'),
(599, 4, 4, 'Rua31', 'Leonardo Teixeira', '1423', '08/03/2018', 'Ford', 'Kwid', 'Prata', '2004', 'PIE-655',33000, '9:54', 'Tudo certo', 33030 ,'19:16', '5:59', '8:5', 'Nair e Analu Pizzaria Ltda', 'Peças totalmente danificada', 'não'),
(600, 5, 5, 'Rua41', 'Leonardo Teixeira', '6329', '14/10/2017', 'Citroen', 'Ka', 'Prata', '2001', 'PIE-993',67000, '1:17', 'Placa esta à cair', 67090 ,'6:13', '5:15', '12:22', 'Robson Santos Onix', 'Multiplas peças danificadas parcialmente', 'sim')



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
	(3, 3, 'R. França Pinto, 1115 - Vila Mariana, São Paulo', 'Próximo ao Ibirapuera', '1'),
	(4, 4, 'R. Vila Gran Caprita, 6423 - Boa Vista, Roraima', 'Próximo ao Teatro Renault', '1'),
	(5, 5, 'R. Juriti, 5895 - Prazeres, Pernambuco', 'Próximo a Marcearia DDJ', '1'),
	(6, 6, 'R. Cinco, 1940 -  Vila Maria, Maranhão', 'Próximo a Padaria Sete', '1'),
	(7, 7, 'R. Santa Alexandrina, 8492 -  Redenção, Espírito Santo', 'Próximo a Posto Apolo', '1'),
	(8, 8, 'R. Rua Santana I, 2854 -  Alvorada, Espírito Santo', 'Próximo a Padaria Vila Verde', '1'),
	(9, 9, 'R. Travessa Vasco da Gama, 4724 -  Capoeira, Acre', 'Próximo a UNIP', '1'),
	(10, 10, 'R. Senhorinha Maria da Conceição, 715 -  Barra de Gramame, Paraíba', 'Próximo a Praia do Sol', '1')
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
	(3, 3, 0x000, '', '20:00'),
	(4, 4, 0x000, '', '18:00'),
	(5, 5, 0x000, '', '21:00'),
	(6, 6, 0x000, '', '22:00'),
	(7, 7, 0x000, '', '17:00'),
	(8, 8, 0x000, '', '16:00'),
	(9, 9, 0x000, '', '15:00'),
	(10, 10, 0x000, '', '23:00')

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
(1, 'Ederson Gonzaga de Melo', 'Gerente', 4500, 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua José Dias Paes', 'São Paulo', '04851-003',
	'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102', 'n'),
	(2, 'Rafael Hadzic Rico de Sousa', 'Gerente', 4300, 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	'Rua Zélia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'RafaelHadzic', 'rafa130101', 'n'),
	(3, 'Gabriel Gomes Gameiro', 'Motorista', 2100, 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atuaí, 140', 'São Paulo', '03646-000',
	'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Raquel Lopes Barbosa', '(11)96784-7184', 'ggameiro', 'gabr180902', 'n'),
	(4, 'Jean-Luc Bonnet', 'Gerente', 2300, 'lucbonnet10@gmail.com', '22.483.241-9', '37498101232', '563.90685.89-0', 'Rua X', 'São Paulo', '08744-000',
	'SP', '(11)29958-7064', '00/00/0000', 'Solteiro', '-', '-', 'Luc', '1234', 's'),
	(5, 'Nicolas Castro Pereira', 'Gerente', 3700, 'luluchvisk@gmail.com', '44.302.377-3', '45792601734', '752.74124.98-0', 'Rua M', 'São Paulo', '02244-000',
	'SP', '(11)75918-5469', '00/00/0000', 'Solteiro', '-', '-', 'Nio', '1234', 's'),
	(6, 'Gustavo Akio Honda', 'Motorista', 2100, 'akiohonda@gmail.com', '33.125.817-2', '991577361278', '674.70643.75-0', 'Rua H', 'São Paulo', '08242-000',
	'SP', '(11)92657-3967', '00/00/0000', 'Solteiro', '-', '-', 'a', 'a', 's'),
	(7, 'Leonardo Agostinho Teixeira', 'Motorista', 3500, 'leonardoagostin@gmail.com', '44.302.377-3', '45792601734', '563.90685.89-0', 'Rua M', 'São Paulo', '05672-000',
	'SP', '(11)62972-7395', '00/00/0000', 'Solteiro', '-', '-', 'Honda', '1234', 's')
	--(1, 'Ederson Gonzaga de Melo', 'Gerente', 8000, 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua JosÃ© Dias Paes', 'São Paulo', '04851-003',
	--'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102', 'n'),
	--(2, 'Rafael Hadzic Rico de Sousa', 'Gerente', 6000, 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	--'Rua Zolia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'Rafael Hadzic', 'rafa130101', 'n'),
	--(3, 'Gabriel Gomes Gameiro', 'Motorista', 7150, 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atual, 140', 'São Paulo', '03646-000',
	--'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Rachel Gameiro Gomes', '(11)96784-7184', 'Gameiro', '1234', 'n'),
	--(4, 'Jean-Luc Bonnet', 'Gerente', 5650, 'lucbonnet10@gmail.com', '22.483.241-9', '37498101232', '563.90685.89-0', 'Rua X', 'São Paulo', '08744-000',
	--'SP', '(11)49958-7064', '00/00/0000', 'Solteiro', '-', '-', 'Luc', '1234', 's'),
	--(5, 'Nicolas Castro Pereira', 'Gerente', 6400, 'luluchvisk@gmail.com', '44.302.377-3', '45792601734', '752.74124.98-0', 'Rua M', 'São Paulo', '02244-000',
	--'SP', '(11)75918-5469', '00/00/0000', 'Solteiro', '-', '-', 'Nio', '1234', 's'),
	--(6, 'Gustavo Akio Honda', 'Atendente', 6300, 'akiohonda@gmail.com', '33.125.817-2', '991577361278', '674.70643.75-0', 'Rua H', 'São Paulo', '08242-000',
	--'SP', '(11)92657-3967', '00/00/0000', 'Solteiro', '-', '-', 'Honda', '1234', 's'),
	--(7, 'Leonardo Agostinho Teixeira', 'Gerente', 5650, 'leonardoagostin@gmail.com', '44.302.377-3', '45792601734', '563.90685.89-0', 'Rua M', 'São Paulo', '05672-000',
	--'SP', '(11)62972-7395', '00/00/0000', 'Solteiro', '-', '-', 'Honda', '1234', 's')
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
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 1),
(9, 9, 2),
(10, 10, 3),
(11, 11, 4),
(12, 12, 5),
(13, 13, 6),
(14, 14, 7),
(15, 15, 1),
(16, 16, 2),
(17, 17, 3),
(18, 18, 4),
(19, 19, 5),
(20, 20, 6),
(21, 21, 7),
(22, 22, 1),
(23, 23, 2),
(24, 24, 3),
(25, 25, 4),
(26, 26, 5),
(27, 27, 6),
(28, 28, 7),
(29, 29, 1),
(30, 30, 2),
(31, 31, 3)
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
(3, 3, 3),
(4, 1, 4),
(5, 2, 5),
(6, 3, 6),
(7, 1, 7),
(8, 2, 8),
(9, 3, 9),
(10, 1, 10),
(11, 2, 11),
(12, 3, 12),
(13, 1, 13),
(14, 2, 14),
(15, 3, 15),
(16, 1, 16),
(17, 2, 17),
(18, 3, 18),
(19, 1, 19),
(20, 2, 20),
(21, 3, 21),
(22, 1, 22),
(23, 2, 23),
(24, 3, 24),
(25, 1, 25),
(26, 2, 26),
(27, 3, 27),
(28, 1, 28),
(29, 2, 29),
(30, 3, 30),
(31, 1, 31)

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
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '10:00' and '11:59' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre12he14h
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '12:00' and '13:59' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre14he16h
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '14:00' and '15:59' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre16he18h
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '16:00' and '17:59' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre18he20h
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '18:00' and '19:59' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
go
-----------------------------------------------------------------------------------------------
go
create procedure usp_PedidoEntre20he22h
@tIn varchar(10),
@tFim varchar(10)
as
	select count(ID_Chamado) as qtde from Fechamento where Hora_Saida between '20:00' and '22:00' and Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)
-----------------------------------------------------------------------------------------------
go
create procedure usp_QtdeServiços
@tIn varchar(10),
@tFim varchar(10)
as 
select count(*) as qtde from Fechamento where Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103)

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
select (select Nome from Adicionais where ID_Adicionais = ab.ID_Adicional)as Nome,count(*)as qtde from Adicional_Abertura as ab inner join Abertura as a on a.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN  CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) and  a.ID_Chamado = ab.ID_Abertura group by ID_Adicional
--select  a.Nome ,count(*)/3 as qtde from Adicional_Abertura as ad inner join Abertura as ab on ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) inner join Adicionais as a on a.ID_Adicionais = ad.ID_Abertura group by a.nome
go
create procedure usp_AdicionaisPeriodo
@tIn varchar(10),
@tFim varchar(10)
as 
  select (select nome from Adicionais where ID_Adicionais = ad.ID_Adicional) as nome , count(ad.ID_Adicional_Abertura)*(select preco from Adicionais where ID_Adicionais = ad.ID_Adicional) as qtde from Adicional_Abertura ad  inner join Abertura as ab on ab.ID_Chamado = ad.ID_Abertura and ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) group by ID_Adicional
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
	select count(*) as qtde from Funcionario where REPLACE(REPLACE(REPLACE(Salario,'R$',''),'.00',''),',00','') <= Convert (float,@preçoFim) and REPLACE(REPLACE(REPLACE(Salario,'R$',''),'.00',''),',00','') > Convert (float,@preçoIn)

go
create procedure usp_SalarioFuncionarios
as
    select nome, REPLACE(REPLACE(REPLACE(Salario,'R$',''),'.00',''),',00','') as qtde from Funcionario
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
	select sum(Convert(numeric,REPLACE(REPLACE(REPLACE(Salario,'R$',''),'.00',''),',00','')))*@mes as qtde from Funcionario
go


/*Funcionarios*/
go
create procedure usp_QtdeAberturasMotoristas
@tIn varchar(10),
@tFim varchar(10)
as
select f.Nome,count(*) as qtde from Funcionario_Abertura as a  inner join Funcionario as f on Cargo = 'Motorista' and a.ID_Funcionario = f.ID_Funcionario inner join Abertura as ab on a.ID_Chamado = ab.ID_Chamado and  ab.Data_Servico LIKE '%' AND CONVERT(DATE, Data_Servico, 103) BETWEEN CONVERT(DATE, @tIn, 103) AND CONVERT(DATE, @tFim, 103) group by f.Nome
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
exec usp_PedidoEntre20he22h '01/12/2015','01/03/2016'
exec usp_QtdeServiços '01/12/2015','01/03/2016'
select * from Abertura
exec usp_QtdeAdicionaisAbertura '10/10/2014','10/10/2019'
exec usp_AdicionaisPeriodo '10/12/2010','10/01/2020'
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
exec usp_AtendimentosAtendente '10/12/2015','10/10/2016'
/*Caminhao*/
exec usp_InserirCaminhao  'Pejo' , '666', 'Azu', 'MQK-7060','2000','120000'
exec usp_DeleteCaminhao '0'/*esse delete apaga geral que tiver esse numero ai CUIDADO!*/
exec usp_AlterarCaminhao '4','Pejo' , '666', 'Azu', 'MQK-7060','2000','120000'
/*testes*/
select *from Fechamento


