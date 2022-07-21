estados = []

estados.push('Espírito Santo')
estados.push('Rio Grande so Sul') # Erro proposital
estados.push('Minas Gerais', 'Rio de Janeiro', 'Sao Paulo')
# Push insere um elemento ao fim do array

# Usando o insert você escolhe em qual posição vai inserir o elemento
estados.insert(0, 'Acre', 'Amapá')
# Insere na posição 0 do array os elementos Acre e Amapá
estados.insert(2, 'Ceará')

# puts estados[4] # Escreve o 5° elemento do vetor

estados[4] = 'Rio Grande do Sul' # Acessa a posição e modifica seu conteúdo

# puts estados[0..3]
# Escreve os elementos da posição 0 até a 3

# puts estados[-1] # Acessa a última posição do array
# puts estados[-2] # Acessa a penúltima posição do array
# puts estados[-3] # Acessa a antepenúltima posição do array

# puts estados[-3..-1] # Escreve os números com a lógica negativa

# puts estados.first # Retorna o primeiro elemento
# puts estados.last  # Retorna o úlitmo elemento

# puts estados.count # Retorna o tamanho do Array

# puts estados.empty? # Retorna boolean sobre o array estar vazio ou não

# puts estados.include?('São Paulo') # Retorna boolean sobre
# puts estados.include?('Santa Catarina') # existencia do elemento

puts estados
    estados.delete_at(2) # Deleta elemento em uma dada posição
puts "\n #{estados}"
    estados.shift # Remove primeiro elemento
puts "\n #{estados}"
    estados.pop # Remove último elemento
