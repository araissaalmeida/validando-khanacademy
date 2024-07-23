class Login < SitePrism::Page 

    set_url '/'

    element :botao_entrar, '#login-or-signup'
    element :email, "input[data-test-id='identifier-field']"
    element :senha, "input[data-test-id='password-field']"
    element :botao_logar, "button[data-test-id='log-in-submit-button']"

    def login_aluno
        botao_entrar.click
        email.set("alunodasomos@mailinator.com")
        senha.set("M6qXDtZN443BczJ")
        botao_logar.click
    end

    def login_professor
        botao_entrar.click
        email.set("professordasomos1@mailinator.com")
        senha.set("a5RdRsT2iwefHEK")
        botao_logar.click
     end  
end