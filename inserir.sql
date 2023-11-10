USE Loja;

INSERT INTO Estado (Nome, UF)
VALUES
	('São Paulo', 'SP'),
    ('Minas Gerais', 'MG'),
    ('Amazonas', 'AM'),
    ('Rio de Janeiro', 'RJ');
    
INSERT INTO Municipio (Estado_ID, Nome, CodIBGE)
VALUES
	(1, 'São Paulo', 3550308),
    (2, 'Belo Horizonte', 3106200),
    (3, 'Manaus', 1302603),
    (4, 'Rio de Janeiro', 3304557);
    
INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
VALUES
	('Nome1', '00000000000','00000000', 'Rua X', '000', 1, '00000000', 1),
    ('Nome2', '00000000000','00000000', 'Rua Y', '000', 2, '00000000', 2),
    ('Nome3', '00000000000','00000000', 'Rua Z', '000', 3, '00000000', 3),
    ('Nome4', '00000000000','00000000', 'Rua A', '000', 4, '00000000', 4);

INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situacao) 
VALUES
	(1, 100001, '9999-12-31', '9999-12-31', 9999.99, '1'),
    (2, 100002, '9999-12-31', '9999-12-31', 9999.99, '2'),
    (3, 100003, '9999-12-31', '9999-12-31', 9999.99, '3'),
    (4, 100004, '9999-12-31', '9999-12-31', 9999.99, '1');
