FROM --platform=linux/amd64 quay.io/ansible/awx-ee:24.2.0

USER root
WORKDIR /runner

COPY requirements.yml /tmp/requirements.yml

RUN ansible-galaxy collection install -r /tmp/requirements.yml
