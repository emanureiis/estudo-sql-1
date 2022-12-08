SELECT * FROM tabela_de_clientes;

/* Para cada ESTADO, soma o tatal de LIMITE_DE_CREDITO*/
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

/* Para cada EMBALAGEM, pega o MAIOR preço */
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_Produtos GROUP BY EMBALAGEM;

/* Conta e exibe a QUANTIDADE total de cada EMBALAGEM */
SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;

/* SOMA o total de LIMITE_DE_CREDITO apenas da CIDADE "Rio de Janeiro" e agrupa por BAIRRO*/
SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' GROUP BY BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
/* Agrupa a partir de mais de um critério */
GROUP BY ESTADO, BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
/* Além de agrupar também ordenas os dados */
GROUP BY ESTADO, BAIRRO
ORDER BY BAIRRO;

