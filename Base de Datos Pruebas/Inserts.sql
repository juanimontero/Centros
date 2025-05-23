

INSERT INTO Centros.dbo.Centros (Nombre,PsNombre,Direccion,Localidad,CodigoPostal,ComunidadAutonoma,Pais,Empresa,FechaCreacionRegistro,FechaUltimaModificacion) VALUES
	 (N'Instituto de Educación Secundaria Galileo Galilei',N'IES Galileo',N'Calle de Galileo, 25',N'110',28015,N'13',N'1',N'Pública','2025-05-19 08:15:03','2025-05-19 13:33:44'),
	 (N'Colégio Internacional de Lisboa',N'CIL',N'Avenida Infante Dom Henrique',N'153',1900263,N'34',N'2',N'Fundação EducaMais','2025-05-19 08:16:25','2025-05-19 11:30:55'),
	 (N'Colegio Nuestra Señora del Pilar',N'Colegio Pilar',N'Calle Castelló, 56',N'110',28001,N'13',N'1',N'Fundación Maristas','2025-05-19 08:17:06','2025-05-19 09:08:53'),
	 (N'Colegio San Ignacio de Loyola',N'San Ignacio',N'Av. Juan XXIII, 5',N'74',41011,N'1',N'1',N'Fundación Jesuitas','2025-05-19 08:17:52','2025-05-19 11:36:52'),
	 (N'Colégio Rainha Santa Isabel',N'CRSI',N'R. Dr. Francisco Sá Carneiro',N'168',3030087,N'29',N'2',N'Grupo Lusófona','2025-05-19 08:18:36','2025-05-19 09:48:29');



INSERT INTO Centros.dbo.Alumnos (Dni,Nombre,Apellidos,Sexo,Dirreccion,CodigoPostal,Pais,NumeroTelefono,Email,CentrosId,FechaCreacionRegistro,FechaUltimaModificacion,Localidad,ComunidadAutonoma,PrefijoTlfn) VALUES
	 (N'70305010J',N'Laura',N'Gómez Martínez',N'M',N'Rúa Real 87, Bajo',N'15003',N'1',N'644981087',N'laura.gomez79@gmail.com',5,'2025-05-19 08:45:10','2025-05-19 08:45:10',N'75',N'2',N'+34'),
	 (N'28107599N',N'João',N'Ferreira Lopes',N'H',N'Rua da Liberdade 52, 2ºD',N'1250145',N'2',N'962770410',N'joao.lopes@mail.pt',2,'2025-05-19 08:53:30','2025-05-19 08:53:30',N'181',N'25',N'+351'),
	 (N'20799957E',N'Carlos',N' Sánchez Rivera',N'H',N' Avenida de la Constitución 12',N'41004',N'1',N'975225872',N'carlos.rivera1985@hotmail.com',3,'2025-05-19 09:07:40','2025-05-19 09:07:40',N'74',N'1',N'+34'),
	 (N'16401307F',N'Marta',N'Costa Silva',N'H',N'Avenida dos Aliados 200',N'4000065',N'1',N'275310210',N'marta.silva@outlook.com',4,'2025-05-19 09:17:18','2025-05-19 11:36:52',N'',N'36',N'+351'),
	 (N'49509856X',N'Juan',N'Montero Galán',N'H',N'Cordoba',N'14011',N'1',N'644981087',N'juanmonterogalandam@gmail.com',2,'2025-05-19 10:51:55','2025-05-19 10:51:55',N'67',N'1',N'+34'),
	 (N'49509856X',N'Marta',N'Costa Silva',N'M',N'asdf',N'4536456',N'2',N'275310210',N'marta.silva@outlook.com',4,'2025-05-19 10:54:44','2025-05-19 10:54:44',N'186',N'24',N'+351'),
	 (N'49509856X',N'João',N'Costa Silva',N'H',N'ds',N'14011',N'2',N'644981087',N'marta.silva@outlook.com',1,'2025-05-19 11:25:00','2025-05-19 13:33:44',N'181',N'25',N'+34');

INSERT INTO Centros.dbo.Country (ISO3,Nombre,CodNum,Idioma,PrefijoTlfn) VALUES
	 (N'ESP',N'España',724,N'Español',N'+34'),
	 (N'PRT',N'Portugal',620,N'Portugués',N'+351');
	 
	 
INSERT INTO Centros.dbo.State (ISO3,Nombre,CountryId) VALUES
	 (N'AN',N'Andalucía',1),
	 (N'AR',N'Aragón',1),
	 (N'AS',N'Asturias',1),
	 (N'CN',N'Canarias',1),
	 (N'CB',N'Cantabria',1),
	 (N'CL',N'Castilla y León',1),
	 (N'CM',N'Castilla-La Mancha',1),
	 (N'CT',N'Cataluña',1),
	 (N'EX',N'Extremadura',1),
	 (N'GA',N'Galicia',1);
INSERT INTO Centros.dbo.State (ISO3,Nombre,CountryId) VALUES
	 (N'IB',N'Islas Baleares',1),
	 (N'RI',N'La Rioja',1),
	 (N'MD',N'Madrid',1),
	 (N'MC',N'Murcia',1),
	 (N'NC',N'Navarra',1),
	 (N'PV',N'País Vasco',1),
	 (N'VC',N'Comunidad Valenciana',1),
	 (N'CE',N'Ceuta',1),
	 (N'ML',N'Melilla',1),
	 (N'01',N'Aveiro',2);
INSERT INTO Centros.dbo.State (ISO3,Nombre,CountryId) VALUES
	 (N'02',N'Beja',2),
	 (N'03',N'Braga',2),
	 (N'04',N'Bragança',2),
	 (N'05',N'Castelo Branco',2),
	 (N'06',N'Coimbra',2),
	 (N'07',N'Évora',2),
	 (N'08',N'Faro',2),
	 (N'09',N'Guarda',2),
	 (N'10',N'Leiria',2),
	 (N'11',N'Lisboa',2);
