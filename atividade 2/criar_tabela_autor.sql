/*CRIAÇÃO DA TABELA AUTOR*/
CREATE TABLE Autor (
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (255) UNIQUE NOT NULL,
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP,
    data_autorizacao TIMESTAMP
);