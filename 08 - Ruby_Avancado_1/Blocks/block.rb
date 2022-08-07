=begin

# Colchetes são utilizados para blocos
# que ocupam apenas uma linha.
5.times { puts "Exec the block" }

=end

#-------------------------------------------------#

=begin

# Barras verticais são utilizadas para
# passar parâmetros para um bloco.
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum

=end

#-------------------------------------------------#

=begin

# 'Do..end' é utilizado em blocos com várias linhas
foo = {2 => 3, 4 => 5}
 
foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '---'
end

=end

#-------------------------------------------------#

=begin

# Um bloco pode ser passado como  argumento
# implícito de um método.
# Depois, para chamar dentro do método o bloco
# que foi passado utilize a palavra yield.
def double
    # Call the block
    yield
    yield
end

double { puts "Exec the block" }

=end

#-------------------------------------------------#

# Também é possível receber blocos como parâmetro
# utilizando o símbolo '&', para que o bloco seja
# executado é necessário utilizar o nome do bloco
# acompanhado do método ".call"
def foo(name, &block)
 @name = name
 block.call
end
 
foo('Leonardo') { puts "Hellow #{@name}" }
