names = ['Joãozinho', 'Manoel', 'Juca']

name = 'Leonardo Scorza'

# Each - Percorre uma coleção de forma parecida ao 'for',
# porém não sobrescrevendo o valor de variáveis fora da
# estrutura de repetição.

names.each do |name|
    puts name + ' é o meu nome'
end

# Para cada elemento no array vai executar o código e
# vai atribuir a variável 'name' o valor que está dentro
# da array, sem alterar a variável de mesmo nome que fica
# fora do escopo do Each

puts "\n #{name}"