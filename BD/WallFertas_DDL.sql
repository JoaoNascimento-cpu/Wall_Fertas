CREATE DATABASE WallFertas

USE WallFertas

CREATE TABLE TipoUsuarios
(
    	IdTipoUsuario	INT PRIMARY KEY IDENTITY
		,TituloTipoUsuario VARCHAR(200) NOT NULL
);
GO

CREATE TABLE TipoProdutos
(
    	IdTipoProduto	INT PRIMARY KEY IDENTITY
		,TituloTipoProduto VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Usuarios
(
		IdUsuario INT PRIMARY KEY IDENTITY
		,IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuarios(IdTipoUsuario)
		,Nome VARCHAR(200) NOT NULL
		,Email VARCHAR(200) UNIQUE NOT NULL
		,Senha VARCHAR(200) NOT NULL
);
GO

CREATE TABLE Produtos
(
		IdProduto INT PRIMARY KEY IDENTITY
		,IdTipoProduto	INT FOREIGN KEY REFERENCES TipoProdutos(IdTipoProduto)
		,Nome VARCHAR(200) NOT NULL
		,Quantidade INT NOT NULL
		,Descricao VARCHAR(200) NOT NULL
		,Imagem NVARCHAR (200) NOT NULL
		,Preco INT NOT NULL
		,Validade DATE NOT NULL
);
GO

CREATE TABLE Comentarios
(
		IdComentario INT PRIMARY KEY IDENTITY
		,IdProduto	INT FOREIGN KEY REFERENCES Produtos(IdProduto)
		,Descricao VARCHAR(200) NOT NULL
		
		
);
GO

CREATE TABLE Empresas
(
		IdEmpresa INT PRIMARY KEY IDENTITY
		,Nome VARCHAR(200) NOT NULL
		,Endereco VARCHAR(200) NOT NULL
		,CNPJ INT NOT NULL		
);
GO

