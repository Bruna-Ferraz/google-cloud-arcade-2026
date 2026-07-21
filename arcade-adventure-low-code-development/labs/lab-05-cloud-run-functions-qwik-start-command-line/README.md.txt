📄 Lab 05 — Cloud Run Functions: Qwik Start (Command Line)
Visão geral

Neste laboratório foi realizada toda a criação e implantação de uma Cloud Run Function (2ª geração) utilizando exclusivamente a linha de comando através do Google Cloud Shell.

Diferente do laboratório anterior, em que praticamente todas as configurações eram feitas pela interface gráfica do Google Cloud Console, aqui o foco foi compreender como automatizar todo o processo utilizando o gcloud CLI, criando os arquivos do projeto manualmente, instalando dependências, realizando o deploy e testando a função através de eventos do Google Pub/Sub.

Essa abordagem aproxima muito mais do fluxo utilizado em ambientes reais de desenvolvimento.

Objetivos do laboratório:

Durante esta atividade foram realizadas as seguintes tarefas:

Configuração da região padrão do Cloud Run;
Criação manual da estrutura do projeto;
Desenvolvimento de uma função em Node.js;
Criação do arquivo package.json;
Instalação das dependências do projeto utilizando npm;
Deploy da função utilizando o comando gcloud functions deploy;
Configuração do gatilho através do Pub/Sub;
Teste da função publicando mensagens em um tópico;
Consulta dos logs gerados pela execução.
Desenvolvimento

Todo o laboratório aconteceu dentro do Google Cloud Shell, ambiente Linux disponibilizado pelo próprio Google Cloud.

A primeira etapa foi configurar a região padrão e criar um diretório para armazenar o projeto.

Em seguida, foi criado o arquivo index.js, contendo a função responsável por receber eventos enviados pelo Pub/Sub.

A função utiliza o Functions Framework do Google para registrar um callback capaz de processar mensagens recebidas em um tópico. Sempre que um novo evento é publicado, o conteúdo da mensagem é decodificado e exibido nos logs da aplicação.

Depois disso foi criado manualmente o arquivo package.json, definindo as informações do projeto e suas dependências.

Com a estrutura pronta, foi executado:

npm install

Esse comando realizou automaticamente o download de todas as bibliotecas necessárias para a execução da função.


Deploy da função

Com o projeto finalizado, foi realizado o deploy utilizando o comando gcloud functions deploy.

Durante essa etapa foram definidos diversos parâmetros importantes, entre eles:

Runtime Node.js;
Cloud Functions Gen2;
Região de implantação;
Código-fonte da aplicação;
Conta de serviço;
Bucket utilizado durante o processo de build;
Trigger baseado em um tópico do Pub/Sub.

Esse comando automatiza toda a criação da infraestrutura necessária para executar a função em ambiente serverless.

Após alguns minutos o Google Cloud concluiu o processo e a função passou para o estado ACTIVE, indicando que estava pronta para receber eventos.


Testando a função

Ao contrário do laboratório anterior, em que a função era acionada por uma requisição HTTP, neste laboratório o gatilho foi um evento do Google Pub/Sub.

Para testar o funcionamento foi utilizado o comando:

gcloud pubsub topics publish cf-demo --message="Cloud Function Gen2"

A publicação da mensagem no tópico faz com que a Cloud Run Function seja executada automaticamente.

Esse comportamento demonstra uma das principais características da arquitetura serverless orientada a eventos: o código permanece inativo até que algum evento aconteça.

Análise dos logs

Após a publicação da mensagem foi realizada a leitura dos logs utilizando:

gcloud functions logs read nodejs-pubsub-function

Nos registros foi possível visualizar a execução da função e confirmar que a mensagem enviada pelo Pub/Sub havia sido processada corretamente.

Ver os logs foi particularmente interessante porque mostrou exatamente o ciclo completo da execução da função, desde o disparo do evento até o processamento da mensagem.

Foto 01 — Logs da execução da função exibindo a mensagem recebida pelo Pub/Sub.

Aprendizados

Este laboratório mostrou como utilizar a linha de comando para gerenciar Cloud Run Functions, eliminando praticamente toda a dependência da interface gráfica.

Durante a atividade foi possível compreender melhor como um projeto serverless é estruturado, desde a criação dos arquivos da aplicação até a implantação automática da infraestrutura pelo Google Cloud.

Outro ponto interessante foi conhecer o funcionamento do Google Pub/Sub, que permite construir aplicações orientadas a eventos. Em vez de responder diretamente a uma requisição HTTP, a função é executada somente quando uma nova mensagem é publicada em um tópico, modelo bastante utilizado em sistemas distribuídos e arquiteturas baseadas em microsserviços.

Também foi possível perceber como o uso do gcloud CLI torna o processo muito mais reproduzível e automatizado, característica essencial em ambientes profissionais e pipelines de CI/CD.

Considerações finais

Este foi, até o momento, um dos laboratórios mais completos do Arcade Adventure. Além de apresentar conceitos importantes de computação em nuvem, ele aproximou bastante o ambiente de estudo do fluxo utilizado no mercado, mostrando como aplicações serverless podem ser desenvolvidas, implantadas e monitoradas inteiramente pela linha de comando.

Foi uma excelente introdução ao uso do Google Cloud CLI, do Cloud Run Functions Gen2 e da integração com o Google Pub/Sub, consolidando conceitos fundamentais para desenvolvimento de aplicações em nuvem.