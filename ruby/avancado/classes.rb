class Conta

    attr_accessor :saldo

    #método para depositar valor
    def deposita(valor)
        #recurso do ruby para invocar um atributo dentro da classe.
        self.saldo += valor

        #puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
        #interpolação de string. faz a conversão automática para string.
        puts "Depositanto a quantia de #{valor} reais."
    end
end

c = Conta.new

c.saldo = 0.0
c.deposita(100.00)
puts "Saldo atual na conta é #{c.saldo} reais."
c.deposita(50.00)
puts "Saldo atual na conta é #{c.saldo} reais."