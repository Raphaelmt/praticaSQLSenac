use modashop;

-- mostra os produtos comprados por cada clientem sua quantidade e valor
CREATE VIEW view_prod_comprados AS
SELECT c.idcliente,c.nome,p.idproduto,p.descricao,i.valor_unitario,i.quantidade,i.subtotal
FROM cliente as c
INNER JOIN venda as v
on c.idcliente = v.cliente_idcliente
INNER JOIN item_venda AS i
ON v.idvenda = i.venda_idvenda
INNER JOIN produto AS p
ON i.produto_idproduto = p.idproduto;


-- mostra o gasto de cada cliente na loja
CREATE VIEW view_vendaPorCliente AS
SELECT c.idcliente,c.nome,SUM(v.valor) as total_comprado
FROM cliente as c
INNER JOIN venda as v
on c.idcliente = v.cliente_idcliente
GROUP BY c.idcliente;

