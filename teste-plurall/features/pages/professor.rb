class Professor < SitePrism::Page 

    set_url '/'

    element :adicionar_turma, "div[data-teste-id='add-new-class']"
    element :nome_turma, "input[data-test-id='class-name-input-field']"
    element :botao_nome_turma, "button[data-test-id='edit-class-name-button']"
    element :checkbox_disciplina, "label[data-test-id='class-picker-item-0-0']"
    element :botao_proximo, "button[data-test-id='go-next-button']" 
    element :botao_contas_alunos, "div[data-test-id='create-students-without-email']" 
    element :nome_aluno0, "input[data-test-id='new-student-name-0']" 
    element :nome_aluno1, "input[data-test-id='new-student-name-1']" 
    element :nome_aluno2, "input[data-test-id='new-student-name-2']" 
    element :botao_pular, "button[data-test-id='class-creator-skip-button']"
    element :adiciona_aluno, "button[class='_z9asim']"
    element :acessa_turma, "a[data-test-id='Turma cenário remove aluno']"
    element :checkbox_aluno, "input[data-test-id='student-table-checkbox-0']"
    element :botao_acoes, "button[data-test-id='student-actions-link']"
    element :botao_remove, "li[data-test-id='remove-from-class-option']"
    element :botao_confirma, "a[data-test-id='confirmation-modal-submit']"
    element :acessa_turma2, "a[data-test-id='Turma cenário recomendar conteúdo']"
    element :botao_recomendacoes, "button[data-test-id='assignments-subsection']"
    element :botao_recomendar_menu, "a[data-test-id='nav-create-assignments']"
    element :checkbox_unidade, "input[data-test-id='row-checkbox-6']"
    element :botao_recomendar, "button[data-test-id='multi-assign-btn']"
    element :botao_recomendar_modal, "button[data-test-id='new-assignment-post-button']"

    def criacao_de_turma
    @turma_nome = "Turma #{Faker::Lorem.word}"
     nome_turma.send_keys(@turma_nome)
     botao_proximo.click
     checkbox_disciplina.click
     botao_proximo.click
     botao_contas_alunos.click
      nome_aluno0.set("AlunoTeste0")
     adiciona_aluno.click
     nome_aluno1.set("AlunoTeste1")
     adiciona_aluno.click
     nome_aluno2.set("AlunoTeste2")
     sleep 5
     find(:xpath, '//*[@id="app-shell-root"]/div/main/div[2]/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div/div[2]/div[3]/div[2]/button').click
     botao_proximo.click
     botao_pular.click
    end

    def recomenda_conteudo
        botao_recomendacoes.click
        botao_recomendar_menu.click
        checkbox_unidade.click
        botao_recomendar.click           
    end

end