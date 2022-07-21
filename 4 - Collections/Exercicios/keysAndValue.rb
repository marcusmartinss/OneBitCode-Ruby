hash = {}

puts 'Adicione a primeira chave'
key = gets.chomp
puts 'Adicione o valor associado a chave'
value = gets.chomp

hash[:"#{key}"] = "#{value}"

puts 'Adicione a segunda chave'
key = gets.chomp
puts 'Adicione o valor associado a chave'
value = gets.chomp

hash[:"#{key}"] = "#{value}"

puts 'Adicione a terceira chave'
key = gets.chomp
puts 'Adicione o valor associado a chave'
value = gets.chomp

hash[:"#{key}"] = "#{value}"

hash.each do |key, value|
    puts "Uma das chaves é #{key} e o seu valor é #{value}"
end