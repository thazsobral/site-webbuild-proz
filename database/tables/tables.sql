-- COLABORES --
CREATE TABLE colaboradores 
( 
 id INT PRIMARY KEY,  
 ativo VARCHAR(1) NOT NULL,  
 bio VARCHAR(100) NOT NULL,  
 cargo VARCHAR(25) NOT NULL,  
 nome VARCHAR(25) 
);
-- LINKS COLABORADORES --
CREATE TABLE links_colaboradores 
( 
 id INT PRIMARY KEY,  
 link_github VARCHAR(100),  
 link_likedin VARCHAR(100),  
 link_facebook VARCHAR(100),  
 id_colaboradores INT,
 CONSTRAINT fk_links_id_colaboradores FOREIGN KEY(id_colaboradores) REFERENCES colaboradores (id)
);
-- PROJETOS--
CREATE TABLE projetos 
( 
 id INT PRIMARY KEY,  
 tamb VARCHAR(100) NOT NULL,  
 nome VARCHAR(25) NOT NULL,  
 exibido_portifolio CHAR(1) NOT NULL DEFAULT 'S',
 UNIQUE (tamb)
); 
-- COLABORADOR PARTICIPA PROJETOS --
CREATE TABLE colaborador_participa_projeto 
( 
 id_colaboradores INT, 
 id_projetos INT,  
 funcao_colaborador VARCHAR(25) NOT NULL,
 PRIMARY key (id_colaboradores, id_projetos),
 CONSTRAINT fk_id_projetos FOREIGN KEY (id_projetos) REFERENCES projetos (id),
 CONSTRAINT fk_id_colaboradores FOREIGN KEY (id_colaboradores) REFERENCES colaboradores (id)
); 
-- CONTATOS --
CREATE TABLE contatos 
( 
 id INT PRIMARY KEY,  
 nome VARCHAR(25) NOT NULL,  
 inscrito_newsletter CHAR(1) NOT NULL DEFAULT 'N',  
 ativo CHAR(1) NOT NULL DEFAULT 'S'
);
-- TELEFONES CONTATOS --
CREATE TABLE telefones
( 
 id INT PRIMARY KEY,  
 id_contato INT,  
 telefone VARCHAR(11) NOT NULL,  
 CHECK (telefone <> 'undefined'),
 UNIQUE (telefone),
 CONSTRAINT fk_telefone_id_contato FOREIGN KEY(id_contato) REFERENCES contatos (id)
);
-- EMAILS CONTATOS --
CREATE TABLE emails
( 
 id INT PRIMARY KEY,  
 id_contato INT,  
 email VARCHAR(50) NOT NULL,  
 CHECK (email = 'undefined'),
 UNIQUE (email),
 CONSTRAINT fk_email_id_contato FOREIGN KEY(id_contato) REFERENCES contatos (id)
); 
-- MENSAGENS CONTATOS --
CREATE TABLE mensagens 
( 
 id INT PRIMARY KEY,  
 mensagem VARCHAR(250),  
 assunto INT,  
 data_hora_recebimento DATE NOT NULL DEFAULT NOW(),  
 id_contato INT,
 CONSTRAINT fk_mensagens_id_contatos FOREIGN KEY(id_contato) REFERENCES contatos (id) 
);
-- PARCEIROS --
CREATE TABLE parceiros 
( 
 nome VARCHAR(n) NOT NULL,  
 id INT PRIMARY KEY AUTO_INCREMENT,  
 exibido_site CHAR(n) NOT NULL DEFAULT 'S',  
 ativo CHAR(n) NOT NULL DEFAULT 'S',  
); 