begin
    # devo tentar alguma coisa
    file = File.open('./ola.txt') #ola
    if file
        puts file.read
    end
rescue Exception => e
    # obter um possível erro
    puts e.message
    puts e.backtrace
end