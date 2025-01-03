FROM base:latest

COPY code-server/config.yaml /root/.config/code-server/config.yaml
COPY start-master.sh /

ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080
ENV SPARK_MASTER_LOG=/spark/logs

EXPOSE 8080 7077 6066 8888 4040 9009 5001 8088 8000

CMD ["/bin/bash", "/start-master.sh"]
