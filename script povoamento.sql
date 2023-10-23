use modashop;

INSERT INTO cliente(nome,cpf,email,telefone,endereco,nascimento,login,senha)
VALUES
('Vinícius Meireles','36584328023','viniciusm@gmail.com','1727585837','Rua Natal','1972-12-23','viniciusm','123456'),
('Otávio Monteiro','11384442006','otaviom@gmail.com','7438323387','Quadra 305 Norte Rua 5','1983-11-17','otaviom','qwerty'),
('Bruno Sá','52108667008','brunos@gmail.com','8932575624','Rua Nossa Senhora de Fátima','2000-09-03','brunos','asdfgh'),
('Sheila Matos','89873974083','shelam@gmail.com','2724780304','Travessa Dilermando Reis','1960-05-16','sheilam','zxcvbn'),
('Estela Rosário','79810451008','estelar@gmail.com','9628972651','Beco Batista','1995-10-01','estelar','ghjklvb');

INSERT INTO venda(valor,forma_pagamento,cartao_pagamento,parcelas_pagamento,data_venda,data_prevista,data_entregue,status,frete,cod_rastreamento,cliente_idcliente)
VALUES
(100.00,'boleto',NULL,NULL,'2021-01-15','2021-02-01','2021-02-01','entregue',0,'as48654fd',1),
(40.00,'pix',NULL,NULL,'2021-04-02','2021-04-17','2021-04-15','entregue',15.00,'fg45038ru',2),
(200.00,'credito','5349118804474004',2,'2021-08-25','2021-09-15','2021-09-15','entregue',0,'fg45687yu',3),
(18.00,'debito','4532661082633874',NULL,'2022-01-05','2022-01-20','2022-01-15','entregue',10.00,'th12548yu',4),
(75.00,'boleto',NULL,NULL,'2022-03-04','2022-03-19','2022-03-19','entregue',0,'er18468ty',5),
(500.00,'pix',NULL,NULL,'2022-06-15','2021-06-22',NULL,'enviado',0,'qw45879jk',1);

INSERT INTO produto(descricao,preco,tamanho,cor,estoque,categoria,marca)
VALUES
('Calça Jeans',60.00,'42','preto',10,'calças','evidence'),
('Tènis',80.00,'41','branco',2,'calçados','ollie'),
('Camiseta Infantil Masculina',18.00,'10A','azul',0,'camisetas','hering'),
('Óculos de Sol',75.00,NULL,'preto',5,'óculos','kanui'),
('Mochila',100.00,NULL,'azul escuro',20,'mochilas','puma'),
('Macacão Feminino',250.00,'m','verde',2,'macacões','zinzane'),
('Calça Legging','70.00','g','preto',7,'calças','quintess'),
('Vestido Floral',40.00,'gg',NULL,1,'vestidos','bonprix'),
('Vestido Curto',35.00,'p','vermelho',5,'vestidos','aishty'),
('Blusa Feminina',40.00,'m','bege',10,'blusas','endless');

INSERT INTO item_venda(produto_idproduto,venda_idvenda,quantidade,valor_unitario,subtotal)
VALUES
(5,1,1,100.00,100.00),
(8,2,1,40.00,40.00),
(2,3,2,80.00,160.00),
(10,3,1,40.00,40.00),
(3,4,1,18.00,18.00),
(4,5,1,75.00,75.00),
(6,6,1,250.00,250.00),
(1,6,2,60.00,120.00),
(7,6,1,70.00,70.00);


