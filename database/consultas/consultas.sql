-- consultando colaboradores --
select * from colaboradores;
-- consultando quantidade de colaboradores cadastrados --
select count(c.nome) as quantidade_colaboradores
	from colaboradores as c;
-- consultando quantidade de colaboradores com cadastro ativo --
select count(c.nome) as quantidade_colaboradores_ativos
	from colaboradores as c
    where c.ativo = 'S';
-- consultando colaboradores que participam de projetos --
select * from colaborador_participa_projeto;
-- consulta de contatos --
select * from contatos;
-- consulta de emails de contatos --
select * from emails;
-- consulta de links de colaboradores --
select * from links_colaboradores;
-- consulta de mensagens --
select * from mensagens;
-- consulta de parceiros --
select * from parceiros;
-- consulta de projetos --
select * from projetos;
-- consulta de telefones de contatos --
select * from telefones;