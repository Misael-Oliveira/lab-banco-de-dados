
CREATE TABLE categoaria(
	id_categoaria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(128) UNIQUE NOT NULL ,
    descricao TEXT NOT NULL,
    data_cadastro TIMESTAMP,
    data_autorizacao TIMESTAMP
); 