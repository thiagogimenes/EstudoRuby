#hashes
# objeto no qual temos uma coleção de dados. Esta coleção é feita de chave e valor.
# Parecida com Array. Mas a diferença entre o array e hash
# é a coleção do array é feita de indice com  inteiros e a coleção do hash é feita com chave e valor.


carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']

puts carro
puts carro[:marca]

carro[:modelo] = 'SI'

puts carro