INSERT INTO Usuario (nome, email, senha) VALUES("Ryan Reynolds", "ryan.reynolds@email.com", "deadpool"),
("Denzel Washigton", "denzel.washigton@email.com", "malcom x");

INSERT INTO Categoria (nome, descricao) 
VALUES("Filosofia", ""),
("Literatura", "");

INSERT INTO Autor (nome, apresentacao) 
VALUES("Aristótles", ""),
("Machado de Assis", "");

INSERT INTO Editora (nome, cidade, estado, pais) 
VALUES("Vozes", "São Paulo", "São Paulo", "Brasil"),
("Rocco", "Brasília", "Distrito Federal", "Brasil");

INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, sinopse, ano_publicacao) 
VALUES (1, 1, 1, 1, "Ética a Nicômaco" , "Uma das mais expressivas e fecundas obras do pensamento grego e das que mais influenciaram a posteridade do mundo ocidental, Ética a Nicômaco revela o mais produtivo e laborioso filósofo da antiguidade ás voltas com a conceituação e a investigação dos elementos fundamentais da ciência do caráter e dos costumes.Trata-se de texto de referencia indispensável e obrigatório a todos os estudantes e cultivadores da filosofia, das artes e das ciências humanas, destacadamente o direito a psicologia, a antropologia, a sociologia e a política.", 2002),
(2,2,2,2,"Dom Casmurro","O livro juvenil Dom Casmurro é uma obra-prima da literatura brasileira que explora com maestria os temas do ciúme, traição e ambiguidade emocional, indicado para jovens leitores a partir de 15 anos. Escrito por Machado de Assis e ilustrado por Alexandre Camanho, este romance psicológico continua a desafiar e fascinar gerações com sua narrativa rica e personagens inesquecíveis." , 1960);

INSERT INTO livro (id_usuario, id_autor, id_editora, id_categoria, titulo, sinopse, ano_publicacao) 
VALUES 
(2, 2, 2, 2, "Quincas Borba" , "Um dos três grandes romances da fase realista de Machado de Assis, que narra as desventuras do provinciano Rubião, herdeiro do filósofo incompreendido Quincas Borba, na capital do Império.", 1901),
(1, 1, 1, 1, "Política" , "olítica é um texto do filósofo grego antigo Aristóteles. É composto por oito livros e não existem dúvidas acerca da autenticidade da obra. Acredita-se que as reflexões aristotélicas sobre a política originam-se da época em que ele era preceptor de Alexandre.", 1950);