select * from tabela_de_vendedores;
select * from notas_fiscais;

/* NOTAS FISCAIS DE CADA VENDEDOR */
/* Informando quais tabelas queremos associar a partir de um campo comum */
select * from tabela_de_vendedores A /* Informando tabela A */
inner join  notas_fiscais B /* Informando tabela B */
on A.MATRICULA = B.MATRICULA; /* Campo incomum entre as tableas */

/* QTD DE NOTAS FISCAIS ASSOCIADAS A CADA VENDEDOR */
select A.MATRICULA, A.NOME, COUNT(*)
from tabela_de_vendedores A
inner join notas_fiscais B 
on A.MATRICULA = B.MATRICULA
group by A.MATRICULA, A.NOME;