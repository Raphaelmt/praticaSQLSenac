use modashop;

DELIMITER $
-- subtrai do estoque do produto a quantidade vendida
CREATE TRIGGER trigger_altera_estoque AFTER INSERT
ON item_venda
FOR EACH ROW
BEGIN
	UPDATE produto SET estoque = estoque - NEW.quantidade
WHERE produto.idproduto = NEW.produto_idproduto;
END$


