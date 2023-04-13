# AppRegistroVenda
Um aplicativo para auxiliares pequenos negócio a entender o seu público atendido

1. Definir a estrutura do banco de dados:
    1. Escolher o banco de dados local a ser utilizado (ex: SQLite).
    2. Definir as tabelas e campos necessários para armazenar as informações das vendas.
    3. Configurar o Firebase e definir a estrutura de dados para armazenar as informações das vendas.

2. Criar a tela principal com o formulário de cadastro de venda:
    1. Desenhar o layout da tela principal com os campos para tipo, preço, cor, código do cliente e hora.
    2. Implementar a validação dos campos do formulário.
    3. Adicionar um botão para salvar a venda.

3. Implementar a lógica para salvar as informações das vendas:
    1. Criar funções para salvar as informações das vendas no banco de dados local.
    2. Criar funções para salvar as informações das vendas no Firebase.
    3. Adicionar lógica para verificar a conexão com a internet e salvar os dados localmente caso não haja conexão.

4. Criar a segunda aba na tela principal:
    1. Desenhar o layout da segunda aba com as informações das vendas do dia.
    2. Criar funções para recuperar as informações das vendas do dia do banco de dados local.
    3. Exibir as informações das vendas do dia na segunda aba.

5. Implementar o uso de Cubit:
    1. Adicionar a dependência do Cubit ao projeto.
    2. Criar Cubits para gerenciar o estado das telas do aplicativo.
    3. Refatorar o código para usar os Cubits criados.
