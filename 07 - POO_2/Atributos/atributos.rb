class Dog 

    #
    #   # Como se fosse um Get de Java
    #   def name # Retorna o valor da variável de instancia '@name'
    #       @name 
    #   end
    #   
    #   # Como se fosse um Set de Java
    #   def name= dogName # Define o valor apara o atributo da direita
    #       @name = dogName # Adiciona e altera informação
    #   end
    #

    attr_accessor :name, :age
    # O método chamado attr_accessor que cria
    # os métodos var e var= para todos atributos declarados.

end
    
dog = Dog.new 
    
dog.name = 'Marlon'
    
puts dog.name
