from maven:3.5-jdk-11-slim

RUN apt-get update && \
    apt-get install -y \
        bash \
        git \
        aws-cli \
        terraform \
        terragrunt \
	      expect \
	      expect-dev
