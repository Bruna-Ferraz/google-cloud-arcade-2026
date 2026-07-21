🏆 Lab 07 – Challenge Lab: Cloud Run Functions


Objetivo

Este laboratório funcionou como uma avaliação prática dos conteúdos aprendidos nos laboratórios anteriores. Diferente dos demais, não havia um passo a passo detalhado: apenas os objetivos finais, exigindo que todo o processo fosse realizado utilizando os conhecimentos adquiridos ao longo do módulo.

Durante o desafio foram aplicados conceitos como criação de buckets no Cloud Storage, desenvolvimento de funções acionadas por eventos, criação de funções HTTP e configuração de escalabilidade através do número mínimo e máximo de instâncias.

Desenvolvimento
1. Criação do bucket

O primeiro passo foi criar um bucket no Cloud Storage, utilizando como nome o próprio Project ID fornecido pelo laboratório.

Esse bucket seria utilizado posteriormente para gerar eventos que acionariam automaticamente uma Cloud Run Function.

2. Criação da Cloud Storage Function

Em seguida foi criada uma função em Node.js 24, configurada para ser executada sempre que um novo arquivo fosse enviado ao bucket criado anteriormente.

A função utilizava o Functions Framework, registrando um evento do tipo CloudEvent, responsável por registrar nos logs todas as informações do novo arquivo enviado ao bucket.

Durante o deploy foram configurados:

Runtime Node.js 24;
Cloud Run Functions (2ª geração);
Trigger baseado em eventos do Cloud Storage;
Máximo de 2 instâncias.

Após a implantação, foi realizado um teste enviando um arquivo qualquer para o bucket, confirmando que o evento era capturado corretamente.

3. Criação da HTTP Function

Na sequência foi criada uma segunda função, dessa vez utilizando um gatilho HTTP.

Essa função respondia diretamente às requisições HTTP retornando a mensagem:

HTTP function (2nd gen) has been called!

Durante o deploy foram configurados:

Runtime Node.js 24;
Trigger HTTP;
1 instância mínima;
2 instâncias máximas.

A configuração da instância mínima garante que uma função permaneça previamente inicializada, reduzindo significativamente o tempo de resposta causado pelo chamado Cold Start.

4. Validação

Após concluir todas as tarefas, o sistema automático do Challenge Lab validou cada uma delas.

Foram verificados:

criação correta do bucket;
deploy da função do Cloud Storage;
funcionamento do gatilho por upload de arquivos;
deploy da função HTTP;
configuração correta das instâncias mínimas e máximas.

Todas as atividades foram concluídas com sucesso.

Principais conceitos aprendidos

Durante este Challenge Lab foi possível consolidar diversos conceitos vistos anteriormente:

criação de buckets no Cloud Storage;
Cloud Run Functions de segunda geração;
funções HTTP;
funções acionadas por eventos do Cloud Storage;
CloudEvents;
deploy utilizando Node.js 24;
configuração de escalabilidade;
utilização de instâncias mínimas para reduzir Cold Starts;
validação automática dos recursos criados.
Evidências

Foto 01 — Lista das Cloud Run Functions criadas durante os laboratórios.

## Código desenvolvido

Os arquivos utilizados neste laboratório estão disponíveis na pasta abaixo:

laboratório-completo-codigos

Conclusão

Este Challenge Lab serviu como uma avaliação prática de todos os conhecimentos adquiridos ao longo dos laboratórios anteriores. Diferentemente dos exercícios guiados, foi necessário identificar quais serviços utilizar, configurar corretamente cada recurso e solucionar possíveis problemas sem instruções detalhadas.

Ao final do desafio, foi possível demonstrar domínio sobre a criação e implantação de Cloud Run Functions utilizando diferentes tipos de gatilhos, além de aplicar configurações de escalabilidade e boas práticas relacionadas ao ambiente serverless do Google Cloud. Esse laboratório consolidou os principais conceitos estudados durante todo o módulo, preparando para desafios mais próximos de situações reais encontradas no desenvolvimento em nuvem.