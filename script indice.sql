use modashop;

-- no caso da possível consulta
SELECT * FROM produto
WHERE descricao = "tenis" AND preco <= 100.00;

-- pode se criar um indice composto
CREATE INDEX `descricao_preco_idx` ON produto(descricao,preco);

-- no caso da possível consulta
SELECT idvenda,cliente_idcliente,valor FROM venda
WHERE valor <= 50.00 AND forma_pagamento = "credito";

-- pode se criar um indice composto
CREATE INDEX `valor_forma_pagamento_idx` ON venda(valor,forma_pagamento);

