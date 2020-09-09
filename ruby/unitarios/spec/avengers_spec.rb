class AvengersHeadQuarter
    attr_accessor :list
    
    #construtor
    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

#Este é um exemplo de TTD - desenvolvimento guiado por teste.
#criando uma suite
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        #instanciando a classe
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adcionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0 

        #expect(hq.list).to include 'Thor'
        expect(hq.list.size).to be > 0
        #verificando se thor existe na lista

        expect(res).to be true
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Ironman deve ser o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Park/)
        expect(avenger).not_to match(/Thiago/)
    end

    
end