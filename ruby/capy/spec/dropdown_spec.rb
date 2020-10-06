#exercício de seleção de dropdown
# :nome_tag utilizado para adicionar etiqueta na função, roda teste específico.
# procurar um item específico sem um id. a procura é feita pela classe.
# Recurso all para procurar qualquer opção dentro do dropdown (sort)

describe 'caixa de opções', :dropdown do

    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 3
    end

end