-- [09] inserindo valores na tabela Vendedor
insert into Vendedor (razaoSocial, localidade, nomeFantasia)
			values ('Fernando Brinx', 'São Paulo', 'Over Happy Brinquedos'),
				   ('Antonio Personal', 'Minas Gerais', 'Suplementos Fit'),
                   ('Hildebrando Marceneiro', 'Bahia', 'Móveis Clássicos'),
                   ('Inovena Correia', 'Rio Grande do Sul', 'Eletrônicos D+'),
                   ('Glamer Costureira', 'Rio de Janeiro', 'Insuperável Moda');
                   
-- consultando os valores inseridos na tabela vendedores              
select * from Vendedor;