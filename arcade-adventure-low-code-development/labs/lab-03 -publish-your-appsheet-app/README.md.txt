# 📄 Lab 03 — Publish your AppSheet App

##  Sobre o laboratório

Neste laboratório foi realizada a etapa final do desenvolvimento da aplicação criada nos laboratórios anteriores: sua preparação para produção.

Antes de publicar um aplicativo, o AppSheet executa uma série de verificações automáticas para identificar erros estruturais e boas práticas que ainda precisam ser corrigidas.

O objetivo desta atividade foi compreender esse processo de validação, corrigir os problemas encontrados e, por fim, realizar o deploy da aplicação.

---

##  Objetivos

- Executar o Deployment Check do AppSheet;
- Corrigir erros e avisos identificados pela plataforma;
- Publicar (Deploy) a aplicação;
- Testar a aplicação em ambiente de produção;
- Compartilhar o aplicativo com usuários.

---

##  O que foi desenvolvido

O laboratório iniciou executando o **Deployment Check**, ferramenta responsável por analisar automaticamente a aplicação antes da publicação.

A verificação identificou diversos pontos que precisavam ser corrigidos, incluindo erros que impediam o deploy e avisos relacionados às boas práticas recomendadas pelo AppSheet.

Entre as correções realizadas estavam:

- atualização da estrutura de dados para corrigir inconsistências entre a aplicação e a planilha;
- ajuste da referência entre as tabelas Contacts e Companies;
- adição de uma descrição para o aplicativo;
- configuração de um ícone personalizado;
- ativação do armazenamento de conteúdo para uso offline.

Após todas as alterações, uma nova verificação foi executada, desta vez sem apresentar erros ou avisos.

**Figura 01.** Como foi apresentado os erros ao realizar a tentativa de deploy.

---

##  Publicação da aplicação

Com todas as pendências resolvidas, a aplicação foi movida para o estado **Deployed**, tornando-se apta para utilização pelos usuários.

Após o deploy, o aplicativo foi testado diretamente no navegador, simulando sua utilização em ambiente real.

Durante os testes também foi validado o formulário de envio (**Ship To**), verificando o correto funcionamento do relacionamento entre empresas e contatos.

**Figura 02.** Teste do aplicativo feito diretamente no navegador

---

##  Aprendizados

Embora o deploy seja frequentemente visto apenas como a etapa final do desenvolvimento, este laboratório mostrou que ele também funciona como uma importante etapa de validação da qualidade da aplicação.

Os avisos apresentados pelo Deployment Check demonstram que uma aplicação pronta para produção envolve muito mais do que apenas funcionar corretamente: é necessário garantir consistência dos dados, documentação adequada, identidade visual e uma boa experiência para o usuário.

### Conceitos explorados

- Deployment Check
- Deploy de aplicações
- Publicação de aplicativos
- Correção de erros estruturais
- Integridade dos dados
- Configuração de branding
- Offline Mode
- Testes pós-deploy

---

##  Reflexão

Este foi um dos laboratórios mais interessantes da trilha até o momento.

Foi possível compreender que publicar uma aplicação não significa apenas disponibilizá-la aos usuários. Antes disso, existe um processo importante de validação que ajuda a identificar inconsistências na estrutura do sistema e incentiva a adoção de boas práticas de desenvolvimento.

Essa etapa reforçou a importância da revisão final de uma aplicação antes de colocá-la em produção, mostrando que detalhes como documentação, identidade visual e funcionalidades offline também fazem parte da qualidade de um software.