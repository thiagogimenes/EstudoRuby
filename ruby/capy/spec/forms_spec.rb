describe 'Forms' do

    it 'login com sucesso' do
        #visita o site
        visit 'https://training-wheels-protocol.herokuapp.com/login'
        #procura o id dos campos
        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis!'
        #submete o formulário
        click_button 'Login'
        #verifica se é true
        expect(find('#flash').visible?).to be true

        #neste caso não será igual (epl). Pergunta-se se o valor contem na string
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        #se um valor contem na string ou no elemento, utiliza-se have_content
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
    
    it 'senha incorreta' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuário não encontrato' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'thor'
        fill_in 'passId', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end
