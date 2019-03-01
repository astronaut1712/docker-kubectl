FROM google/cloud-sdk:alpine

RUN gcloud components install kubectl

RUN which kubectl

CMD [ "kubectl" ]
