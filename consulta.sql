USE Loja;

CREATE VIEW ContasNaoPagas AS
SELECT CR.ID AS 'ID da Conta a receber',
	C.Nome AS 'Nome do Cliente',
    C.CPF AS 'CPF do Cliente',
    CR.DataVencimento AS 'Data de Vencimento',
    CR.Valor AS 'Valor da Conta'
FROM ContaReceber CR 
INNER JOIN Cliente C ON CR.Cliente_ID = C.ID
WHERE CR.Situacao = '1';

SELECT * FROM ContasNaoPagas;