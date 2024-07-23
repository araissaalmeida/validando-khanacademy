Dado('que estou na página de login') do
    login.load
end
  
Quando('faço o login com email e senha do aluno') do
    login.login_aluno
end
  
Então('visualizo a tela inicial do sistema na visão do aluno') do
    expect(page).to have_content("Meus cursos")
end

Quando('faço o login com email e senha do professor') do
    login.login_professor
end
  
Então('visualizo a tela inicial do sistema na visão do professor') do
    expect(page).to have_content("Bem-vindo(a), Professor Somos")
end