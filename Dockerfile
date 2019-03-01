FROM google/cloud-sdk:alpine

RUN apk add -U --no-cache libtool openssl curl tar gzip bash ca-certificates git

RUN curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x /usr/bin/kubectl

CMD [ "kubectl" ]
