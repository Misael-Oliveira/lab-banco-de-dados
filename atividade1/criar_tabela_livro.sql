
CREATE TABLE livro(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    sinopse text,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(128) NOT NULL,
    editora VARCHAR(128) NOT NULL,
    categoria VARCHAR(128) NOT NULL,
    ano_publicacao YEAR
); 