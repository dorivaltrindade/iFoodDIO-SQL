-- [11] inserindo valores na tabela Pedido
insert into Pedido ( idPedidoCliente_fk, 	idPedidoPagamento_fk,	 descricao,				frete,	statusPedido, 	CEPpedido)
			 values (2,						1,				  		'App', 					20,		default,		'01031970'),
                    (3,						1, 				  		'Website/cupom -5%',	10,		default,		'80001970'),
                    (4,						2,				  		'Website', 				30,		default,		'20010974'),
                    (5,						2,				  		'App/cupom -5%',		40,		default,		'88010970'),
                    (6,						3, 				  		'App', 					10,		default,		'30161970'),
                    (3,						3,				  		'Website/cupom -10%', 	40,		default,		'80001970'),
                    (1,						3, 				  		'App/cupom -3%',		80,		default,		'30161970');
                    
-- consultando os valores inseridos na tabela Pedido             
select * from Pedido;