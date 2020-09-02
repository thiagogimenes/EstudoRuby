class Conta

    attr_accessor :saldo, :nome
    #construtor
    def initialize (nome)
        self.saldo = 0.0
        self.nome = nome
    end

    #método para depositar valor
    def deposita(valor)
        self.saldo += valor
        puts "Depositanto a quantia de #{valor} reais na conta #{self.nome}."
    end
end

c = Conta.new('Thiago')

c.deposita(100.00)
puts c.saldo

c.deposita(50.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome
