# Teste Plurall

## Cenários de automação de teste da Khan Academy

### Features

- [x] O professor precisa criar uma turma com alunos;
- [x] O professor precisa recomendar 15 conteúdos para uma turma existente;
- [x] O professor precisa remover um usuário de uma turma específica;
- [x] O aluno precisa entrar em um curso de determinada disciplina e visualizar uma aula.

### Antes de começar, você vai precisar ter instalado e configurado em sua máquina as seguintes ferramentas: 

- GIT [https://git-scm.com/downloads ],
- Ruby [https://www.ruby-lang.org/pt/downloads/ ],
- ChromeDriver [https://chromedriver.chromium.org/downloads ] (na versão que suporte o seu navegador Chrome).


Além disto, é bom ter um editor para trabalhar com o código, como o VsCode (https://code.visualstudio.com/download)

# 1. Como o projeto foi criado
1- Uma pasta para o projeto foi criada;

2- No terminal, no diretório do projeto, foi executado o comando abaixo, para a criação do arquivo Gemfile

```
bundle init
```

3- O bundle foi instalado pelo terminal, com o comando: 

```
gem install bundler
```

4- Dentro do arquivo Gemfile, através do editor de código ou do terminal, foram adicionadas as seguintes gems: 
```
gem 'capybara'                  
gem 'cucumber'
gem 'rspec'
gem 'selenium-webdriver'
gem 'site_prism'
gem 'faker'
```
5- Após isso, para importar as gems, foi executado o comando:

```
bundle install
```

6- Com as bibliotecas e dependências instaladas, foi criada a estrutura inicial do projeto, com o seguinte comando: 

```
cucumber --init
```

7- Estrutura base de pastas e arquivos do projeto:


```
>features
    >step_definitions
    >support
        env.rb
Gemfile
Gemfile.lock

```

8- Dentro da pasta **features** foram criadas as pastas: 
- **pages:** para representar cada página da aplicação Web;
- **specs:** para a criação dos cenários de teste;
- **step_definitions:** para descrever os comandos utilizando as funções criadas dentro das classes da pasta **pages**.

9- Na pasta **support**:
- foi criado o arquivo page_helper.rb para instanciar as pages;
- no arquivo env.rb foram importadas as bibliotecas e feita a configuração do driver do navegador;
- foi criada a pasta **ambiente** para definir a url padrão do projeto.

10- Na raíz do projeto foi criado o arquivo cucumber.yml para configurar as tags de execução e variáveis de ambiente.

11- Foi criado o arquivo .gitlab-ci.yml na raíz do projeto para configurar a pipeline do projeto.


# 2. Como clonar este repositório


```
git clone
```

Acesse a pasta do projeto no terminal/cmd

```
cd..
```

Instale as dependências com o comando:

```
bundle install
```

# 3. Pronto, agora você irá executar os testes automatizados

- Para executar o teste número 1 ("O professor precisa criar uma turma com alunos.") execute, no terminal/cmd, o comando:

```
cucumber -t@criar_turma
```

- Para executar o teste número 2 ("O professor precisa recomendar 15 conteúdos para uma turma existente") execute, no terminal/cmd, o comando:

```
cucumber -t@recomendar_conteudos
```

- Para executar o teste número 3 ("O professor precisa remover um usuário de uma turma específica.") execute, no terminal/cmd, o comando:

```
cucumber -t@remover_aluno
```

- Para executar o teste número 4 ("O aluno precisa entrar em um curso de determinada disciplina e visualizar uma aula") execute, no terminal/cmd, o comando:

```
cucumber -t@acessar_curso
```

- E para executar todos os cenários da automação, execute no terminal/cmd, o comando:

```
cucumber
```

## Tecnologias utilizadas no projeto

As seguintes ferramentas foram usadas na construção do projeto:

- Cucumber
- Capybara
- Ruby
- rsPEC
- Selenium Webdriver
- SitePrism
- Faker



