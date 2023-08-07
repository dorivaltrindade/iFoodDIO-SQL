-- [06] inserindo valores na tabela Fornecedor
insert into Fornecedor (cnpj, razaoSocial, contato)
			values ('75733253000173', 'Brinquedos Legais', '11939161260'),
				   ('73249792000108', 'Suplementos Forte', '11995849852'),
                   ('31283792000182', 'Móveis Sob Medida', '11946094753'),
                   ('17581217000135', 'Eletrônicos TecnoCell', '11911958570'),
                   ('12594512000102', 'Moda Moderna', '11938904888');
                   
-- consultando os valores inseridos na tabela Fornecedor              
select * from Fornecedor;