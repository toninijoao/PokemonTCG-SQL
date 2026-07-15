# Projeto SQL - Bootcamp Bradesco GenAI, Dados & Cyber

Este repositório faz parte do Bootcamp **Bradesco - GenAI, Dados & Cyber**, no curso **"Utilizando Microsoft Copilot para escrever consultas SQL"**.  
O objetivo é praticar modelagem relacional, criação de *views* e consultas SQL utilizando um banco de dados de cartas Pokémon.

## Estrutura do Repositório

- `create_view.sql`  
  Contém o script para criação da *view* `view_cards_details`, que reúne todas as informações das cartas substituindo os IDs das chaves estrangeiras pelos nomes correspondentes (coleção, tipo e estágio).

- `selects.sql`  
  Contém diversas consultas SQL já prontas para explorar os dados da *view*, incluindo:
  - Seleção completa dos campos (sem usar `SELECT *`)
  - Top 10 Pokémon mais poderosos (baseado em dano)
  - Top 7 Pokémon com maior HP
  - Contagem de cartas por tipo
  - Contagem de cartas por estágio
  - Contagem de cartas por coleção
  - Listagem de fraquezas e resistências
  - Estatísticas agregadas (média de HP por tipo e por estágio)
