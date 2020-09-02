# estrutura de repetição
# No geral são 4 tipos de repetições o ruby
=begin
    1-times
    2-while
    3-for
    4-arrays(for each)

=end

#repete 5 vezes
=begin
5.times do #repete 5 vezes
    puts 'repetindo a mensagem'
end
=end

#laço com contador
# array
=begin
5.times do |i|
    puts 'Repetindo a mensagem ' + i.to_s + ' vez(es).'
end
=end

#roda enquanto a condiçõa for verdadeira vai executar
#while
=begin
init = 0 

#loop infinito
while true do 
    puts 'laço infinito'
end

while init <= 10 do
    puts 'Repetindo a mensagem ' + init.to_s + ' vez(es).'
    init += 1
end
=end

#for
=begin
for item in (0...10)
    puts 'Repetindo a mensagem ' + item.to_s + ' vez(es).'
end
=end

# Arrays
# dá pra fazer um for each

vingadores = ['Ironman', 'Hulk', 'Spiderman', 'Thor']

vingadores.each do |v|
    puts v
end