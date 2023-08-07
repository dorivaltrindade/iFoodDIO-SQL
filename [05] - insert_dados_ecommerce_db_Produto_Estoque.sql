-- [05] inserindo valores na tabela Estoque
insert into Produto_Estoque (idProdutoEstoque_fk, IdLocalidadeEstoque_fk, quantidade)
			values (1,1,120), 
				   (2,2, 100), 
                   (3,3,40), 
                   (4,4,90), 
                   (5,5,150),
                   (6,1,30);

-- consultando os valores inseridos na tabela estoquesProdutos               
select * from Produto_Estoque;