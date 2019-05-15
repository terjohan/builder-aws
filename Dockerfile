from debian:stretch-slim

RUN apt-get update && \
    apt-get install -y \
    	apt-utils \
        bash \
        git \
        awscli \
	    expect \
      	expect-dev \
      	wget \
      	unzip


RUN wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.18.3/terragrunt_linux_amd64
	
RUN unzip terraform_0.11.13_linux_amd64.zip \
	&& mv terraform tmp/ \
	&& mv terragrunt_linux_amd64 /tmp/terragrunt \
	&& export PATH="$PATH:/tmp" \
	&& terraform --version \
	&& chmod 777 /tmp/terragrunt \
	&& terragrunt --version
