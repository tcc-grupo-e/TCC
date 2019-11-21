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
	(1, 1, 1,'Rua Faceten', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
	78000, '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor'),
	(2, 2, 3, 'Rua Piquiá', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	24500, '14:37', 'O veí­culo se encontra com uma batida na porta lateral esquerda'),
	(3, 3, 2, 'Rua Humberto Correia 1792', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	8500, '09:30', 'O veí­culo está em perfeito estado, e o serviço foi solicitado apenas para transporte de garagens'),
	(4, 4, 8, 'Rua Cafarnaum', 'Jesus', '961054684', '25/12/2017', 'Mercedes', 'Ferrari', 'Branco', '2012', 'GOD-1313',
	85000, '00:25', 'O veí­culo está em um estado impecável, e o serviço foi solicitado apenas para transporte de garagens'),
	(5, 5, 10, 'Rua Trinta e Dois', 'Goku', '742246217', '07/10/2016', 'Ford', 'Mustang GT', 'Amarelo', '2014', 'KAM-3414',
	75000, '20:15', 'O veí­culo está em um estado lámentavel, se encontra com batidas em várias partes, serviço solicitado foi o de reboque'),
	(6, 6, 4, 'Rua Estefano Kusnick', 'Jean', '823482456', '01/11/2019', 'Chevrolet', 'Camaro', 'Vermelho', '2018', 'JAN-5671',
	65000, '23:50', 'É verificável que a indiligência do condutor levou o veículo a uma série de arranhões e pancadas, serviço solicitado foi o de reboque'),
	(7, 7, 5, 'Rua Ministro Salgado Filho', 'Link', '431795531', '25/10/2018', 'Volkswagen', 'Horse', 'Verde', '2017', 'EPO-7643',
	45000, '14:20', 'Veículo em boas condições,e o serviço foi solicitado apenas para transporte de garagens'),
	(8, 8, 6, 'Avenida Dom João VI', 'Michael', '812345723', '17/08/2016', 'Volvo', 'XC60', 'Vermelho', '2015', 'TOF-3291',
	35000, '01:30', 'Veículo em condições críticas, serviço solicitado foi o de reboque'),
	(9, 9, 7, 'Rua Engenho Bom Futuro', 'Saitama', '324671266', '02/05/2015', 'Mercedes', 'Classe S', 'Preto', '2015', 'ONE-1111',
	62500, '15:40', 'Veículo em ótimas condições apenas com um pneu furado, serviço de troca de pneu solicitado'),
	(10, 10, 9, 'Rua Felipe dos Santos', 'Sanji', '012342489', '10/07/2013', 'Mercedes', 'Classe G', 'Cinza', '2010', 'PIE-9752',
	73500, '12:45', 'Veículo em condições críticas, serviço solicitado foi o de reboque.'),
	(11, 11, 12, 'Rua Chalanger', 'Eduardo', '256212489', '09/06/2012', 'Agrale', 'MARRU', 'Dourado', '1997', 'KWA-0541',
	76500, '13:50', 'O veí­culo se encontra com uma batida na porta lateral esquerda.'),
	(12, 12, 11, 'Rua Fluminense', 'Leonardo', '346212949', '02/04/2011', 'Maserati', 'GT Cup', 'Amarelo', '1999', 'NAW-7790',
	61200, '10:00', 'O veí­culo se encontra com uma batida na porta lateral esquerda.'),
	(13, 13, 14, 'Rua Maria de Lourdes Pimentel', 'Sandro', '745723167', '01/07/2010', 'Hyundai', 'HB20S', 'Azul', '2014', 'NES-5936',
	52000, '09:00', 'Veículo em condições críticas, serviço solicitado foi o de reboque.'),
	(14, 14, 13, 'Rua Arseno Rodrigues', 'Flávio', '521578321', '05/08/2012', 'Rover', 'Mini Cooper', 'Preto', '1992', 'JEA-4553',
	64500, '08:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.'),
	(15, 15, 16, 'Avenida Fernando de Noronha', 'Rodrigo', '432464212', '06/04/2013', 'GM', 'Astra', 'Laranja', '2002', 'HQL-5800',
	77500, '09:40', 'Veículo em condições críticas, serviço solicitado foi o de reboque.'),
	(16, 16, 15, 'Rua Doutor Arlindo Sodré', 'Seará', '221456812', '17/09/2014', 'JPX', 'Jipe', 'Vermelho', '1994', 'HVQ-7645',
	80500, '11:42', 'O veí­culo está em perfeito estado, e o serviço foi solicitado apenas para transporte de garagens.'),
	(17, 17, 18, 'Rua Visconde de Taunay', 'Byron', '721375421', '18/11/2015', 'Daewoo', 'Prince', 'Bege', '1994', 'KJK-8391',
	81200, '12:50', 'Veículo em ótimas condições com falta de combustível, serviço de pane seca solicitado'),
	(18, 18, 17, 'Rua Antônio Leão de Melo', 'Matheus', '998216312', '22/12/2017', 'Seat', 'Ibiza', 'Cinza', '1995', 'KOG-1504',
	54100, '13:46', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.'),
	(19, 19, 20, 'Rua Wilson Almeida Santana', 'Akira', '478211544', '27/09/2018', 'Audi', 'A4', 'Cinza', '1997', 'HTR-1005',
	63700, '13:46', 'O veí­culo se encontra com uma batida na porta lateral direita.'),
	(20, 20, 19, 'Rua Abdon Assis Inojosa Andrade', 'Ryo', '278347128', '12/02/2019', 'Land Rover', 'Range', 'Vermelho', '2012', 'MYY-7916',
	76500, '15:20', 'Veículo em condições críticas, serviço solicitado foi o de reboque.')
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
	(1, 1, 1, 'Rua Faceten', 'Ederson', '011000616', '25/01/2019', 'Chevrolet', 'Onix LT', 'Vermelho', '2018', 'EDR-2832',
	78000, '19:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor', 80040, '20:30', '0:20',
	'1:40', 'Robson Santos Onix', 'Danificado mecanicamente', 'Não'),
	(2, 2, 3, 'Rua Piquiá', 'Rafael', '258558652', '13/05/2017', 'Volkswagen', 'Golf GTI', 'Azul', '2016', 'FGR-1334',
	24500, '14:00', 'O veículo se encontra com uma batida na porta lateral esquerda', 25550, '17:00', '1:30', '1:30', 'Localiza',
	'Danificado estéticamente', 'Sim'),
	(3, 3, 2, 'Rua Humberto Correia 1792', 'Gabriel', '782493573', '02/12/2015', 'Ford', 'Mustang GT', 'Preto', '2013', 'ESP-4314',
	8500, '09:30', 'O veículo está em perfeito estado, e o servoço foi solicitado apenas para transporte de garagens', 8920,
	'10:30', '0:00', '1:00', 'Maria Lúcia Mustang', 'Não danificado', 'Não'),
	(4, 4, 8, 'Rua Cafarnaum', 'Jesus', '961054684', '25/12/2017', 'Mercedes', 'Ferrari', 'Branco', '2012', 'GOD-1313',
	85000, '00:25', 'O veí­culo está em um estado impecável, e o serviço foi solicitado apenas para transporte de garagens', 95040,
	'05:30', '7:40', '1:50', 'Nair e Analu Pizzaria Ltda', 'Danificado mecanicamente', 'Não'),
	(5, 5, 10, 'Rua Trinta e Dois', 'Goku', '742246217', '07/10/2016', 'Ford', 'Mustang GT', 'Amarelo', '2014', 'KAM-3414',
	75000, '20:15', 'O veí­culo está em um estado lámentavel, se encontra com batidas em várias partes, serviço solicitado foi o de reboque', 85050,
	'00:30', '2:00', '1:30', 'Elisa e Rita Entregas Expressas ME', 'Danificado mecanicamente', 'Não'),
	(6, 6, 4, 'Rua Estefano Kusnick', 'Jean', '823482456', '01/11/2019', 'Chevrolet', 'Camaro', 'Vermelho', '2018', 'JAN-5671',
	65000, '23:50', 'É verificável que a indiligência do condutor levou o veículo a uma série de arranhões e pancadas, serviço solicitado foi o de reboque', 70050,
	'01:30', '02:40', '1:10', 'Allana Bruna Santos', 'Danificado mecanicamente', 'Não'),
	(7, 7, 5, 'Rua Ministro Salgado Filho', 'Link', '431795531', '25/10/2018', 'Volkswagen', 'Horse', 'Verde', '2017', 'EPO-7643',
	45000, '14:20', 'Veículo em boas condições,e o serviço foi solicitado apenas para transporte de garagens', 51000,
	'17:30', '20:40', '2:50', 'Mariana Letícia Melo', 'Danificado mecanicamente', 'Sim'),
	(8, 8, 6, 'Avenida Dom João VI', 'Michael', '812345723', '17/08/2016', 'Volvo', 'XC60', 'Vermelho', '2015', 'TOF-3291',
	35000, '01:30', 'Veículo em condições críticas, serviço solicitado foi o de reboque', 40000,
	'02:30', '04:00', '2:00', 'Felipe e Martin Marketing Ltda', 'Danificado mecanicamente', 'Sim'),
	(9, 9, 7, 'Rua Engenho Bom Futuro', 'Saitama', '324671266', '02/05/2015', 'Mercedes', 'Classe S', 'Preto', '2015', 'ONE-1111',
	62500, '15:40', 'Veículo em ótimas condições apenas com um pneu furado, serviço de troca de pneu solicitado', 70540,
	'18:30', '20:00', '1:50', 'Betina e Cauê Ferragens Ltda', 'Danificado mecanicamente', 'Não'),
	(10, 10, 9, 'Rua Felipe dos Santos', 'Sanji', '012342489', '10/07/2015', 'Mercedes', 'Classe G', 'Cinza', '2010', 'PIE-9752',
	73500, '12:45', 'Veículo em ótimas condições com falta de combustível, serviço de pane seca solicitado', 78530,
	'14:30', '16:00', '2:30', 'Son Goku', 'Danificado mecanicamente', 'Sim'),
	(11, 11, 12, 'Rua Chalanger', 'Eduardo', '256212489', '09/06/2012', 'Agrale', 'MARRU', 'Dourado', '1997', 'KWA-0541',
	76500, '13:50', 'O veí­culo se encontra com uma batida na porta lateral esquerda.', 78500,
	'15:30', '18:00', '3:30', 'André', 'Danificado mecanicamente', 'Sim'),
	(12, 12, 11, 'Rua Fluminense', 'Leonardo', '346212949', '02/04/2015', 'Maserati', 'GT Cup', 'Amarelo', '1999', 'NAW-7790',
	61200, '10:00', 'O veí­culo se encontra com uma batida na porta lateral direita.', 70550,
	'15:30', '20:00', '4:50', 'Geraldo', 'Danificado mecanicamente', 'Sim'),
	(13, 13, 14, 'Rua Maria de Lourdes Pimentel', 'Sandro', '745723167', '01/07/2010', 'Hyundai', 'HB20S', 'Azul', '2014', 'NES-5936',
	52000, '09:00', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 60410,
	'17:30', '21:00', '4:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
	(14, 14, 13, 'Rua Arseno Rodrigues', 'Flávio', '521578321', '05/08/2016', 'Rover', 'Mini Cooper', 'Preto', '1992', 'JEA-4553',
	64500, '08:00', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.', 70030,
	'10:30', '12:00', '5:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
	(15, 15, 16, 'Avenida Fernando de Noronha', 'Rodrigo', '432464212', '06/04/2013', 'GM Chevrolet', 'Astra', 'Laranja', '2002', 'HQL-5800',
	77500, '09:40', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 90020,
	'10:30', '12:00', '5:00', 'Jorge', 'Danificado mecanicamente', 'Sim'),
	(16, 16, 15, 'Rua Doutor Arlindo Sodré', 'Seará', '221456812', '17/09/2017', 'JPX', 'Jipe', 'Vermelho', '1994', 'HVQ-7645',
	80500, '11:42', 'O veí­culo está em perfeito estado, e o serviço foi solicitado apenas para transporte de garagens.', 90050,
	'13:30', '15:00', '3:00', 'Guilherme', 'Não danificado', 'Não'),
	(17, 17, 18, 'Rua Visconde de Taunay', 'Byron', '721375421', '18/11/2017', 'Daewoo', 'Prince', 'Bege', '1994', 'KJK-8391',
	81200, '12:50', 'Veículo em ótimas condições com falta de combustível, serviço de pane seca solicitado', 100050,
	'10:30', '14:00', '4:00', 'Tânia', 'Não danificado', 'Não'),
	(18, 18, 17, 'Rua Antônio Leão de Melo', 'Matheus', '998216312', '22/12/2017', 'Seat', 'Ibiza', 'Cinza', '1995', 'KOG-1504',
	54100, '13:46', 'O veículo se encontra em perfeito estado, com problemas aparentemente no motor.', 90090,
	'15:30', '18:00', '2:30', 'Pedro', 'Não danificado', 'Não'),
	(19, 19, 20, 'Rua Wilson Almeida Santana', 'Akira', '478211544', '27/09/2018', 'Audi', 'A4', 'Cinza', '1997', 'HTR-1005',
	63700, '09:50', 'O veí­culo se encontra com uma batida na porta lateral direita.', 85090,
	'11:20', '13:00', '2:40', 'Marcel', 'Danificado mecanicamente', 'Sim'),
	(20, 20, 19, 'Rua Abdon Assis Inojosa Andrade', 'Ryo', '278347128', '12/02/2019', 'Land Rover', 'Range', 'Vermelho', '2012', 'MYY-7916',
	76500, '15:20', 'Veículo em condições críticas, serviço solicitado foi o de reboque.', 105090,
	'18:20', '22:50', '4:30', 'Fred', 'Danificado mecanicamente', 'Não')
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
	(1, 'Ederson Gonzaga de Melo', 'Gerente', 8000, 'eder.gon@outlook.com', '23.897.722-5', '56869728050', '373.36559.16-9', 'Rua JosÃ© Dias Paes', 'São Paulo', '04851-003',
	'SP', '(11)5528-5550', '28/11/2002', 'Solteiro', 'Rem Gonzaga', '(11)95142-9829', 'ederzed', 'eder281102', 'n'),
	(2, 'Rafael Hadzic Rico de Sousa', 'Gerente', 6000, 'rafael.hadzic@gmail.com', '54.352.151-5', '30979961802', '190.21697.31-1', 
	'Rua Zolia Emerenciana de Alvarenga', 'Guarulhos', '07077-120', 'SP', '2485-8555', '13/01/2001', 'Solteiro', 'Andressa Hadzic', '(11)94871-8246', 'Rafael Hadzic', 'rafa130101', 'n'),
	(3, 'Gabriel Gomes Gameiro', 'Motorista', 7150, 'ggameiro@outlook.com', '58.164.857-2', '32177491181', '171.68433.91-0', 'Rua Atual, 140', 'São Paulo', '03646-000',
	'SP', '(11)2958-7064', '18/09/2002', 'Casado', 'Rachel Gameiro Gomes', '(11)96784-7184', 'Gameiro', '1234', 'n'),
	(4, 'Jean-Luc Bonnet', 'Gerente', 5650, 'lucbonnet10@gmail.com', '22.483.241-9', '37498101232', '563.90685.89-0', 'Rua X', 'São Paulo', '08744-000',
	'SP', '(11)49958-7064', '00/00/0000', 'Solteiro', '-', '-', 'Luc', '1234', 's'),
	(5, 'Nicolas Castro Pereira', 'Gerente', 6400, 'luluchvisk@gmail.com', '44.302.377-3', '45792601734', '752.74124.98-0', 'Rua M', 'São Paulo', '02244-000',
	'SP', '(11)75918-5469', '00/00/0000', 'Solteiro', '-', '-', 'Nio', '1234', 's'),
	(6, 'Gustavo Akio Honda', 'Atendente', 6300, 'akiohonda@gmail.com', '33.125.817-2', '991577361278', '674.70643.75-0', 'Rua H', 'São Paulo', '08242-000',
	'SP', '(11)92657-3967', '00/00/0000', 'Solteiro', '-', '-', 'Honda', '1234', 's'),
	(7, 'Leonardo Agostinho Teixeira', 'Gerente', 5650, 'leonardoagostin@gmail.com', '44.302.377-3', '45792601734', '563.90685.89-0', 'Rua M', 'São Paulo', '05672-000',
	'SP', '(11)62972-7395', '00/00/0000', 'Solteiro', '-', '-', 'Honda', '1234', 's')

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