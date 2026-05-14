#!/bin/bash

VERMELHO='\033[0;31m'
VERDE='\033[0;32m'
NC='\033[0m' # Sem Cor

echo -e "${VERDE}--- [INICIANDO DEPLOY SEGURO: PROJETO TOSHIRO SHIBAKITA] ---${NC}"

# 1. CRIAÇÃO DE REDE ISOLADA
#Essencial para que os containers se comuniquem sem expor o DB à internet 
NOME_REDE="rede-cyber-toshiro"

if [ ! "$(docker network ls | grep $NOME_REDE)" ]; then
  echo "Criando rede isolada: $NOME_REDE..."
  docker network create $NOME_REDE
else
  echo "Rede $NOME_REDE já existe."
fi

# 2. SUBIDA DO BANCO DE DADOS (BLINDADO)
DB_CONTAINER="db-toshiro"
DB_SENHA="SenhaSegura123"

echo "Subindo Banco de Dados (MySQL)..."
docker run -d \
  --name $DB_CONTAINER \
  --network $NOME_REDE \
  -e MYSQL_ROOT_PASSWORD=$DB_SENHA \
  -v vol-db-toshiro:/var/lib/mysql \
  mysql:8.0

# CONSTRUÇÃO DA IMAGEM DA APLICAÇÃO (HARDENING)
Certifica-te de que ele usa um User Non-Root 
echo "Construindo imagem da aplicação..."
docker build -t app-toshiro:latest .

# 4. DEPLOY DA APLICAÇÃO
# Exposição mínima: Apenas a porta 80 da App é aberta para o host 
APP_CONTAINER="app-toshiro-instancia"

echo "Subindo aplicação e conectando ao banco..."
docker run -d \
  --name $APP_CONTAINER \
  --network $NOME_REDE \
  -p 80:80 \
  -e DB_HOST=$DB_CONTAINER \
  -e DB_PASSWORD=$DB_SENHA \
  app-toshiro:latest

# 5. VERIFICAÇÃO DE SAÚDE
echo -e "${VERDE}--- STATUS DO AMBIENTE ---${NC}"
docker ps --filter "name=toshiro"

echo -e "\n${VERDE}Deploy finalizado com sucesso!${NC}"
echo "Nota de Segurança: O banco de dados está isolado na rede: $NOME_REDE"
