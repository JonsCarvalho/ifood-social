# Resumo

O IfoodSocial é uma plataforma desenvolvida para auxiliar a comunidade interna da UESC e também a comunidade externa, oferecendo um espaço para cadastro de empreendedores locais e um portal de acesso para clientes. A plataforma visa fomentar o comércio local, facilitando a conexão entre pequenos empreendedores e seus potenciais clientes de maneira prática e eficiente.

## Equipe

- Jônatas Moreira de Carvalho
- Beatriz Pereira Aragão

## Objetivo do Projeto

O objetivo do IfoodSocial é criar uma plataforma inclusiva e acessível que promova o empreendedorismo na comunidade da UESC e seu entorno. O projeto busca:

Facilitar o cadastro e a divulgação de pequenos empreendedores.
Proporcionar uma interface amigável para que clientes possam acessar e encontrar produtos e serviços oferecidos por esses empreendedores.
Incentivar a economia local, promovendo o crescimento e a sustentabilidade dos negócios da comunidade.
Criar uma rede de apoio e colaboração entre os empreendedores, fortalecendo a comunidade como um todo.

## Funcionalidades Principais

- **Listagem de produtos**: Lista todos os produtos.
- **Listagem de categorias**: Lista todas as categorias.
- **Adição de produtos**: Possibilita a criação de produtos.

## Configuração Inicial

## Pré-requisitos

- MySql
- Node.js e npm
- Flutter
- Sdk android preferencialmente (cross-platform)

### Backend (Node.js)

1. **Instalar dependências:**

    ```sh
    npm install
    ```

2. **Iniciar ambiente:**

    ```sh
    npm start
    ```

3. **Inicialize o banco MySQL:**

    - Crie o banco de dados manualmente:

        ```sql
        SOURCE caminho/para/02C - IFoodSocial - Script DDL - Modelo de Dados.sql;
        SOURCE caminho/para/02D - IFoodSocial - Script DML - Carga de Dados.sql;
        ```

4. **Configure o arquivo de settings do Node.js:**

    No arquivo `back/.env`, configure as informações do banco de dados:

    ```
    PORT=3000
    DB_HOST=localhost
    DB_USER=user
    DB_PASS=pass
    DB_NAME=IFOODSOCIAL
    ```

### Frontend (Flutter)

1. **Instale manualmente o sdk do android e o flutter:**

2. **Instale as dependências do projeto:**

    ```sh
    flutter pub get
    ```

3. **Escolha o device e inicie o app:**

    ```sh
    flutter run
    ```

## Conclusão da execução

Seguindo esses passos o backend em node.js já estará rodando no ambiente local. É necessário verificar que, caso esteja iniciando o app em um emulador android, o localhost pode ser um pouco diferente. É comum usármos o endereço local: 10.0.2.2

## Modelo de Dados

### Tabelas Essenciais

- **PRODUTO**: Informações sobre os produtos disponíveis.
- **CATEGORIA**: Tabela que armazena todas as categorias de produtos.
- **BAIRRO, CIDADE, LOCALIDADE**: Conjunto de tabelas que definem o endereço.
- **EMPREENDIMENTO**: Tabela que definem o empreendimento.

