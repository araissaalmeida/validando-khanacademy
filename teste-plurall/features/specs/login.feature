#language: pt 

@login

Funcionalidade: Login

@login_aluno

Cenario: Login de aluno com sucesso
Dado que estou na página de login 
Quando faço o login com email e senha do aluno 
Então visualizo a tela inicial do sistema na visão do aluno


@login_professor

Cenario: Login de professor com sucesso
Dado que estou na página de login 
Quando faço o login com email e senha do professor 
Então visualizo a tela inicial do sistema na visão do professor 
