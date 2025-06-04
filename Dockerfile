FROM quay.io/ansible/awx-ee:2.15

COPY requirements.yml /tmp/requirements.yml
RUN ansible-galaxy collection install -r /tmp/requirements.yml
