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

end