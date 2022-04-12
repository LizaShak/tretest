FROM debian:stretch-slim

ARG BUNDLE_DIR

RUN apt-get update && apt-get install -y ca-certificates


RUN apt-get update && apt-get install -y wget unzip && \
 wget https://releases.hashicorp.com/terraform/1.1.7/terraform_1.1.7_linux_amd64.zip && \
 unzip terraform_1.1.7_linux_amd64.zip -d /usr/bin && \
 rm terraform_1.1.7_linux_amd64.zip
COPY terraform/ $BUNDLE_DIR/terraform/
RUN cd $BUNDLE_DIR/terraform && terraform init -backend=false

# exec mixin has no buildtime dependencies


COPY . $BUNDLE_DIR
RUN rm $BUNDLE_DIR/porter.yaml
RUN rm -fr $BUNDLE_DIR/.cnab
COPY .cnab /cnab
WORKDIR $BUNDLE_DIR
CMD ["/cnab/app/run"]