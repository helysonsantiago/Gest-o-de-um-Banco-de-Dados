
# Projeto: Banco de Dados de Gerenciamento de Entidades

## 🛠️ Objetivo do Projeto
Este projeto tem como objetivo implementar um banco de dados robusto para gerenciar as principais entidades e relacionamentos de um sistema abrangente. O banco de dados foi projetado para atender às necessidades de cadastro, rastreamento e gerenciamento de clientes, campanhas de marketing, estudantes, cursos, propriedades e muito mais.

---

## 📂 Estrutura do Repositório

```plaintext
/
├── DDL/
│   └── estrutura.sql       # Script DDL para criação das tabelas e restrições
├── DML/
│   └── dados.sql           # Script DML para inserção de dados representativos
├── README.md               # Documentação do projeto
```

---

## 🚀 Passos para Execução

1. **Pré-requisitos**
   - Banco de Dados Oracle instalado e configurado.
   - Ferramenta para execução dos scripts, como SQL*Plus ou SQL Developer.

2. **Configuração**
   - Clone este repositório no seu ambiente local.
   - Abra os scripts `estrutura.sql` e `dados.sql` nas ferramentas recomendadas.

3. **Execução**
   ### Passo 1: Criar as Tabelas
   Execute o script `estrutura.sql` localizado na pasta `DDL/` para criar as tabelas e definir as restrições.

   ### Passo 2: Inserir os Dados
   Execute o script `dados.sql` localizado na pasta `DML/` para popular as tabelas com dados representativos.

4. **Validação**
   - Utilize consultas SQL para verificar a criação correta das tabelas.
   - Valide os dados inseridos com consultas como `SELECT * FROM <nome_da_tabela>`.

---

## 🔍 Descrição das Entidades e Relacionamentos

### **Principais Tabelas**
- **CLIENTES:** Armazena informações dos clientes, incluindo dados de contato e endereço.
- **CAMPANHAS:** Gerencia campanhas de marketing, com datas e orçamentos.
- **INTERAÇÕES:** Registra as interações dos clientes com campanhas, detalhando tipo e métrica.
- **ESTUDANTES:** Dados de estudantes matriculados em cursos.
- **CURSOS:** Gerencia os cursos oferecidos, com suas descrições e duração.
- **PROPRIEDADES:** Controle de propriedades disponíveis para aluguel ou venda.
- **VIAGENS:** Registro de transporte, incluindo rotas e status.

### **Relacionamentos**
- As tabelas são conectadas por chaves primárias e estrangeiras para garantir a integridade dos dados.
- Exemplo: A tabela **INTERAÇÕES** possui chaves estrangeiras para **CLIENTES** e **CAMPANHAS**.

---

## 📘 Regras de Negócio

- **Restrições de Integridade:** Cada tabela possui restrições para garantir que os dados sejam consistentes, como `NOT NULL`, `UNIQUE` e relacionamentos por meio de chaves estrangeiras.
- **Coerência dos Dados:** Os dados inseridos seguem as regras de negócio para simular um ambiente realista.
- **Performance:** Índices foram configurados para melhorar a performance das consultas.

---

## 📞 Suporte
Em caso de dúvidas ou problemas, entre em contato com o administrador do projeto.

