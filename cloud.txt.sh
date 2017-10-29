#! /bin/sh

cat <<EOF
#cloud-config
groups:
  - deploy
users:
  - name: $(whoami)
    ssh-authorized-keys:
      - $(cat ~/.ssh/id_rsa.pub)
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    groups:
      - sudo
      - deploy
      - www-data
    shell: /bin/bash
EOF
