class Aluno < SitePrism::Page 

    set_url '/'

    element :botao_cursos, "button[data-test-id='learn-menu-dropdown']"

    def aluno_cursos 
        botao_cursos.click
    end

end