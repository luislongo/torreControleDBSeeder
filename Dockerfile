FROM mongo

COPY collections/_empreendimentos.json /collections/_empreendimentos.json
COPY collections/_insumos.json /collections/_insumos.json
COPY collections/_objetosBIM.json /collections/_objetosBIM.json
COPY collections/_orcamentos.json /collections/_orcamentos.json
COPY collections/_planejamento.json /collections/_planejamento.json
COPY collections/_quantitativos.json /collections/_quantitativos.json

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]