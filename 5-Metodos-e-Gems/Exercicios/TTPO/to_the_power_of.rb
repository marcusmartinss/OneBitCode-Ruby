loop do
    puts "\nInsira um valor inteiro:"
    value = gets.chomp.to_i.ceil(2)
    puts 'Este valor será elevado a qual potência inteira?'
    power = gets.chomp.to_i.ceil(2)
    # 'ceil(2)' mantém duas casas decimais de arredondamento
    result = value**power
    result.ceil(2)

    puts "\nO valor #{value} elevado a #{power} resulta em #{result}"

    choice = 3
    while choice != 1 && choice != 2
        puts "\nDeseja realizar a operação novamente?\n   1 - Sim\n   2 - Não"
        choice = gets.chomp.to_i

        if choice != 1 && choice != 2
            puts "Valor inválido! Tente novamente."
        end
    end

    if choice == 2
        break
    end
end