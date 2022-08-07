array = [1, 2, 3, 4]

# '\n' é o comando para quebras de linha
puts "\n Executando .map multiplicando cada item por 2"

# .map não altera o conteúdo do array original
new_array = array.map do |a|
    a * 2
end

puts "\n Array original"
puts " #{array}"

puts "\n Novo array"
puts " #{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"

# .map! força que o conteúdo do array original seja alterado
array.map! do |a|
    a * 2
end

puts "\n Array original"
puts " #{new_array}"
puts ''