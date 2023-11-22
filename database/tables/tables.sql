CREATE TABLE colaboradores 
( 
 id SERIAL PRIMARY KEY,  
 ativo CHAR(1) NOT NULL DEFAULT 'S',  
 bio VARCHAR(250) NOT NULL,  
 cargo VARCHAR(25) NOT NULL,  
 nome VARCHAR(25) NOT NULL
); 

CREATE TABLE projetos 
( 
 id SERIAL PRIMARY KEY,  
 tamb VARCHAR(250) NOT NULL,
 nome VARCHAR(25) NOT NULL,  
 exibido_portifolio CHAR(1) NOT NULL DEFAULT 'S',  
 id_cliente INT
); 

CREATE TABLE contatos 
( 
 id SERIAL PRIMARY KEY,  
 nome VARCHAR(25) NOT NULL,  
 inscrito_newsletter CHAR(1) NOT NULL DEFAULT 'N',  
 ativo CHAR(1) NOT NULL DEFAULT 'S'
); 

CREATE TABLE mensagens 
( 
 id SERIAL PRIMARY KEY,  
 mensagem VARCHAR(250),  
 assunto INT,  
 data_hora_recebimento TIMESTAMP NOT NULL DEFAULT NOW(),  
 id_contato INT
); 

CREATE TABLE clientes 
( 
 nome VARCHAR(25) NOT NULL,  
 id SERIAL PRIMARY KEY,  
 exibido_site CHAR(1) NOT NULL DEFAULT 'S',
 ativo CHAR(1) NOT NULL DEFAULT 'S'  
); 

CREATE TABLE participa 
( 
 id_colaborador INT,  
 id_projeto INT,  
 funcao_colaborador VARCHAR(25) NOT NULL,
 CONSTRAINT pk_participa PRIMARY KEY(id_colaborador, id_projeto)
); 

CREATE TABLE links_colaboradores 
( 
 id SERIAL PRIMARY KEY,  
 link_github VARCHAR(25),  
 link_linkedin VARCHAR(25),  
 link_facebook VARCHAR(25),  
 id_colaborador INT
); 

CREATE TABLE emails_contatos 
( 
 id SERIAL PRIMARY KEY,  
 email VARCHAR(25) NOT NULL,  
 id_contato INT
); 

CREATE TABLE telefones_contatos 
( 
 id SERIAL PRIMARY KEY,  
 telefone INT,  
 id_contato INT  
); 

ALTER TABLE projetos ADD FOREIGN KEY(id_cliente) REFERENCES clientes (id);
ALTER TABLE mensagens ADD FOREIGN KEY(id_contato) REFERENCES contatos (id);
ALTER TABLE participa ADD FOREIGN KEY(id_colaborador) REFERENCES colaboradores (id);
ALTER TABLE participa ADD FOREIGN KEY(id_projeto) REFERENCES projetos (id);
ALTER TABLE links_colaboradores ADD FOREIGN KEY(id_colaborador) REFERENCES colaboradores (id);
ALTER TABLE emails_contatos ADD FOREIGN KEY(id_contato) REFERENCES contatos (id);
ALTER TABLE telefones_contatos ADD FOREIGN KEY(id_contato) REFERENCES contatos (id);
