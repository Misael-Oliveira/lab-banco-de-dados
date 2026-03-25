/*CRIAÇÃO DA TABELA CATEGORIA*/
CREATE TABLE Categoria(
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(128) UNIQUE NOT NULL ,
    descricao TEXT,
    data_cadastro TIMESTAMP,
    data_autorizacao TIMESTAMP
); 