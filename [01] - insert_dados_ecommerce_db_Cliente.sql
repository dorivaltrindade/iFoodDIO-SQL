use ecommerce_db;

-- inserindo valores na tabela Cliente
insert into Cliente (pNome, nomeMeio, sobrenome, endereco, dataNascimento) 
			  values ('Antonio', 'C', 'Barbosa', 'Rua Alfredo Gnom, 100 - Paraíso - São Paulo/SP', '1985-05-25'),
					 ('Carlos', 'F', 'Setubal', 'Rua Carmelita, 42 - Nobresa - Salto/SP', '1978-01-20'),
                     ('Zilda', 'K', 'Klauss', 'Av. João Pessoa, 39-ap.602 - Ponta Grossa - Jaú/SP', '1997-02-17'),
                     ('Fernando', 'Val', 'Aranha', 'Praça José Bonifácio,78 altos  - Casa Amarela - Recife/PE', '1966-09-27'),
                     ('Benedita', 'P', 'Lima', 'Rua Rica, 38 - Jacarandá - Maceió/AL', '1987-09-10'),
                     ('Creuza', 'T', 'Sousa', 'Av. Pacaembu, 4503 - Fonte Alta - Palmas/TO', '1983-11-08');

select * from Cliente;
