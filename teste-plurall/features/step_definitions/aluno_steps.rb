Dado('que acesso um curso') do
    login.load
    login.login_aluno
    sleep 5
    aluno.aluno_cursos
    sleep 5

end
  
Quando('seleciono uma disciplina') do
    find(:xpath, '//*[@id="header-dropdown"]/ul/li[1]/div/ul[1]/li/a/span').click
    sleep 5
end
  
Quando('seleciono um conteúdo') do
    find(:xpath, '//*[@id="topic-progress"]/span/div/div/div[3]/div/div[2]/div/div[1]/div[2]/div[1]/span[1]/a').click
    #aluno.play_aula.click
    #find(:xpath, '//*[@id="topic-progress"]/span/div/div/div[3]/div/div[1]/div/div/div[2]/div[1]/ul/li[1]/div').click
    find(:xpath, '//*[@id="topic-progress"]/span/div/div/div[3]/div/div[1]/div/div/div[3]/div[1]/ul/li[1]/div/div/a', match: :first).click
    sleep 5
end
  
Então('visualizo uma aula') do
    expect(page).to have_content("Números naturais como indicador")
    sleep 5
end