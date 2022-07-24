=begin
def talk
    puts 'Olá, como você está?'
end

talk
talk
talk
=end

=begin
def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = 'Marcus'
last_name = 'Martins'

talk(first_name, last_name)
# Por padrão, dá erro se algum parâmetro ficar faltando,
# ao contrário do Javascript

talk('George', 'Washington')
=end

def signal(color = 'vermelho')
    puts "O sinal está #{color}"
end

signal # Por padrão o parâmetro será vermelho

color = 'verde'
signal(color) # É passado um parâmetro que altera o padrão
