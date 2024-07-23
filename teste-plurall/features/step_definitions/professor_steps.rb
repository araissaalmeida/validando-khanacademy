Dado('que crio uma turma') do
    login.load
    login.login_professor
    find(:xpath, '//*[@id="app-shell-root"]/div/main/div[2]/div/div[3]/div[2]/div[1]/div[1]/div/a').click
end
  
Quando('adiciono alunos') do
    professor.criacao_de_turma
end
  
Então('a turma é criada com sucesso') do
    expect(page).to have_content("Contas criadas!")
    expect(page).to have_content("Excelente! Você criou contas para os seus alunos.")

end

Dado('que acesso uma turma') do
    login.load
    login.login_professor
    professor.acessa_turma.click 
end
  
Quando('seleciono um aluno') do
    expect(page).to have_content("Lista de alunos")
    professor.checkbox_aluno.click        
end
  
Quando('clico em remover da turma') do
    professor.botao_acoes.click
    professor.botao_remove.click
    professor.botao_confirma.click
end
  
Então('o aluno é removido com sucesso') do
    expect(page).to have_content("Veja quais alunos já estão na turma e adicione outros quando precisar.")    
end

Dado('que acesso uma turma de alunos') do
    login.load
    login.login_professor
    professor.acessa_turma2.click
end
 
Quando('recomendo conteúdos') do
   professor.recomenda_conteudo
end
 
Então('o conteúdo é recomendado com sucesso') do
    professor.botao_recomendar_modal.click
end