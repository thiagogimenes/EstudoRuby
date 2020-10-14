describe 'Botoes de Radio', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

    it 'selecao por id' do
        choose('cap')
    end

    it 'seleção por find e css selector' do
        find('input[value=guardians]').click
    end
    after(:each) do
            sleep 3
    end
end