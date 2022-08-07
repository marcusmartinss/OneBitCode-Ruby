class Computer
    def turn_on
        puts 'Turning on the computer...'
    end
    
    def shutdown
        puts 'Shutting down the computer...'
    end
end

# Foi criada a classe Computer com os
# métodos 'turn_on' e 'shutdown'

# Criando um objeto 'computer' a partir da clase 'Computer'
computer = Computer.new
# computer.shutdown
computer.turn_on # Chamando os métodos da classe no objeto

# Neste programa foram utilizados dois
# pilares da programação orientada a objetos:
#    Abstração -> representando o objeto Computer em uma classe;
#    Encapsulamento -> dividindo o projeto em pequenas partes.