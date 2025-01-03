FROM spark:3.5.2-java17-python3

USER root

COPY start-worker.sh /

ENV SPARK_WORKER_WEBUI_PORT=8081
ENV SPARK_WORKER_LOG=/spark/logs
ENV SPARK_MASTER="spark://spark-master:7077"

RUN pip3 install flask && \
    pip3 install numpy pandas nltk matplotlib scikit-learn
    
EXPOSE 8081

CMD ["/bin/bash", "/start-worker.sh"]
