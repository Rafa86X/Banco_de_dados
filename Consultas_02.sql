
/* Join de 3 tabela e alcance de somente um nivel*/

SELECT v.cod_venda Venda , c.Nome as Nome_cliente, vd.Nome as Nome_vendedor, vp.Cod_Produto as produto, vp.Quantidade FROM venda v
join cliente c ON v.Cliente_CPF = c.CPF
join vendedor vd ON v.Cod_Vendedor = vd.Cod_vendedor
join venda_produto vp on v.cod_venda = vp.Cod_Venda
order by c.Nome;

/*Join de 4 tabelas e dois niveis*/
SELECT v.cod_venda Venda , c.Nome as Nome_cliente, vd.Nome as Nome_vendedor, p.Nome as produto, vp.Quantidade FROM venda v
join cliente c ON v.Cliente_CPF = c.CPF
join vendedor vd ON v.Cod_Vendedor = vd.Cod_vendedor
join venda_produto vp on v.cod_venda = vp.Cod_Venda
join produto p on vp.Cod_Produto = p.Cod_Produto
order by c.Nome;


/*Join de 5 tabelas e 3 niveis*/
SELECT v.cod_venda Venda , c.Nome as Nome_cliente, vd.Nome as Nome_vendedor, p.Nome as produto, vp.Quantidade, ct.Descricao as Tipo_de_Produto FROM venda v
join cliente c ON v.Cliente_CPF = c.CPF
join vendedor vd ON v.Cod_Vendedor = vd.Cod_vendedor
join venda_produto vp on v.cod_venda = vp.Cod_Venda
join produto p on vp.Cod_Produto = p.Cod_Produto
join categoria ct on p.Id_Categoria = ct.Id_Categoria
order by c.Nome;

SELECT nome FROM cliente WHERE nome LIKE '%o';

select  * from venda;

select  * from produto where preco > 10 and preco < 30;

select  * from produto where preco between 10 and 30;

select * from cliente limit 5;

SELECT SUM(preco) FROM produto;

SELECT max(preco) FROM produto;

SELECT min(preco) FROM produto;

SELECT avg(preco) FROM produto;

SELECT SUM(preco) FROM produto;

SELECT count(preco) FROM produto














