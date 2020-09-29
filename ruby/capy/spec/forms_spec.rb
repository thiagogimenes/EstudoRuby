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
    end
    
    it 'Usuario com senha incorreta' do
        
        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'userId', with: 'stark'
        fill_in 'passId', with: '123'

        expect(find('#flash').invisible?).to be false
    end
end
