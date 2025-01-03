FROM spark:3.5.2-java17-python3

USER root

RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    apt clean && \
    pip3 install jupyter jupyter-book flask numpy pandas nltk matplotlib scikit-learn && \
    pip3 install mkdocs-material markdown-include mkdocs-table-reader-plugin mkdocs-jupyter

