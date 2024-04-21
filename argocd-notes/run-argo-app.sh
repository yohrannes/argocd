#!/bin/bash

# Instalando repo no cluster

argocd app create port-dev-app \
--repo https://github.com/yohrannes/website-portifolio-argocd.git \
--path . --dest-server $(argocd cluster list | awk '{print $1}' | head -n 2 | tail -n 1) \
--dest-namespace yohapp

# Listando status

argocd app list
