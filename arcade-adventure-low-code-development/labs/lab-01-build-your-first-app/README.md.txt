# 📄 Lab 01 — Build Your First App with AppSheet

##  Sobre o laboratório

Neste laboratório, o objetivo foi criar uma aplicação de gerenciamento de contatos utilizando o **Google AppSheet**, tendo como fonte de dados uma planilha hospedada no Google Drive.

Foi meu primeiro contato com a plataforma e pude compreender como o AppSheet utiliza planilhas para gerar aplicações de forma low-code.

---

##  Objetivos

- Criar uma aplicação no Google AppSheet;
- Utilizar uma planilha do Google Sheets como banco de dados;
- Explorar a interface da plataforma;
- Validar a aplicação utilizando o sistema automático do laboratório.

---

##  Problema encontrado

Durante a primeira execução do laboratório ocorreu um problema de provisionamento do ambiente.

A conta temporária disponibilizada pelo Google Cloud Skills Boost estava com o **Google Drive vazio**, embora o laboratório informasse que a planilha necessária já deveria estar disponível.

Além disso, o cronômetro permanecia parado enquanto a mensagem de provisionamento continuava sendo exibida, gerando dúvidas sobre a possibilidade de reiniciar o ambiente sem comprometer a conclusão da atividade.

---

##  Investigação

Antes de reiniciar o laboratório, decidi investigar o comportamento da plataforma.

A primeira hipótese foi que apenas a planilha estivesse ausente. Para testar essa ideia, criei manualmente uma planilha contendo campos compatíveis com os descritos pelo laboratório:

- ID
- Email
- First Name
- Last Name
- Phone Number

Em seguida, utilizei essa planilha como fonte de dados para construir a aplicação.

Curiosamente, essa solução permitiu que a **primeira validação automática fosse aprovada**, indicando que o sistema reconhecia a existência do aplicativo.

Entretanto, a etapa seguinte, que consistia em adicionar um novo contato, continuava falhando.

A hipótese levantada foi que a primeira validação apenas verificava a criação do aplicativo, enquanto a segunda comparava a estrutura da base de dados original utilizada pelo laboratório. Como a planilha havia sido criada manualmente, sua estrutura interna provavelmente não correspondia exatamente à esperada pelo sistema de validação.

---

##  Solução

Após concluir que o problema estava relacionado ao ambiente e não à aplicação desenvolvida, optei por reiniciar o laboratório.

Na segunda tentativa, uma nova conta foi provisionada corretamente e a planilha já estava disponível no Google Drive.

Como eu já compreendia todo o fluxo da atividade graças às tentativas anteriores, consegui concluir o laboratório em aproximadamente quatro minutos.

---

##  Aprendizados

Além do conteúdo técnico apresentado, este laboratório também reforçou a importância de investigar problemas antes de assumir que o erro está na implementação.

### Conceitos explorados

- Google AppSheet
- Google Sheets como fonte de dados
- Desenvolvimento Low-Code
- Estrutura básica de aplicações no AppSheet
- Validação automática de laboratórios

---

##  Reflexão

Embora o laboratório tenha começado com um problema de provisionamento, a experiência acabou sendo positiva.

A tentativa de reproduzir manualmente a estrutura esperada permitiu compreender melhor o funcionamento do AppSheet e do próprio processo de validação do laboratório. No fim, a solução foi simples — reiniciar o ambiente — mas a investigação realizada durante o processo tornou a experiência muito mais enriquecedora do que simplesmente seguir o passo a passo proposto.