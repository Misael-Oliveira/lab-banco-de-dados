USE biblioteca_pessoal_1s2026;
CREATE TABLE audit_livro (
	acao VARCHAR (255),
    usuario_bd VARCHAR (255),
    id_livro INT,
    dados_antigos TEXT,
    dados_novos TEXT,
    data_acao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER audit_upadate_livro 
AFTER UPDATE ON livro 
FOR EACH ROW 
BEGIN
	INSERT INTO audit_livro (acao, usuario_bd,id_livro, dados_antigos, dados_novos)
    VALUES ("UPDATE", USER(), OLD.id_livro, 
				CONCAT("titulo: ", OLD.titulo, "lido: ", OLD.lido),
				CONCAT("titulo: ", NEW.titulo, "lido: ", NEW.lido)
                );
END $$
DELIMITER ;

SELECT * FROM livro;

UPDATE livro
SET lido = 0
WHERE id_livro =2;

SELECT * FROM audit_livro;

CREATE USER 'USUARIO_AUXILIAR'@ '%"' IDENTIFIED BY 'catolica';