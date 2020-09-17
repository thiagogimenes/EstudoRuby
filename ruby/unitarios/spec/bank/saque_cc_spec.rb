require_relative '../../app/bank'

#criar uma switch - para validar o cenário na conta corrente
describe ContaCorrente do
    #switch
    describe 'Saque' do
        #criar um contexto para fazer o teste.
        context 'quanto o valor é positivo' do
            #método do meu contexto
            before(:all) do
                #criar variável de instancia e ficará disponível para uso.
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo final com zeros' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'quando o saldo é insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saca(101.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'e o saldo permanece' do
                expect(@cc.saldo).to eql 100.00
            end
        end

        context 'quando supera o limite do saque' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end
            it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'e o saldo permanece' do 
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end