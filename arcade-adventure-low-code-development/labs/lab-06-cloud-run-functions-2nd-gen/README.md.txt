☁️ Lab 06 – Cloud Run Functions: 2nd Gen


Objetivo

Neste laboratório foram explorados recursos mais avançados do Cloud Run Functions (2ª geração), incluindo diferentes tipos de gatilhos (HTTP, Cloud Storage e Cloud Audit Logs), gerenciamento de revisões, eliminação de cold starts utilizando instâncias mínimas e melhoria de desempenho através da configuração de concorrência.

O que foi realizado

O laboratório começou habilitando todas as APIs necessárias para utilização do Cloud Run Functions e também ativando o Gemini Code Assist dentro do Cloud Shell Editor.

Uma parte que achei muito interessante foi justamente o uso do Gemini. Em diversos momentos abrimos os arquivos index.js e package.json e pedimos para a IA explicar detalhadamente o funcionamento do código. Achei uma ferramenta muito útil para entender melhor o que cada arquivo faz sem precisar pesquisar tudo separadamente.

Depois disso começamos a desenvolver diferentes tipos de funções.

Primeiro criamos uma função HTTP, utilizando Node.js. Após escrever o código, fizemos o deploy pelo Cloud Shell e executamos a função utilizando o comando do gcloud, recebendo corretamente a resposta:

HTTP with Node.js in GCF 2nd gen!

Em seguida criamos uma segunda função baseada em Cloud Storage. Para isso foi criado um bucket e a função passou a ser executada automaticamente sempre que um arquivo fosse enviado para esse bucket. O teste foi feito criando um arquivo chamado random.txt, enviando-o ao Storage e verificando nos logs que o evento havia sido recebido corretamente.

Na terceira etapa foi criada uma função baseada em Cloud Audit Logs. O objetivo era detectar automaticamente quando uma máquina virtual fosse criada no Compute Engine. Após criar uma VM de teste, a função adicionou automaticamente uma label indicando quem havia criado aquela instância. Achei essa parte muito interessante porque mostra como é possível automatizar tarefas administrativas usando eventos da infraestrutura.

Depois trabalhamos com múltiplas revisões de uma função. Inicialmente ela foi publicada exibindo uma página "Hello World" com fundo laranja. Em seguida fizemos uma nova revisão alterando apenas uma variável de ambiente para que a página passasse a ser exibida com fundo amarelo. Foi bem legal perceber como pequenas alterações podem gerar novas versões da aplicação sem precisar recriá-la.

Na sequência aprendemos sobre o problema de cold start. Foi criada uma função em Go que demorava cerca de 10 segundos para responder na primeira execução devido ao processo de inicialização. Depois alteramos a configuração para manter uma instância mínima ativa, eliminando completamente essa demora nas próximas execuções.

Por fim realizamos testes de concorrência utilizando a ferramenta hey, enviando diversas requisições simultâneas para a função. Antes da configuração de concorrência, várias requisições sofriam atrasos devido à criação de novas instâncias. Após configurar até 100 requisições simultâneas por instância, todas passaram a ser processadas rapidamente, demonstrando claramente o ganho de desempenho.

Principais conceitos aprendidos
Criação de funções HTTP.
Funções acionadas por eventos do Cloud Storage.
Funções acionadas por Cloud Audit Logs.
Utilização do Gemini Code Assist para compreender o código.
Deploy de múltiplas revisões.
Uso de variáveis de ambiente.
Conceito de cold start.
Configuração de instâncias mínimas.
Configuração de concorrência.
Testes de desempenho utilizando a ferramenta hey.
Impressões sobre o laboratório

Até agora foi um dos laboratórios que mais gostei de fazer. Diferente dos anteriores, ele apresentou vários recursos que realmente fazem parte do dia a dia de quem trabalha com Cloud. A parte de utilizar eventos para automatizar ações foi muito interessante, mas o que mais gostei foi visualizar, na prática, a diferença entre uma função sofrendo com cold start e outra utilizando instâncias mínimas e concorrência para responder praticamente de forma instantânea. Também achei muito útil a integração com o Gemini Code Assist, que facilitou bastante a compreensão do código durante todo o laboratório.

Imagens



Foto 01: Primeira revisão da função exibindo Hello World com fundo laranja.

Foto 02: Segunda revisão da função exibindo Hello World com fundo amarelo.

