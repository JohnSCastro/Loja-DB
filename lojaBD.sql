	CREATE DATABASE IF NOT EXISTS Loja;
    
    USE Loja;
    
    	CREATE TABLE Estado (
		ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Nome VARCHAR(80) NOT NULL,
        UF CHAR(2)    
    );
    
    	CREATE TABLE Municipio (
        ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Estado_ID INT,
        Nome VARCHAR(80) NOT NULL,
        CodIBGE INT NOT NULL,
        FOREIGN KEY (Estado_ID) REFERENCES Estado(ID)
	);
    
    
        CREATE TABLE Cliente (
		ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Nome VARCHAR(80) NOT NULL,
        CPF CHAR(11) NOT NULL,
        Celular CHAR(11),
        EndLogradouro VARCHAR(100) NOT NULL,
        EndNumero VARCHAR(10) NOT NULL,
        EndMunicipio INT NOT NULL,
        EndCEP CHAR(8),
        Municipio_ID INT,
        FOREIGN KEY (Municipio_ID) REFERENCES Municipio(ID)
	);
    
    
    CREATE TABLE ContaReceber (
		ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
		Cliente_ID INT,
		FaturaVendaID INT,
		DataConta DATE NOT NULL,
		DataVencimento DATE NOT NULL,
		Valor DECIMAL(18,2) NOT NULL,
		Situacao ENUM('1', '2', '3') NOT NULL,
        FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
    );
    
    
    SELECT * FROM ContaReceber;
    SELECT * FROM Cliente;
    SELECT * FROM Municipio;
    SELECT * FROM Estado;