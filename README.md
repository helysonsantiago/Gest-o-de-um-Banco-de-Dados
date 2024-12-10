
# Gestão de Hotéis e Restaurantes

## Criadores
- **Luiz Felipe Rocha**
- **Helyson Santiago**

---

## Descrição do Projeto
Este projeto visa a criação e a gestão de um banco de dados para hotéis e restaurantes, cobrindo operações essenciais como:
- Registro e consulta de clientes.
- Controle de reservas de quartos.
- Gestão de pedidos e itens consumidos no restaurante.
O banco de dados foi modelado com base no Modelo Físico de Dados fornecido e desenvolvido utilizando o Oracle.

---

## Estrutura do Banco de Dados
O banco de dados contém as seguintes tabelas:

### **1. CLIENTES**
- **Descrição:** Armazena informações dos clientes cadastrados.
- **Colunas:**
  - `CLIENTE_ID` (PK): Identificador único.
  - `NOME`: Nome do cliente (obrigatório).
  - `EMAIL`: Email do cliente.
  - `TELEFONE`: Telefone para contato.

### **2. QUARTOS**
- **Descrição:** Detalhes dos quartos disponíveis no hotel.
- **Colunas:**
  - `QUARTO_ID` (PK): Identificador único do quarto.
  - `NUMERO`: Número do quarto (obrigatório).
  - `TIPO`: Tipo do quarto (Standard, Suíte, etc.).
  - `PRECO_DIARIA`: Valor da diária do quarto (obrigatório).

### **3. RESERVAS**
- **Descrição:** Registra as reservas feitas pelos clientes.
- **Colunas:**
  - `RESERVA_ID` (PK): Identificador único da reserva.
  - `CLIENTE_ID` (FK): Relacionado a `CLIENTES`.
  - `QUARTO_ID` (FK): Relacionado a `QUARTOS`.
  - `DATA_CHECKIN`: Data de entrada no quarto.
  - `DATA_CHECKOUT`: Data de saída do quarto.
  - `STATUS`: Status da reserva (Confirmada, Cancelada, etc.).

### **4. PEDIDOS**
- **Descrição:** Registra os pedidos feitos pelos clientes no restaurante.
- **Colunas:**
  - `PEDIDO_ID` (PK): Identificador único do pedido.
  - `CLIENTE_ID` (FK): Relacionado a `CLIENTES`.
  - `DATA_PEDIDO`: Data e hora do pedido.
  - `TOTAL`: Valor total do pedido.
  - `STATUS`: Status do pedido (Pago, Pendente, etc.).

### **5. ITENS_PEDIDO**
- **Descrição:** Detalha os itens associados a cada pedido.
- **Colunas:**
  - `ITEM_PEDIDO_ID` (PK): Identificador único do item do pedido.
  - `PEDIDO_ID` (FK): Relacionado a `PEDIDOS`.
  - `NOME_ITEM`: Nome do item consumido.
  - `QUANTIDADE`: Quantidade do item consumido.
  - `PRECO_UNITARIO`: Valor unitário do item.

---

## Relacionamentos
- **CLIENTES → RESERVAS:** Um cliente pode ter várias reservas.
- **QUARTOS → RESERVAS:** Um quarto pode ser reservado por vários clientes (em tempos diferentes).
- **CLIENTES → PEDIDOS:** Um cliente pode realizar vários pedidos.
- **PEDIDOS → ITENS_PEDIDO:** Um pedido pode conter vários itens.

---

## Instruções de Uso

### **Requisitos**
- Oracle Database instalado.
- Ferramenta para executar scripts SQL, como SQL*Plus ou SQL Developer.

### **Execução dos Scripts**
1. **Criação do Banco de Dados:**
   - Execute o arquivo `estrutura.sql` localizado na pasta `DDL/` para criar as tabelas e suas restrições.
   - Exemplo de comando:
     ```sql
     @estrutura.sql
     ```
2. **Inserção de Dados Representativos:**
   - Execute o arquivo `dados.sql` localizado na pasta `DML/` para inserir os dados iniciais.
   - Exemplo de comando:
     ```sql
     @dados.sql
     ```

3. **Teste e Validação:**
   - Utilize o script `test_script.sql` para validar as tabelas, os relacionamentos e os dados inseridos.
   - Exemplo de comando:
     ```sql
     @test_script.sql
     ```

---

## Estrutura do Repositório

```
/DDL/
  estrutura.sql  -- Script para criar as tabelas e definições do banco de dados.
/DML/
  dados.sql      -- Script para inserir dados representativos nas tabelas.
test_script.sql  -- Script para testar a integridade e os relacionamentos do banco.
README.md        -- Documentação detalhada do projeto.
```

---

## Notas Finais
O banco de dados foi projetado para simular operações essenciais de um hotel e restaurante, fornecendo uma base robusta e flexível para gerenciar clientes, reservas e pedidos. Qualquer dúvida ou sugestão de melhoria, entre em contato com os criadores do projeto.

**Luiz Felipe Rocha e Helyson Santiago**
