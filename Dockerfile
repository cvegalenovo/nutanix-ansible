FROM --platform=linux/amd64 quay.io/ansible/awx-ee:24.2.0

WORKDIR /runner

# Instala el cliente de Nutanix como root sin usar cache
USER root
RUN pip3 install --no-cache-dir ntnx-prism-py-client

# Copia la colección local de Nutanix
COPY collections /usr/share/ansible/collections

# (Opcional) Puedes también copiar tus playbooks, inventories, etc.
# COPY playbooks /runner/project
