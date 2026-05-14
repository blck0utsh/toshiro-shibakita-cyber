![Banner Dark Tech](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTRhbXNteHV0MzFvYjYxZzV4MGZpNndld2JpcjF3dW9vcjFtZWc1YiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/VrtvDMP4ajo5y/giphy.gif)


# 🚀 Automação de Deploy Seguro - Toshiro Shibakita (IaC)

Este projeto consiste em um script de automação de infraestrutura (**Infrastructure as Code**) desenvolvido para realizar o deploy de uma aplicação e banco de dados via Docker de forma totalmente segura e isolada.

## 📋 Sobre o Desafio

O objetivo do script é replicar o desafio do projeto **Toshiro Shibakita** da **DIO**, elevando o nível de segurança através do hardening de containers. O foco principal é garantir que o banco de dados permaneça invisível para a rede externa, protegendo a integridade do ambiente.

## ⚙️ Funcionalidades do Script

*   **Criação de Rede Isolada:** Cria uma rede `bridge` customizada para que os containers se comuniquem internamente sem expor o banco de dados à internet.
*   **Hardening de Banco de Dados:** O MySQL é configurado sem o parâmetro de portas (`-p`), tornando-o inacessível para ataques externos ao host.
*   **Construção de Imagem (Build):** Realiza o build automatizado da aplicação local para garantir que a versão mais recente seja implantada.
*   **Deploy Automatizado:** Gerencia variáveis de ambiente e volumes para subir a aplicação e o banco de dados de forma integrada.
*   **Verificação de Saúde:** Executa um diagnóstico de status via `docker ps` para validar se todos os serviços foram iniciados corretamente.

## 🛠️ Como Executar (Tutorial Completo)

1. **Acesse a pasta do projeto no terminal:**
   ```bash
   cd ~/toshiro-shibakita-cyber
2. **Dê permissão de execução ao script:**
Este comando é necessário para que o Linux entenda que o arquivo .sh pode ser executado como um programa.
 ```bash
 chmod +x segurança_docker.sh
 ls -l segurança_docker.sh
 sudo .segurança_docker.sh
