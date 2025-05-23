-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- Centros.dbo.Centros definition

-- Drop table

-- DROP TABLE Centros.dbo.Centros;

CREATE TABLE Centros.dbo.Centros (
	Id int IDENTITY(1,1) NOT NULL,
	Nombre nvarchar(250) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	PsNombre nvarchar(250) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Direccion nvarchar(250) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Localidad nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	CodigoPostal numeric(10,0) DEFAULT 0 NOT NULL,
	ComunidadAutonoma nvarchar(50) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Pais nvarchar(50) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Empresa nvarchar(50) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	FechaCreacionRegistro datetime2(0) NOT NULL,
	FechaUltimaModificacion datetime2(0) NULL,
	CONSTRAINT Centros001_PK PRIMARY KEY (Id)
);
 CREATE NONCLUSTERED INDEX Direccion ON Centros.dbo.Centros (  Localidad ASC  , CodigoPostal ASC  , ComunidadAutonoma ASC  , Pais ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX Nombre ON Centros.dbo.Centros (  Nombre ASC  , PsNombre ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- Centros.dbo.Country definition

-- Drop table

-- DROP TABLE Centros.dbo.Country;

CREATE TABLE Centros.dbo.Country (
	id int IDENTITY(1,1) NOT NULL,
	ISO3 varchar(3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	Nombre varchar(100) COLLATE Modern_Spanish_CI_AS NULL,
	CodNum int NULL,
	Idioma varchar(100) COLLATE Modern_Spanish_CI_AS NULL,
	PrefijoTlfn varchar(10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	CONSTRAINT Paises_PK PRIMARY KEY (id)
);


-- Centros.dbo.sysdiagrams definition

-- Drop table

-- DROP TABLE Centros.dbo.sysdiagrams;

CREATE TABLE Centros.dbo.sysdiagrams (
	name sysname COLLATE Modern_Spanish_CI_AS NOT NULL,
	principal_id int NOT NULL,
	diagram_id int IDENTITY(1,1) NOT NULL,
	version int NULL,
	definition varbinary(MAX) NULL,
	CONSTRAINT PK__sysdiagr__C2B05B61128C2A21 PRIMARY KEY (diagram_id),
	CONSTRAINT UK_principal_name UNIQUE (principal_id,name)
);


-- Centros.dbo.Alumnos definition

-- Drop table

-- DROP TABLE Centros.dbo.Alumnos;

CREATE TABLE Centros.dbo.Alumnos (
	AlumnosId int IDENTITY(1,1) NOT NULL,
	Dni nvarchar(10) COLLATE Modern_Spanish_CI_AS DEFAULT '' NULL,
	Nombre nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Apellidos nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Sexo nvarchar(10) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Dirreccion nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	CodigoPostal nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Pais nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	NumeroTelefono nvarchar(14) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	Email nvarchar(100) COLLATE Modern_Spanish_CI_AS DEFAULT '' NOT NULL,
	CentrosId int DEFAULT 0 NOT NULL,
	FechaCreacionRegistro datetime2(0) NOT NULL,
	FechaUltimaModificacion datetime2(0) NULL,
	Localidad nvarchar(50) COLLATE Modern_Spanish_CI_AS NULL,
	ComunidadAutonoma nvarchar(50) COLLATE Modern_Spanish_CI_AS NULL,
	PrefijoTlfn varchar(10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	CONSTRAINT Alumnos001_PK PRIMARY KEY (AlumnosId),
	CONSTRAINT Alumnos_Centros_FK FOREIGN KEY (CentrosId) REFERENCES Centros.dbo.Centros(Id)
);
 CREATE NONCLUSTERED INDEX Direccion ON Centros.dbo.Alumnos (  Dirreccion ASC  , CodigoPostal ASC  , Pais ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX Nombre ON Centros.dbo.Alumnos (  Nombre ASC  , Apellidos ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX informacionPersonal ON Centros.dbo.Alumnos (  AlumnosId ASC  , Dni ASC  , Nombre ASC  , Apellidos ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- Centros.dbo.State definition

-- Drop table

-- DROP TABLE Centros.dbo.State;

CREATE TABLE Centros.dbo.State (
	id int IDENTITY(1,1) NOT NULL,
	ISO3 varchar(3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	Nombre varchar(100) COLLATE Modern_Spanish_CI_AS NULL,
	CountryId int NULL,
	CONSTRAINT State_PK PRIMARY KEY (id),
	CONSTRAINT State_Country_FK FOREIGN KEY (CountryId) REFERENCES Centros.dbo.Country(id)
);


-- Centros.dbo.Province definition

-- Drop table

-- DROP TABLE Centros.dbo.Province;

CREATE TABLE Centros.dbo.Province (
	StateId int NULL,
	Nombre varchar(100) COLLATE Modern_Spanish_CI_AS NULL,
	PostalCode int NULL,
	id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT Province_PK PRIMARY KEY (id),
	CONSTRAINT Province_State_FK FOREIGN KEY (StateId) REFERENCES Centros.dbo.State(id)
);



