/*CRIAÇÃO DA TABELA EDITORA*/
CREATE TABLE Editora(
	id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(128) UNIQUE NOT NULL ,
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
    data_cadastro TIMESTAMP,
    data_atualizacao TIMESTAMP
); 
