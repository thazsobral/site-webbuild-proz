-- Inserir dados nas tabelas com valores atualizados
-- Tabela colaboradores
INSERT INTO colaboradores (ativo, bio, cargo, nome) VALUES
('S', 'Entusiasta da tecnologia, sempre em busca da próxima inovação. Transformando linhas de código em soluções extraordinárias.', 'Desenvolvedor', 'João Silva'),
('S', 'Designer apaixonado por criar experiências visuais que contam histórias. Transformando ideias em designs incríveis.', 'Designer', 'Maria Oliveira'),
('S', 'Analista de dados curioso, explorando o universo dos dados para descobrir insights ocultos. Transformando números em conhecimento.', 'Analista', 'Carlos Santos'),
('S', 'Líder nato e gerente de projetos apaixonado por motivar equipes. Transformando desafios em oportunidades de crescimento.', 'Gerente', 'Ana Souza'),
('S', 'Formado em Processos Gerenciais e com vários cursos na área de tecnologia, desde ferramentas cotidianas, a linguagens de programação, tendo o foco no desenvolvimento front-end com o uso de HTML/CSS/JS.', 'Programador', 'Tayrone Machado'),
('S', 'Pai, entusiasta de tecnologia, programador e viciado em resolver problemas. Possuo conhecimento em técnologias front-end e back-end, além de ter experiência com diversas ferramentas de desenvolvimento.', 'Programador', 'Thalles Sobral'),
('S', 'Desde quando eu era mais jovem, trabalhava para atender com excelência todos os tipos de clientes, me formei em técnico de manutenção e suporte em informática, subi de cargo como coordenador, e hoje atuo como gerente operacional.', 'Programador', 'Bruno Alves'),
('S', 'Programador apaixonado por resolver problemas complexos. Transformando linhas de código em soluções elegantes e eficientes.', 'Programador', 'Eduardo Veiga');

-- Tabela projetos
INSERT INTO projetos (tamb, nome, exibido_portifolio, id_cliente) VALUES
('Descrição do projeto 1', 'Projeto A', 'S', 1),
('Descrição do projeto 2', 'Projeto B', 'S', 2),
('Descrição do projeto 3', 'Projeto C', 'N', 1),
('Descrição do projeto 4', 'Projeto D', 'S', 3),
('Descrição do projeto 5', 'Projeto E', 'N', 2);

-- Tabela contatos
INSERT INTO contatos (nome, inscrito_newsletter, ativo) VALUES
('Contato 1', 'N', 'S'),
('Contato 2', 'S', 'S'),
('Contato 3', 'S', 'N'),
('Contato 4', 'N', 'S'),
('Contato 5', 'S', 'N');

-- Tabela mensagens
INSERT INTO mensagens (mensagem, assunto, id_contato) VALUES
('Olá João! A mente é como um algoritmo, sempre buscando a melhor solução. Vamos otimizar juntos o Projeto A na próxima semana?', 1, 1),
('Maria, seu design para o Projeto B é uma obra de arte digital! Estamos ansiosos para ver esse projeto ganhar vida!', 2, 2),
('Caro Carlos, explorando dados como quem desvenda mistérios. Vamos decifrar juntos os segredos do Projeto C? Responda até amanhã, Sherlock!', 1, 3),
('Ana, a gestão do Projeto D está como um código bem escrito, mas precisamos de uma atualização urgente. Pode nos ajudar a fazer o deploy?', 3, 4),
('Pedro, sua programação no Projeto E é música para nossos ouvidos! Continuamos impressionados com sua harmonia de códigos. Bravo!', 2, 5),
('Olá João! Estamos empolgados com o progresso do Projeto A. Vamos marcar uma reunião para discutir os próximos passos?', 1, '2023-02-15', 1),
('Maria, a apresentação do seu design para o Projeto B foi incrível! Mal podemos esperar para ver a implementação.', 2, '2023-03-20', 2),
('Caro Carlos, precisamos do seu insight para aprimorar a análise de dados no Projeto C. Podemos agendar uma chamada?', 1, '2023-04-10', 3),
('Ana, urgente! O cronograma do Projeto D precisa de ajustes. Pode revisar e fornecer uma estimativa de conclusão?', 3, '2023-05-05', 4),
('Pedro, parabéns pelo sucesso do seu código no Projeto E. Os resultados são impressionantes. Alguma novidade para compartilhar?', 2, '2023-06-25', 5);;

-- Tabela clientes
INSERT INTO clientes (nome, exibido_site, ativo) VALUES
('InovaTech Solutions', 'S', 'S'),
('ArteDigital Co.', 'N', 'S'),
('DataInsights Consultoria', 'S', 'N'),
('TechVision Labs', 'N', 'S'),
('WebCraft Studios', 'S', 'N');

-- Tabela participa
INSERT INTO participa (id_colaborador, id_projeto, funcao_colaborador) VALUES
(1, 1, 'Desenvolvedor'),
(2, 2, 'Designer'),
(3, 1, 'Analista'),
(4, 3, 'Gerente'),
(5, 2, 'Programador'),
(1, 3, 'Desenvolvedor');

-- Tabela links_colaboradores
INSERT INTO links_colaboradores (link_github, link_linkedin, link_facebook, id_colaborador) VALUES
('joao', 'joao', 'joao', 1),
('maria', 'maria', 'maria', 2),
('carlos', 'carlos', 'carlos', 3),
('ana', 'ana', 'ana', 4),
('pedro', 'pedro', 'pedro', 5),
('tayronemachado', 'tayronemachado', 'tayronemachado', 6),
('thallessobral', 'thallessobral', 'thallessobral', 7),
('brunoalves', 'brunoalves', 'brunoalves', 8);

-- Tabela emails_contatos
INSERT INTO emails_contatos (email, id_contato) VALUES
('contato@inovatech.com', 1),
('contato@artedigital.com', 2),
('contato@datainsights.com', 3),
('contato@techvision.com', 4),
('contato@webcraft.com', 5);

-- Tabela telefones_contatos
INSERT INTO telefones_contatos (telefone, id_contato) VALUES
(123456789, 1),
(987654321, 2),
(555555555, 3),
(111111111, 4),
(999999999, 5);