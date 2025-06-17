FROM --platform=linux/amd64 quay.io/ansible/awx-ee:2.14

WORKDIR /runner

# Copia la colección local de Nutanix
COPY collections /usr/share/ansible/collections

# (Opcional) Puedes también copiar tus playbooks, inventories, etc.
# COPY playbooks /runner/project
