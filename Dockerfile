FROM elasticsearch:2.2

WORKDIR /usr/share/elasticsearch

RUN plugin install license
RUN plugin install marvel-agent
RUN plugin install analysis-kuromoji
RUN plugin install mobz/elasticsearch-head

COPY config ./config
