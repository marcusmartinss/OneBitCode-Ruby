class Animal 
    def pular
        puts 'Toing! Tóim! Bóim! Póim!'
    end
    
    def dormir
        puts 'ZzZzzz!'
    end
end
    
class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end
    
cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir

# Cachorro é um objeto que possui todos os comportamentos
# existentes na classe animal (pular e respirar),
# então ele herda esta classe.

# Sendo assim, é possível executar os métodos pular e
# respirar através de um objeto Cachorro.
