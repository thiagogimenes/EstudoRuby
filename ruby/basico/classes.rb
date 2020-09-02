# Ruby é uma liguagem considerada puramente orientada a objetos.
# Porque no Ruby tudo são objetos.

# Classe = forma de organizar ações e objetos no mundo real.
# Classe possui atributos e métodos.
# Caracteristicas e ações

# Carro (Nome, Marca, Modelo, Cor, QtdePortas, etc...)
# ligar, businar, parar, etc...

class Carro
#declara atributo da classe
    attr_accessor :nome

#Cria uma função para criar uma ação
    def ligar
        puts 'O carro está pronto para inciar o trajeto.'
    end
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar