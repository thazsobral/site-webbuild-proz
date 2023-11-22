-- consultando colaboradores --
select * from colaboradores;

select count(c.nome) as quantidade_colaboradores
	from colaboradores as c;

select count(c.nome) as quantidade_colaboradores_ativos
	from colaboradores as c
    where c.ativo = 'S';
-- consultados colaboradores que participam de projetos --
select * from participa;
-- consulta colaboradores que mais participou de projetos --
SELECT c.nome AS colaborador, COUNT(p.id_projeto) AS total
	FROM colaboradores c
	JOIN participa p ON c.id = p.id_colaborador
	GROUP BY c.nome
	ORDER BY total DESC
	LIMIT 1;
-- consulta de contatos --
select * from contatos;
-- consulta de emails de contatos --
select * from emails;
-- consulta de links de colaboradores --
select * from links_colaboradores;
-- consulta de mensagens --
select * from mensagens;
-- consulta de quantas mensagens foram enviadas entre janeiro e junho --
select count(*) from mensagens as m where m.data_hora_recebimento BETWEEN '2023-01-01T00:00:00' and '2023-06-30T00:00:00';
-- consulta de parceiros --
select * from clientes;
-- consulta quantos clientes não têm projetos --
select clientes.nome
	from clientes
    FULL join projetos 
    where projetos.id_cliente <> clientes.id;
-- consulta de projetos --
select * from projetos;
-- consulta de quantos projetos foram construídos para clientes --
select count(*)
	from projetos
    inner join clientes
    on projetos.id_cliente = clientes.id;
-- consulta de telefones de contatos --
select * from telefones;