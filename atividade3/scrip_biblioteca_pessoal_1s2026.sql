DROP DATABASE IF EXISTS biblioteca_1s_2026;
CREATE DATABASE biblioteca_1s_2026;
USE biblioteca_1s_2026;

CREATE TABLE Usuario(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

CREATE TABLE Categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) UNIQUE NOT NULL ,
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_autualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

CREATE TABLE Autor (
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) UNIQUE NOT NULL,
    ano_nascimento INT,
    ano_morte INT,
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Editora(
	id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) UNIQUE NOT NULL ,
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Livro(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_autor INT,
    id_categoria INT,
    id_editora INT,
    sinopse text,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    lido BOOLEAN DEFAULT (0),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_livro_usuario FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
    ON DELETE CASCADE,
    
    CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
    ON DELETE RESTRICT,
    
    CONSTRAINT fk_livro_categoria FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
    ON DELETE RESTRICT,
    
    CONSTRAINT fk_livro_editora FOREIGN KEY (id_editora) REFERENCES Editora(id_editora)
    ON DELETE RESTRICT
); 