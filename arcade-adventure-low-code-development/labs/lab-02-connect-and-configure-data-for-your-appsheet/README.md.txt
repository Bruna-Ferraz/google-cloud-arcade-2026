# 📄 Lab 02 — Connect and Configure Data for your AppSheet App

##  Sobre o laboratório

Neste laboratório dei continuidade ao aplicativo de gerenciamento de contatos desenvolvido no laboratório anterior.

O objetivo foi expandir a aplicação utilizando uma segunda fonte de dados, configurando corretamente sua estrutura e criando relacionamentos entre tabelas através do AppSheet.

Durante a atividade foi possível compreender melhor como o AppSheet interpreta planilhas do Google Sheets como tabelas relacionais e como pequenas alterações na configuração das colunas impactam diretamente o comportamento da aplicação.

---

##  Objetivos

- Adicionar uma segunda fonte de dados ao aplicativo;
- Configurar corretamente os tipos das colunas;
- Atualizar o esquema (Schema) da aplicação;
- Criar relacionamentos entre tabelas utilizando o tipo **Ref**;
- Validar todas as alterações no aplicativo e na planilha original.

---

##  Problema encontrado

Na primeira tentativa encontrei um pequeno inconveniente: meu ambiente estava configurado em **Português (Brasil)**, enquanto todas as instruções do laboratório utilizavam a interface em inglês.

Isso acabou tornando a localização das opções um pouco confusa e preferi reiniciar a atividade utilizando a interface correta para acompanhar o passo a passo sem divergências.

---

##  O que foi desenvolvido

Partindo da aplicação criada no laboratório anterior, foi adicionada uma nova tabela chamada **Companies**, contendo informações sobre empresas.

Após importar a planilha, foi necessário configurar sua estrutura dentro do AppSheet.

Entre as configurações realizadas estavam:

- definição da coluna **ID** como chave primária;
- configuração da coluna **First Name** como obrigatória;
- alteração do tipo da coluna **Phone**, de **Text** para **Phone**;
- configuração da coluna **Industry** como **Enum**, limitando os valores possíveis.

Essas alterações garantem maior consistência dos dados e melhor experiência para o usuário durante o preenchimento das informações.

**Figura 1** – Configuração da estrutura dentro do AppSheet


---

##  Atualização do Schema

Outro conceito importante apresentado foi a regeneração do **Schema**.

Sempre que uma nova coluna era criada diretamente na planilha do Google Sheets, era necessário atualizar a estrutura da aplicação para que o AppSheet reconhecesse as modificações.

Durante essa etapa foram adicionadas as colunas:

- **Last Contacted**, configurada como **DateTime**;
- **Company ID**, utilizada posteriormente para criar o relacionamento entre as tabelas.

**Figura 2** – As duas novas colunas sendo adicionadas a estrutura


---

## 🔗 Relacionamento entre tabelas

A etapa mais interessante do laboratório foi a criação do relacionamento entre **Contacts** e **Companies**.

Para isso, a coluna **Company ID** foi configurada utilizando o tipo **Ref**, apontando para a tabela **Companies**.

Dessa forma, cada contato passou a estar associado a uma empresa específica, enquanto o AppSheet passou a exibir automaticamente o nome da empresa para o usuário, armazenando internamente apenas o respectivo identificador.

Essa funcionalidade demonstra como o AppSheet implementa relacionamentos semelhantes aos de bancos de dados relacionais, mesmo utilizando planilhas como fonte de dados.

> **Figura 3** – Configuração da coluna *Company ID* como referência (*Ref*) para a tabela *Companies*.



---

##  Aprendizados

Este laboratório aprofundou conceitos importantes sobre organização de dados em aplicações low-code.

### Conceitos explorados

- Google AppSheet
- Google Sheets
- Modelagem de dados
- Chave primária (Primary Key)
- Tipos de dados
- Enum
- Regenerate Schema
- Ref (Relacionamento entre tabelas)
- Integridade dos dados

---

##  Reflexão

Embora a atividade fosse relativamente simples, ela apresentou conceitos fundamentais utilizados em praticamente qualquer sistema de informação.

Foi interessante perceber que, mesmo utilizando uma plataforma low-code, conceitos clássicos de bancos de dados continuam presentes, como chaves primárias, relacionamentos, tipos de dados e validação de informações.

Essa etapa deixou evidente que o desenvolvimento em plataformas low-code exige um bom entendimento da estrutura dos dados, e não apenas da interface visual.