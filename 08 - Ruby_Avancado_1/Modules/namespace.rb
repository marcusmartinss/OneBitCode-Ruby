module ReverseWorld
    def self.puts text
        print text.reverse.to_s
    end
end

# Chama o módulo e, para evitar sobrescrever
# o "puts" padrão, ele foi inserido dentro
# do module, pois está dentro de um namespace,
# um espaço de nomes que não conflita com os
# nomes padrões da linguagem

=begin 

ReverseWorld::puts 'O resultado é'
puts "\nO resultado é"

=end


module NormalWorld
    def self.puts text
        print text
    end

    class Imprimir
        def call text
            puts "---Imprimir---\n"
            puts text
        end
    end
end

=begin 

ReverseWorld::puts 'O resultado é'
NormalWorld::puts "\nO resultado é"

=end

imprimir = NormalWorld::Imprimir.new
imprimir.call 'O resultado é'
