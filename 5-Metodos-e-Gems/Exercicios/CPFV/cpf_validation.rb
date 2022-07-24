require 'cpf_cnpj'

number_input = gets.chomp # Recebe o valor do input
number = CPF.new(number_input) # Cria um CPF no formato da Gem com o número inserido

valid = CPF.valid?(number_input) # 'valid' recebe o boolean de validação do número

if valid == true
    valid = "é válido"
else
    valid = "não é válido"
end

puts "O cpf #{number.formatted} #{valid}"
# '.formatted' formata o número inserido como xxx.xxx.xxx-xx