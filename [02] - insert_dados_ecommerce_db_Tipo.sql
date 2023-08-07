-- inserindo valores na tabela Tipo
insert into Tipo (numero, tipo,idTipoCliente_fk) 
			  values (123456789112231, 	'CNPJ',	1),
					 (12345678910, 		'CPF',	2),
                     (111456789110002, 	'CNPJ',	3),
                     (12345678912, 		'CPF',	4),
                     (222456789110003, 	'CNPJ',	5),
                     (33344455570, 		'CPF',	6);

select * from Tipo;