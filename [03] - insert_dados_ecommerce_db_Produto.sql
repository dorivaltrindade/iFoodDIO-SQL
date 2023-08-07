-- inserindo valores na tabela Produto
insert into Produto (nomeProduto, classificaCrianca, categoria, descricao, valor, avaliacao, dimensoes)
			  values ('BoomBox', 		default, 	'Eletronico', 		'Aparelho com Wi-fi', 				800.00, 	8, 	'60x20x10'),
					 ('AirFryer', 		default, 	'Eletrodomestico', 	'Panela elétrica', 					310.00, 	7, 	'40x50x30'),
                     ('Impressora', 	default, 	'Informatica', 		'Laser', 							6500.00, 	8, 	'50x40x60'),
                     ('Cadeira Gamer', 	default, 	'Escritorio', 		'com rodísios e forrada em couro', 	3089.99, 	9, 	null),
                     ('Prateleira', 	default, 	'Movel', 			'Branca', 							109.99, 	10, '4x90x20'),
                     ('Chocolate', 		default, 	'Alimento', 		'Barra de 2500g',					199.35, 	9, 	null);
                     
select * from Produto;