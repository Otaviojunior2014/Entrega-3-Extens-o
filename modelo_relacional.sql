# Projeto CãoFiança - Arquitetura de Software

## 1. Diagrama de Contexto (C1)
```mermaid
graph TB
    subgraph "Contexto do Sistema CãoFiança"
        User[Adotante / Doador]
        Admin[Gestor da ONG / Protetor]
        System[Sistema CãoFiança]
        Email[Serviço de E-mail]
        Payment[Gateway de Pagamento PIX]

        User -->|Busca pets e faz doações| System
        Admin -->|Gerencia pets e pedidos| System
        System -->|Envia confirmações| Email
        System -->|Processa doações| Payment
    end
