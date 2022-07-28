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

