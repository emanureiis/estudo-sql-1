
SELECT * FROM tabela_de_produtos;

/* A partir de um critério, realiza a ordenação em ordem crescente */
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;

/* A partir de um critério, realiza a ordenação em ordem decrescente */
SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;
   
/* A partir de mais de um critério, realiza a ordenação */
SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO ASC;
