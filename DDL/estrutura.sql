
-- Script DDL: Estrutura do Banco de Dados

-- Tabela: CLIENTES
CREATE TABLE CLIENTES (
    CLIENTE_ID NUMBER NOT NULL PRIMARY KEY,
    NOME VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(100),
    TELEFONE VARCHAR2(15)
);

-- Tabela: QUARTOS
CREATE TABLE QUARTOS (
    QUARTO_ID NUMBER NOT NULL PRIMARY KEY,
    NUMERO VARCHAR2(10) NOT NULL,
    TIPO VARCHAR2(50),
    PRECO_DIARIA NUMBER(10,2) NOT NULL
);

-- Tabela: RESERVAS
CREATE TABLE RESERVAS (
    RESERVA_ID NUMBER NOT NULL PRIMARY KEY,
    CLIENTE_ID NUMBER NOT NULL,
    QUARTO_ID NUMBER NOT NULL,
    DATA_CHECKIN DATE NOT NULL,
    DATA_CHECKOUT DATE NOT NULL,
    STATUS VARCHAR2(50),
    FOREIGN KEY (CLIENTE_ID) REFERENCES USR_GESTAO_HOTEL.CLIENTES(CLIENTE_ID),
    FOREIGN KEY (QUARTO_ID) REFERENCES USR_GESTAO_HOTEL.QUARTOS(QUARTO_ID)
);

-- Tabela: PEDIDOS
CREATE TABLE PEDIDOS (
    PEDIDO_ID NUMBER NOT NULL PRIMARY KEY,
    CLIENTE_ID NUMBER NOT NULL,
    DATA_PEDIDO TIMESTAMP NOT NULL,
    TOTAL NUMBER(10,2),
    STATUS VARCHAR2(50),
    FOREIGN KEY (CLIENTE_ID) REFERENCES USR_GESTAO_HOTEL.CLIENTES(CLIENTE_ID)
);

-- Tabela: ITENS_PEDIDO
CREATE TABLE ITENS_PEDIDO (
    ITEM_PEDIDO_ID NUMBER NOT NULL PRIMARY KEY,
    PEDIDO_ID NUMBER NOT NULL,
    NOME_ITEM VARCHAR2(100) NOT NULL,
    QUANTIDADE NUMBER NOT NULL,
    PRECO_UNITARIO NUMBER(10,2) NOT NULL,
    FOREIGN KEY (PEDIDO_ID) REFERENCES USR_GESTAO_HOTEL.PEDIDOS(PEDIDO_ID)
);
