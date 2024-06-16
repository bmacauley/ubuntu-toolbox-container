# Dockerfile
FROM ubuntu:2404

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]