loop do
    puts 'Qual operação deseja realizar: '
    puts '1 - Adição'
    puts '2 - Subtração'
    puts '3 - Multiplicação'
    puts '4 - Divisão'
    puts '5 - Sair'

    option = gets.chomp.to_i

    if option == 5
        puts 'Volte sempre!'
        break
    end

    puts 'Qual o primeiro numero da operação?'
    num1 = gets.chomp.to_i
    puts 'Qual o segundo numero da operação?'
    num2 = gets.chomp.to_i

    case option
    when 1
        result = num1 + num2
        operation = 'adição'
    when 2
        result = num1 - num2
        operation = 'subtração'
    when 3
        result = num1 * num2
        operation = 'multiplicação'
    when 4
        result = num1 / num2
        operation = 'divisão'
    end

    puts "O resultado da #{operation} entre #{num1} e #{num2} é #{result}"

end