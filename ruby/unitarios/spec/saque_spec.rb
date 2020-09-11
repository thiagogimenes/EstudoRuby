#exemplo de teste com TDD
class ContaCorrente
    #criar atributo saldo
    attr_accessor :saldo

    #cria construtor saldo vai receber o argumento saldo
    def initialize(saldo)
        self.saldo = saldo
    end
    #cria método saca
    def saca(valor) 
        self.saldo -= valor
    end
end

#criar uma switch - para validar o cenário na conta corrente
describe ContaCorrente do
    #switch
    describe 'Saque' do
        #criar um contexto para fazer o teste.
        context 'quanto o valor é positivo' do
            #método do meu contexto
            before(:all) do
                #criar variável de instancia e ficará disponível para uso.
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end
    end

end