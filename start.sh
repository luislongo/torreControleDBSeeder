#!/bin/bash

sleep 10

mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _empreendimentos --type json --jsonArray --file /collections/_empreendimentos.json
mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _insumos --type json --jsonArray --file /collections/_insumos.json
mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _objetosBIM --type json --jsonArray --file /collections/_objetosBIM.json
mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _orcamentos --type json --jsonArray --file /collections/_orcamentos.json
mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _planejamento --type json --jsonArray --file /collections/_planejamento.json
mongoimport --drop --host mongodb --port 27017 --username admin --password admin --authenticationDatabase admin --db torre-controle --collection _quantitativos --type json --jsonArray --file /collections/_quantitativos.json
