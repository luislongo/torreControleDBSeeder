## torreControleDBSeeder

Projeto com o estado inicial padrão do banco de dados para a torre de controle

## Stack

- O projeto utiliza uma imagem [Docker](https://www.docker.com/) para popular os dados.
- Os dados são populados em uma imagem local do [MongoDB](https://www.mongodb.com/)
- As coleções de dados estão armazenadas em /collections em formato [JSON](https://www.json.org/json-en.html)
- A importação é feita por meio do script /start.sh

## Funcionamento

### Popular o banco de dados

Com o container torreControleAPI já rodando, executar o comando: ]

```bash
# Para popular o banco de dados
$ docker-compose up
```

### Para adicionar uma nova coleção:

- Adicionar o arquivo JSON em /collections
- No Dockerfile, adicionar o comando para copiar o arquivo para dentro do container:
```bash
$ COPY collections/<NOME DO ARQUIVO>.json /collections/<NOME DO ARQUIVO>.json
```
- No script /start.sh, adicionar o comando para importar o arquivo .json no MongoDB
```bash
$ mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection <NOME DA COLLECTION> --type json --jsonArray --file /collections/<NOME DO ARQUIVO>.json
```

### Pontos de atenção

- O container torreControleAPI já deve estar rodando ao executar o comando
- O commando apaga dados previamente disponíveis na collection. Caso deseje apenas atualizar os dados, alterar o comando de importaçao de --drop para --upsert
- Considera que o banco esteja rodando na porta 27017

