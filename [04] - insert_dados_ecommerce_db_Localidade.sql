-- [04] inserindo valores na tabela Localidade
insert into Localidade (cidade, CEP)
			values ('São Paulo',		'01031970'),				
                   ('Belo Horizonte',	'30161970'),
                   ('Curitiba',			'80001970'),
                   ('Florianópolis',	'88010970'),
                   ('Rio de Janeiro',	'20010974');

-- consultando os valores inseridos na tabela estoquesLocalidades             
select * from Localidade;  