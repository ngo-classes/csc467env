FROM spark:3.5.2-java17-python3

USER root

ENV PIP_ROOT_USER_ACTION=ignore

COPY code-server/config.yaml /
COPY start-master.sh /

ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_LOG=/spark/logs

RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    mkdir -p /root/.config/code-server/ && \
    cp /config.yaml /root/.config/code-server/config.yaml && \
    rm /config.yaml && \
    apt clean && \
    pip3 install jupyter jupyter-book flask && \
    pip3 install numpy pandas nltk matplotlib scikit-learn && \
    pip3 install mkdocs-material markdown-include mkdocs-table-reader-plugin mkdocs-jupyter


EXPOSE 8080 7077 6066 8888 4040 9009 5001 8088

CMD ["/bin/bash", "/start-master.sh"]
