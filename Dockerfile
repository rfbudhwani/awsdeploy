FROM ubuntu

RUN apt-get --yes  update && \ 
    apt-get --yes  install wget unzip && \
    wget https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip && \
    unzip terraform*.zip && \
    mv terraform /usr/bin