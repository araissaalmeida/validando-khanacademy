#language: pt 

@professor

Funcionalidade: Criar uma turma com alunos

@criar_turma

Cenario: Professor cria uma turma e adiciona alunos
Dado que crio uma turma 
Quando adiciono alunos
Então a turma é criada com sucesso

@remover_aluno

Cenario: Professor remove aluno da turma
Dado que acesso uma turma 
Quando seleciono um aluno
E clico em remover da turma
Então o aluno é removido com sucesso

@recomendar_conteudos

Cenario: Professor recomenda conteúdo para os alunos
Dado que acesso uma turma de alunos
Quando recomendo conteúdos
Então o conteúdo é recomendado com sucesso