INSERT INTO Centros.dbo.State (ISO3,Nombre,CountryId) VALUES
	 (N'12',N'Portalegre',2),
	 (N'13',N'Porto',2),
	 (N'14',N'Santarém',2),
	 (N'15',N'Setúbal',2),
	 (N'16',N'Viana do Castelo',2),
	 (N'17',N'Vila Real',2),
	 (N'18',N'Viseu',2),
	 (N'20',N'Azores',2),
	 (N'30',N'Madeira',2);



INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (1,N'Almería',4),
	 (1,N'Cádiz',11),
	 (1,N'Córdoba',14),
	 (1,N'Granada',18),
	 (1,N'Huelva',21),
	 (1,N'Jaén',23),
	 (1,N'Málaga',29),
	 (1,N'Sevilla',41),
	 (2,N'Huesca',22),
	 (2,N'Teruel',44);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (2,N'Zaragoza',50),
	 (3,N'Asturias',33),
	 (11,N'Illes Balears',7),
	 (4,N'Las Palmas',35),
	 (4,N'Santa Cruz de Tenerife',38),
	 (5,N'Cantabria',39),
	 (6,N'Ávila',5),
	 (6,N'Burgos',9),
	 (6,N'León',24),
	 (6,N'Palencia',34);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (6,N'Salamanca',37),
	 (6,N'Segovia',40),
	 (6,N'Soria',42),
	 (6,N'Valladolid',47),
	 (6,N'Zamora',49),
	 (7,N'Albacete',2),
	 (7,N'Ciudad Real',13),
	 (7,N'Cuenca',16),
	 (7,N'Guadalajara',19),
	 (7,N'Toledo',45);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (8,N'Barcelona',8),
	 (8,N'Girona',17),
	 (8,N'Lleida',25),
	 (8,N'Tarragona',43),
	 (17,N'Alicante',3),
	 (17,N'Castellón',12),
	 (17,N'Valencia',46),
	 (9,N'Badajoz',6),
	 (9,N'Cáceres',10),
	 (10,N'A Coruña',15);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (10,N'Lugo',27),
	 (10,N'Ourense',32),
	 (10,N'Pontevedra',36),
	 (13,N'Madrid',28),
	 (14,N'Murcia',30),
	 (15,N'Navarra',31),
	 (16,N'Álava',1),
	 (16,N'Bizkaia',48),
	 (16,N'Gipuzkoa',20),
	 (12,N'La Rioja',26);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (18,N'Ceuta',51),
	 (19,N'Melilla',52),
	 (39,N'Madeira',90),
	 (39,N'Porto Santo',92),
	 (39,N'Ilhas Desertas',92),
	 (39,N'Ilhas Selvagens',92),
	 (38,N'São Miguel',95),
	 (38,N'Terceira',97),
	 (38,N'Faial',99),
	 (38,N'Pico',99);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (38,N'São Jorge',98),
	 (38,N'Graciosa',99),
	 (38,N'Flores',99),
	 (38,N'Corvo',99),
	 (38,N'Santa Maria',96),
	 (37,N'Viseu',35),
	 (37,N'Mangualde',35),
	 (37,N'Nelas',35),
	 (36,N'Vila Real',50),
	 (36,N'Chaves',54);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (36,N'Peso da Régua',51),
	 (35,N'Viana do Castelo',49),
	 (35,N'Ponte de Lima',49),
	 (35,N'Arcos de Valdevez',49),
	 (34,N'Setúbal',29),
	 (34,N'Sesimbra',29),
	 (34,N'Almada',27),
	 (33,N'Santarém',20),
	 (33,N'Cartaxo',20),
	 (33,N'Almeirim',20);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (32,N'Porto',40),
	 (32,N'Gaia',44),
	 (32,N'Matosinhos',45),
	 (31,N'Portalegre',73),
	 (31,N'Castelo de Vide',73),
	 (31,N'Nisa',74),
	 (30,N'Lisboa',10),
	 (30,N'Sintra',27),
	 (30,N'Cascais',27),
	 (29,N'Leiria',24);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (29,N'Alcobaça',24),
	 (29,N'Marinha Grande',24),
	 (28,N'Guarda',63),
	 (28,N'Celorico da Beira',63),
	 (28,N'Figueira de Castelo Rodrigo',63),
	 (27,N'Faro',80),
	 (27,N'Albufeira',82),
	 (27,N'Olhão',87),
	 (26,N'Évora',70),
	 (26,N'Montemor-o-Novo',70);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (26,N'Arraiolos',70),
	 (25,N'Coimbra',30),
	 (25,N'Figueira da Foz',30),
	 (25,N'Montemor-o-Velho',31),
	 (24,N'Castelo Branco',60),
	 (24,N'Covilhã',62),
	 (24,N'Belmonte',62),
	 (23,N'Bragança',53),
	 (23,N'Miranda do Douro',52),
	 (23,N'Macedo de Cavaleiros',53);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (22,N'Braga',47),
	 (22,N'Barcelos',47),
	 (22,N'Guimarães',48),
	 (22,N'Famalicão',47),
	 (21,N'Beja',78),
	 (21,N'Aljustrel',76),
	 (21,N'Castro Verde',78),
	 (21,N'Moura',78),
	 (20,N'Aveiro',38),
	 (20,N'Águeda',37);
INSERT INTO Centros.dbo.Province (StateId,Nombre,PostalCode) VALUES
	 (20,N'Estarreja',38),
	 (20,N'Ílhavo',38),
	 (20,N'Ovar',38);

