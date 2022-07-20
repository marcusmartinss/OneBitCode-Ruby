puts 'Digite o número do mês em que você nasceu?'

month = gets.chomp.to_i

case month
when 1..3 # Forma de descrever um intervalo considerando os extremos
    puts 'Você nasceu no começo do ano'
when 4..6
    puts 'Você nasceu no segundo trimestre'
when 7..9
    puts 'Você nasceu no terceiro trimestre'
when 10..12
    puts 'Você nasceu no final do ano'
end