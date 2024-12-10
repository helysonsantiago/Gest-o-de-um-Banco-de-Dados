
# Projeto: Banco de Dados de Gerenciamento de Entidades

## Objetivo
Este projeto tem como objetivo implementar um banco de dados que gerencie entidades e relacionamentos de um sistema complexo. Entre as funcionalidades estão o cadastro e gerenciamento de clientes, campanhas de marketing, interações, estudantes, professores, cursos, veículos, rotas, entre outros.

---

## Estrutura do Repositório

```plaintext
/
├── DDL/
│   └── estrutura.sql       # Script DDL para criação das tabelas e restrições
├── DML/
│   └── dados.sql           # Script DML para inserção de dados representativos
├── README.md               # Documentação do projeto
```

---

## Como Executar os Scripts

1. **Requisitos:**
   - Banco de Dados Oracle configurado.
   - Ferramenta de gerenciamento, como SQL*Plus ou SQL Developer.

2. **Execução:**

   ### Passo 1: Criar as Tabelas
   Execute o script `estrutura.sql` localizado na pasta `DDL/` para criar as tabelas e definir as restrições no banco de dados Oracle.

   ### Passo 2: Inserir os Dados
   Execute o script `dados.sql` localizado na pasta `DML/` para inserir dados representativos no banco de dados.

3. **Validação:**
   Após a execução dos scripts, utilize consultas SQL para validar a criação e o preenchimento das tabelas.

---

## Detalhes das Entidades e Relacionamentos
O banco de dados contém tabelas para gerenciar clientes, campanhas, interações, estudantes, professores, cursos, veículos, rotas, propriedades, entre outros. Cada entidade foi projetada com restrições específicas para garantir a integridade dos dados.

Para mais detalhes, consulte os arquivos `estrutura.sql` e `dados.sql`.
