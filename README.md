![Banner Dark Tech](https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTRhbXNteHV0MzFvYjYxZzV4MGZpNndld2JpcjF3dW9vcjFtZWc1YiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/VrtvDMP4ajo5y/giphy.gif)


Aqui está uma estrutura profissional destacando as melhorias de segurança que você implementou:

```markdown
# 🛡️ Projeto Toshiro Shibakita: Edição Cyber Hardening

Este repositório foi desenvolvido como parte de um desafio da **DIO (Digital Innovation One)**. O objetivo original era replicar a infraestrutura do projeto Toshiro Shibakita, mas nesta versão, apliquei conceitos avançados de **Cybersecurity e Hardening de Containers**.

## 💻 Sobre o Desafio
Inspirado na jornada de Toshiro Shibakita, este projeto simula um deploy automatizado em nuvem/local utilizando Docker e Shell Scripting.

## 🔒 Melhorias Implementadas (Foco em Cyber)
Diferente de um deploy padrão, este script foi escrito com foco em reduzir a superfície de ataque:

*   **Segregação de Rede (L3 Isolation):** O Banco de Dados (MySQL) não possui exposição de portas para o Host. Ele reside em uma rede Docker isolada, acessível apenas pelo container da aplicação.
*   **Princípio do Privilégio Mínimo:** Configuração de variáveis de ambiente para comunicação interna, evitando exposição de credenciais em logs públicos.
*   **Persistência Segura:** Uso de volumes gerenciados para integridade dos dados.
*   **Automação de Infraestrutura:** Script Bash idempotente que verifica a existência de redes e dependências antes da execução.

## 🛠️ Tecnologias Utilizadas
*   **Docker:** Conteinerização da aplicação e banco de dados.
*   **Bash Script:** Automação do fluxo de deploy e verificações de segurança.
*   **Linux (Ubuntu):** Ambiente de desenvolvimento e execução.

## 🚀 Como executar

1. Certifique-se de ter o Docker instalado.
2. Clone o repositório:
   ```bash
   git clone [https://github.com/blck0utsh/toshiro-shibakita-cyber.git]
