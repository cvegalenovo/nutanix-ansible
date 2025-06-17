FROM quay.io/ansible/awx-ee:24.2.0

WORKDIR /runner

# Copia la colección local de Nutanix
COPY collections /usr/share/ansible/collections

# (Opcional) Puedes también copiar tus playbooks, inventories, etc.
# COPY playbooks /runner/project
