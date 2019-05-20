FROM golang:alpine

ENV TERRAFORM_VERSION=0.11.14

RUN apk add curl git gcc g++ && \
    curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin

COPY ./mycode /go/src/mycode
COPY ./run.sh /run.sh
ENTRYPOINT ["/run.sh"]
