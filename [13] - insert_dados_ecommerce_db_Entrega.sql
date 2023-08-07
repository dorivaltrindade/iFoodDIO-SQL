-- [13] inserindo valores na tabela Entrega
insert into Entrega (idPedido_fk, 	statusEntrega, 	codigoRastreio)
			  values (2, 			'Despacho', 		'BC123456789BR'),
					 (1, 			'Despacho', 		'IS123456789BR'),
                     (4, 			'Despacho', 		'BL123456789BR'),
                     (5, 			'Despacho', 		'JQ123456789BR'),
                     (3, 			'Despacho', 		'DA123456789BR'),
                     (7, 			'Despacho', 		'OB123456789BR'),
                     (6, 			'Despacho', 		'ER123456789BR');
                     
-- consultando os valores inseridos na tabela entregas                
select * from Entrega;
