-- Populando a tabela COLABORADORES --
INSERT INTO colaboradores (ativo, bio, cargo, nome) 
VALUES 
('S', 'Entusiasta de tecnologia', 'Desenvolvedor', 'João Silva'),
('S', 'Designer criativo', 'Designer', 'Maria Oliveira'),
('S', 'Gestor de projetos', 'Gerente de Projeto', 'Carlos Santos'),
('S', 'Especialista em banco de dados', 'DBA', 'Ana Pereira'),
('S', 'Entusiasta de front-end', 'Desenvolvedor Front-end', 'Pedro Souza'),
('N', 'Especiailista em Front-end e amante da acessebilidade', 'Desenvolvedor Front-end', 'Tayrone Machado'),
('S', 'Entusiasta da diversidade tecnologica', 'Desenvolvedor Back-end', 'Thalles Sobral'),
('S', 'Sonhador de um mundo totalmente em nuvem e acessível', 'DevOps', 'Bruno Alves');

-- Populando a tabela LINKS_COLABORADORES --
INSERT INTO links_colaboradores (link_github, link_likedin, link_facebook, id_colaboradores) 
VALUES 
('https://github.com/joao', 'https://linkedin.com/joao', 'https://facebook.com/joao', 1),
('https://github.com/maria', 'https://linkedin.com/maria', 'https://facebook.com/maria', 2),
('https://github.com/carlos', 'https://linkedin.com/carlos', 'https://facebook.com/carlos', 3),
('https://github.com/ana', 'https://linkedin.com/ana', 'https://facebook.com/ana', 4),
('https://github.com/pedro', 'https://linkedin.com/pedro', 'https://facebook.com/pedro', 5),
('https://github.com/tayronemachado', 'https://linkedin.com/tayronemachado', 'https://facebook.com/tayronemachado', 6),
('https://github.com/thallessobral', 'https://linkedin.com/thallessobral', 'https://facebook.com/thallessobral', 7),
('https://github.com/brunoalves', 'https://linkedin.com/brunoalves', 'https://facebook.com/brunoalves', 8);

-- Populando a tabela PROJETOS --
INSERT INTO projetos (tamb, nome, exibido_portifolio) 
VALUES 
('Proj1', 'Projeto A', 'S'),
('Proj2', 'Projeto B', 'S'),
('Proj3', 'Projeto C', 'S'),
('Proj4', 'Projeto D', 'N'),
('Proj5', 'Projeto E', 'S');

-- Populando a tabela COLABORADOR_PARTICIPA_PROJETO --
INSERT INTO colaborador_participa_projeto (id_colaboradores, id_projetos, funcao_colaborador) 
VALUES 
(1, 1, 'Desenvolvedor'),
(2, 1, 'Designer'),
(3, 2, 'Gerente'),
(4, 3, 'DBA'),
(5, 3, 'Desenvolvedor'),
(6, 2, 'Desenvolvedor'),
(7, 2, 'Desenvolvedor'),
(8, 2, 'DevOps');

-- Populando a tabela CONTATOS --
INSERT INTO contatos (nome, inscrito_newsletter, ativo) 
VALUES 
('Contato 1', 'N', 'S'),
('Contato 2', 'Y', 'S'),
('Contato 3', 'N', 'S'),
('Contato 4', 'Y', 'N'),
('Contato 5', 'Y', 'S');

-- Populando a tabela TELEFONES --
INSERT INTO telefones (id_contato, telefone) 
VALUES 
(1, '123456789'),
(2, '987654321'),
(3, '111222333'),
(4, '555666777'),
(5, '999000111');

-- Populando a tabela EMAILS --
INSERT INTO emails (id_contato, email) 
VALUES 
(1, 'contato1@example.com'),
(2, 'contato2@example.com'),
(3, 'contato3@example.com'),
(4, 'contato4@example.com'),
(5, 'contato5@example.com');

-- Populando a tabela MENSAGENS --
INSERT INTO mensagens (mensagem, assunto, data_hora_recebimento, id_contato) 
VALUES 
('Olá, como você está?', 'Comprimento', '2023-11-20', 1),
('Precisamos discutir o projeto.', 'Dúvida sobre o projeto', '2023-11-19', 2),
('Você pode nos enviar a proposta?', 'proposta', '2023-11-18', 3),
('Ligue-me assim que possível.', 'contato', '2023-11-17', 4),
('Estamos ansiosos para trabalhar com vocês.', 'cumprimento de novo contrato', '2023-11-16', 5);

-- Populando a tabela MENSAGENS sem passar a data e hora--
INSERT INTO mensagens (mensagem, assunto) 
VALUES 
('Estamos ansiosos para trabalhar com vocês.','Dúvida sobre o futuro da empresa');
-- Populando a tabela PARCEIROS --
INSERT INTO parceiros (nome, exibido_site, ativo) 
VALUES 
('Parceiro A', 'S', 'S'),
('Parceiro B', 'S', 'S'),
('Parceiro C', 'N', 'S'),
('Parceiro D', 'S', 'N'),
('Parceiro E', 'S', 'S'),
('Lab Fiction', 'S', 'S'),
('Ghost Dragon', 'S', 'N'),
('LensCoffe', 'S', 'S');
