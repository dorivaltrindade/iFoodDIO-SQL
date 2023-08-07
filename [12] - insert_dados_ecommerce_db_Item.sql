-- [12] inserindo valores na tabela Item
insert into Item (	idItemPedido_fk, 	idItemProduto_fk, 	quantidade, statusProduto, 	total)
			values (1, 					1, 					1, 			default,		800.00),
				   (1, 					4, 					1, 			default,		3089.99),
                   (2, 					5, 					1, 			'Indisponível',		0),
                   (2, 					2, 					1, 			default,		310.00),
                   (3, 					3, 					1, 			'Indisponível',		0),
                   (3, 					6, 					1, 			default,		199.35),
                   (4, 					5, 					1, 			'Indisponível',		0),
                   (4, 					6,	 				1, 			default,		199.35),
                   (5, 					5, 					1, 			'Indisponível',		0),
                   (5, 					3, 					1, 			default,		6500.00),
                   (6,					4,					1,			default,		3089.99),
                   (7,					3,					1,			default,		6500.00);

-- consultando os valores inseridos na tabela Item             
select * from Item;