select * FROM autor;

/*SELECIONA OS LIVRO DO AUTOR */
select * FROM livro WHERE id_autor = 8;

SELECT * FROM categoria;

/*SELECIONA OS LIVRO DA CATEGORIA FILOSOFIA*/
SELECT * FROM livro WHERE id_categoria = 6;

/* ALTERA O NOME DA CATEGORIA FILOSOFIA PARA CENSURADO*/
UPDATE categoria SET nome = "Censurado" WHERE nome = "Filosofia";

/*APAGA OS LIVROS DA CATEGORIA CENSURADO*/
DELETE FROM livro WHERE id_categoria = 6;