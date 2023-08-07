-- [10] inserindo valores na tabela Vendedor_Produto
insert into Vendedor_Produto (idVendedor_fk, idProduto_fk, quantidade)
			values (4, 1, 3),				
                   (4, 3, 2),
                   (3, 4, 3),
                   (3, 5, 8),
                   (2, 6,10);

-- consultando os valores inseridos na tabela produtosVendedores             
select * from Vendedor_Produto;