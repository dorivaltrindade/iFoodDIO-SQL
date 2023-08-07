use ecommerce_db;

-- [01] Recuperações simples com SELECT statement:
				select * from Cliente;
				select * from Tipo;
				select * from Produto;
				select * from Localidade;  
				select * from Produto_Estoque;
				select * from Fornecedor_Produto;
				select * from Pagamento;
				select * from Vendedor;
				select * from Vendedor_Produto;
				select * from Pedido;
				select * from Item;
				select * from Entrega;

-- [02] Filtros com WHERE statement:
				select * from Cliente where idCliente=5;

-- [03] Crie expressões para gerar atributos derivados (calculados com base nos dados registrados):
		-- (a) Posição financeira do estoque:
				select concat('R$ ',format(sum( Produto.valor * Produto_Estoque.quantidade ), 2)) as 'Posição Financeira do Estoque:'
				from Produto_Estoque join Produto on Produto_Estoque.idProdutoEstoque_fk = Produto.idProduto;

		-- (b) Quantidade de clientes que fizeram pedidos:
				Select count(Cliente.idCliente) as 'Número de clientes que fizeram pedidos:'
				from Pedido join Cliente on Cliente.idCliente = Pedido.idPedidoCliente_fk;

-- [04] Defina ordenações dos dados com ORDER BY
		-- (a) Estoque ordenado pelo valor dos produtos, do maior para o menor:
				select * from Produto order by valor desc;
                
		-- (b) Relação de clientes em ordem de data de nascimento:
				select * from Cliente order by dataNascimento;
                
-- [05] Condições de filtros aos grupos – HAVING Statement:
		-- Contagem de pedidos por categoria cujo número de pedidos foi de 2 para cima:
				SELECT Produto.categoria,COUNT(*) AS 'Nº de Pedidos'
				FROM Item
				join Produto on Produto.idProduto = Item.idItemProduto_fk
				group by Produto.categoria
				having count(*)>=2;
            
-- [06] Crie junções (JOIN statement) entre tabelas para fornecer uma perspectiva mais complexa dos dados:
				-- Nos itens de [03] a [06] tais construções foram aplicadas.
        
-- [07] Pedidos e clientes:
		-- (a) Número de pedidos por cliente:
				select concat(Cliente.pNome,' ',Cliente.nomeMeio,' ',Cliente.sobrenome) as 'Nome Completo', count(*) as 'Nº de Pedidos'
				from Pedido
				join Cliente on Pedido.idPedidoCliente_fk = idCliente
				group by Cliente.idCliente;
                
		-- (b) Número de itens por cliente:
				select concat(Cliente.pNome,' ',Cliente.nomeMeio,' ',Cliente.sobrenome) as 'Nome Completo', count(*) as 'Nº de Itens'
                from Item
                join Pedido on Item.idItemPedido_fk = Pedido.idPedido
                join Cliente on Pedido.idPedidoCliente_fk = Cliente.idCliente
                group by Cliente.idCliente;
                
-- [08] Vendedores que negociaram produtos como se fossem fornecedores:
				select Vendedor.nomeFantasia , Produto.nomeProduto, Produto.descricao, Vendedor_Produto.quantidade
                from Vendedor
                join Vendedor_Produto on Vendedor.idVendedor = Vendedor_Produto.idVendedor_fk
                join Produto on Vendedor_Produto.idProduto_fk = Produto.idProduto;
                -- group by Vendedor.idVendedor;
                
-- [09] Relação de fornecedores + produtos + estoques + localidade:
				select Fornecedor.razaoSocial as Fornecedor, Produto.nomeProduto as Produto, Produto_Estoque.quantidade as Quantidade, Localidade.cidade as Cidade
				from Fornecedor
				join Fornecedor_Produto on Fornecedor.idFornecedor = Fornecedor_Produto.idFornecedor_fk
				join Produto on Fornecedor_Produto.idProduto_fk = Produto.idProduto
				join Produto_Estoque ON Produto.idProduto = Produto_Estoque.idProdutoEstoque_fk
				join Localidade ON Produto_Estoque.idLocalidadeEstoque_fk = Localidade.idLocalidade; 
                
-- [10] Relação de nomes dos fornecedores e nomes dos respectivos produtos fornecidos:
				select Fornecedor.razaoSocial as Fornecedor, Produto.nomeProduto as Produto
				from Fornecedor
				join Fornecedor_Produto on Fornecedor.idFornecedor = Fornecedor_Produto.idFornecedor_fk
				join Produto on Fornecedor_Produto.idProduto_fk = Produto.idProduto;