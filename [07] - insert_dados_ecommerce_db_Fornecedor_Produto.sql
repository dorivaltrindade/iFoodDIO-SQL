-- [07] inserindo valores na tabela Forncedor_Produto
insert into Fornecedor_Produto (idFornecedor_fk, idProduto_fk, quantidade)
			values (4, 1, 120),
				   (6, 2, 100),
                   (4, 3, 40),
                   (3, 4, 90),
                   (6, 5, 150),
                   (2, 6, 30);		


-- consultando os valores inseridos na tabela produtosFornecedores             
select * from Fornecedor_Produto;