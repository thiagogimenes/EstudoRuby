describe 'loginForm' do
    it 'Login sucesso' do
        
        visit 'https://dash-dev.shopmoura.com.br/login'

        fill_in 'ion-input-0', with: 'arlete@arlete.com.br'
        fill_in 'ion-input-1', with: '123456789'

        Elemento = find("#btnLogin")
        Elemento.click
        #ou find("#btnLogin").click

        
        
        #https://dash-dev.shopmoura.com.br/relatorio
    end
end