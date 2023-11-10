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
	('Tarsila do Amaral', '62617278311','984649090', 'Rua Safira', '10', 1, '69000030', 1),
    ('Candido Portinari', '82938162839','987263718', 'Rua Esmeralda', '55', 2, '80000010', 2),
    ('Romero Britto', '28371643527','988371821', 'Rua Ametista', '2', 3, '45000220', 3),
    ('Anita Malfatti', '82893019281','992832732', 'Rua Diamante', '12221', 4, '22000009', 4);

INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situacao) 
VALUES
	(1, 100001, '2023-10-22', '2023-11-22', 1000.21, '1'),
    (2, 100002, '2023-09-02', '2023-10-02', 500.39, '2'),
    (3, 100003, '2023-06-12', '2023-06-27', 200.00, '3'),
    (4, 100004, '2023-10-09', '2023-11-09', 29000.55, '1');
