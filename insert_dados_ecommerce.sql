use ecommerce_db;

-- [01] inserindo valores na tabela Cliente
insert into Cliente (pNome, 		nomeMeio,	sobrenome, 	endereco, 												dataNascimento) 
			  values ('Antonio', 	'C', 		'Barbosa', 	'Rua Alfredo Gnom, 100 - Paraíso - São Paulo/SP', 		'1985-05-25'),
					 ('Carlos', 	'F', 		'Setubal', 	'Rua Carmelita, 42 - Nobresa - Salto/SP', 				'1978-01-20'),
                     ('Zilda', 		'K', 		'Klauss', 	'Av. João Pessoa, 39-ap.602 - Ponta Grossa - Jaú/SP', 	'1997-02-17'),
                     ('Fernando', 	'Val', 		'Aranha', 	'Praça Bonifácio,78 altos  - Casa Amarela - Recife/PE', '1966-09-27'),
                     ('Benedita', 	'P', 		'Lima', 	'Rua Rica, 38 - Jacarandá - Maceió/AL', 				'1987-09-10'),
                     ('Creuza', 	'T', 		'Sousa', 	'Av. Pacaembu, 4503 - Fonte Alta - Palmas/TO', 			'1983-11-08');

select * from Cliente;

-- [02] inserindo valores na tabela Tipo_Cliente
insert into Tipo (		numero, 			tipo,	idTipoCliente_fk) 
			  values (	123456789112231, 	'CNPJ',	1),
					 (	12345678910, 		'CPF',	2),
                     (	111456789110002, 	'CNPJ',	3),
                     (	12345678912, 		'CPF',	4),
                     (	222456789110003, 	'CNPJ',	5),
                     (	33344455570, 		'CPF',	6);

select * from Tipo;

-- [03] inserindo valores na tabela Produto
insert into Produto (nomeProduto, 		classificaCrianca, 	categoria, 		descricao, 							valor, 		avaliacao, dimensoes)
			  values ('BoomBox', 		default, 		'Eletronico', 		'Aparelho com Wi-fi', 				800.00, 	8, 			'60x20x10'),
					 ('AirFryer', 		default, 		'Eletrodomestico', 	'Panela elétrica', 					310.00, 	7, 			'40x50x30'),
                     ('Impressora', 	default, 		'Informatica', 		'Laser', 							6500.00, 	8, 			'50x40x60'),
                     ('Cadeira Gamer', 	default, 		'Escritorio', 		'com rodísios e forrada em couro', 	3089.99, 	9, 			null),
                     ('Prateleira', 	default, 		'Movel', 			'Branca', 							109.99, 	10, 		'4x90x20'),
                     ('Chocolate', 		default, 		'Alimento', 		'Barra de 2500g',					199.35, 	9, 			null);
                     
select * from Produto;

-- [04] inserindo valores na tabela Localidade
insert into Localidade (	cidade, 			CEP)
			values (		'São Paulo',		'01031970'),				
                   (		'Belo Horizonte',	'30161970'),
                   (		'Curitiba',			'80001970'),
                   (		'Florianópolis',	'88010970'),
                   (		'Rio de Janeiro',	'20010974');

-- consultando os valores inseridos na tabela estoquesLocalidades             
select * from Localidade;                    
                    
-- [05] inserindo valores na tabela Produto_Estoque
insert into Produto_Estoque (	idProdutoEstoque_fk, 	IdLocalidadeEstoque_fk, 	quantidade)
			values (			1,						1,							120), 
				   (			2,						2,							100), 
                   (			3,						3,							40), 
                   (			4,						4,							90), 
                   (			5,						5,							150),
                   (			6,						1,							30);

-- consultando os valores inseridos na tabela estoquesProdutos               
select * from Produto_Estoque;

-- [06] inserindo valores na tabela Fornecedor
insert into Fornecedor (	cnpj, 				razaoSocial, 				contato)
			values (		'75733253000173', 	'Brinquedos Legais', 		'11939161260'),
				   (		'73249792000108', 	'Suplementos Forte', 		'11995849852'),
                   (		'31283792000182', 	'Móveis Sob Medida', 		'11946094753'),
                   (		'17581217000135', 	'Eletrônicos TecnoCell', 	'11911958570'),
                   (		'12594512000102', 	'Moda Moderna', 			'11938904888'),
                   (		'13528672000156', 	'Lar Maravilha', 			'12967535468');
                   
-- consultando os valores inseridos na tabela Fornecedor              
select * from Fornecedor;

-- [07] inserindo valores na tabela Forncedor_Produto
insert into Fornecedor_Produto (	idFornecedor_fk,	idProduto_fk,	quantidade)
			values (				4, 					1, 				120),
				   (				6, 					2,				100),
                   (				4,					3,				40),
                   (				3,					4,				90),
                   (				6,					5,				150),
                   (				2,					6,				30);		

-- consultando os valores inseridos na tabela produtosFornecedores             
select * from Fornecedor_Produto;

-- [08] inserindo valores na tabela Pagamento
insert into Pagamento (	tipoPagamento) 
			  values (	'Credito'),
                     (	'PIX'),
					 (	'Boleto');
 
 -- consultando os valores inseridos na tabela Pagamento          
select * from Pagamento;
                     
-- [09] inserindo valores na tabela Vendedor
insert into Vendedor (	razaoSocial, 				localidade, 			nomeFantasia)
			values (	'Fernando Brinx', 			'São Paulo', 			'Over Happy Brinquedos'),
				   (	'Antonio Personal', 		'Minas Gerais', 		'Suplementos Fit'),
                   (	'Hildebrando Marceneiro', 	'Bahia', 				'Móveis Clássicos'),
                   (	'Inovena Correia', 			'Rio Grande do Sul', 	'Eletrônicos D+'),
                   (	'Glamer Costureira', 		'Rio de Janeiro', 		'Insuperável Moda');
                   
-- consultando os valores inseridos na tabela vendedores              
select * from Vendedor;

-- [10] inserindo valores na tabela Vendedor_Produto
insert into Vendedor_Produto (	idVendedor_fk,	idProduto_fk,	quantidade)
			values (			4, 				1,				3),				
                   (			4, 				3, 				2),
                   (			3, 				4, 				3),
                   (			3, 				5, 				8),
                   (			2, 				6,				10);

-- consultando os valores inseridos na tabela Vendedor_Produto       
select * from Vendedor_Produto;

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

                   
