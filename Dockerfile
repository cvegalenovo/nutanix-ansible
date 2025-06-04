FROM quay.io/ansible/awx-ee:24.2.0

COPY requirements.yml /tmp/requirements.yml
RUN ansible-galaxy collection install -r /tmp/requirements.yml
