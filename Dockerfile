# Dockerfile
FROM ubuntu:2404

RUN apt-get update && apt-get install -y \
    curl wget vim jq yq lnav pipx tree \
    && curl -Lo /tmp/awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip \
    && unzip /tmp/awscliv2.zip -d /tmp && /tmp/aws/install \
    && rm -rf /var/lib/apt/lists/*

CMD ["sleep", "infinity"]