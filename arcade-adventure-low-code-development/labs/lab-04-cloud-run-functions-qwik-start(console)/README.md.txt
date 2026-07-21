# 📄 Lab 04 — Cloud Run Functions: Qwik Start (Console)

## Sobre o laboratório

Neste laboratório tive meu primeiro contato com o **Cloud Run Functions**, serviço serverless do Google Cloud responsável por executar funções em resposta a eventos.

Durante a atividade aprendi como criar uma função diretamente pelo Console do Google Cloud, realizar seu deploy, testá-la utilizando o Cloud Shell e analisar sua execução através dos logs disponibilizados pela plataforma.

---

## Objetivos

- Criar uma Cloud Run Function utilizando o Console do Google Cloud;
- Realizar o deploy da função;
- Executar testes utilizando o Cloud Shell;
- Visualizar os logs gerados durante a execução da função;
- Compreender o funcionamento básico de aplicações serverless.

---

## O que foi desenvolvido

O laboratório iniciou com a criação de uma nova função através do serviço **Cloud Run**.

Durante a configuração foram definidos parâmetros como:

- Nome da função;
- Região de execução;
- Ambiente de execução de segunda geração (2nd Generation);
- Autenticação pública;
- Limite máximo de instâncias.

Após a configuração inicial, foi utilizada a implementação padrão disponibilizada pelo laboratório (`helloHttp`), responsável por responder a requisições HTTP.

Em seguida, a função foi publicada utilizando o processo de deploy integrado do Google Cloud.

---

## Testando a função

Após o deploy, a função foi executada pela primeira vez utilizando a própria interface do Google Cloud.

Como entrada, foi enviado o seguinte evento:

```json
{
  "message": "Hello World!"
}
```

Posteriormente, o próprio Google Cloud disponibilizou um comando CLI para execução da mesma função através do **Cloud Shell**.

Ao executar o comando no terminal, a função respondeu corretamente com a mensagem enviada, confirmando que o deploy havia sido realizado com sucesso.

---

## Monitoramento

Após os testes, foi possível acessar a área de **Observability** do Cloud Run para visualizar os logs gerados pela execução da função.

Essa etapa demonstrou como acompanhar a execução de aplicações serverless em produção, facilitando a identificação de erros e o monitoramento do comportamento da aplicação.

---

## Aprendizados

Este foi meu primeiro contato com o desenvolvimento serverless utilizando o Google Cloud.

Além de compreender o processo completo de criação e deploy de uma função, também foi possível entender como o Cloud Run automatiza toda a infraestrutura necessária para executar pequenas aplicações sob demanda.

### Conceitos explorados

- Google Cloud Run Functions
- Serverless Computing
- Cloud Shell
- Deploy de aplicações
- HTTP Trigger
- Inline Editor
- Observability
- Logs
- Escalabilidade automática

---

## Reflexão

Este laboratório marcou minha transição dos recursos low-code do AppSheet para um ambiente de desenvolvimento mais próximo da programação tradicional.

Foi interessante perceber como o Google Cloud simplifica o processo de publicação de aplicações serverless. Em poucos passos foi possível criar, implantar, testar e monitorar uma função sem precisar configurar servidores ou infraestrutura manualmente.

Além disso, visualizar os logs após a execução ajudou a entender como ferramentas de observabilidade fazem parte do ciclo de desenvolvimento de aplicações modernas.

---

## Imagens

**Figura 01.** Logs da execução da função na área de Observability.