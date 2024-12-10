
-- Script de Testes: Verificação das Tabelas e Relacionamentos


SELECT table_name FROM user_tables;

SELECT * FROM CLIENTES;

SELECT * FROM QUARTOS;

SELECT * FROM RESERVAS;

SELECT * FROM PEDIDOS;

SELECT * FROM ITENS_PEDIDO;

SELECT r.RESERVA_ID, c.NOME, q.NUMERO, r.DATA_CHECKIN, r.DATA_CHECKOUT, r.STATUS
FROM RESERVAS r
JOIN CLIENTES c ON r.CLIENTE_ID = c.CLIENTE_ID
JOIN QUARTOS q ON r.QUARTO_ID = q.QUARTO_ID;

SELECT p.PEDIDO_ID, p.DATA_PEDIDO, i.NOME_ITEM, i.QUANTIDADE, i.PRECO_UNITARIO, (i.QUANTIDADE * i.PRECO_UNITARIO) AS TOTAL_ITEM
FROM PEDIDOS p
JOIN ITENS_PEDIDO i ON p.PEDIDO_ID = i.PEDIDO_ID;

SELECT p.PEDIDO_ID, p.TOTAL, SUM(i.QUANTIDADE * i.PRECO_UNITARIO) AS TOTAL_CALCULADO
FROM PEDIDOS p
JOIN ITENS_PEDIDO i ON p.PEDIDO_ID = i.PEDIDO_ID
GROUP BY p.PEDIDO_ID, p.TOTAL;
