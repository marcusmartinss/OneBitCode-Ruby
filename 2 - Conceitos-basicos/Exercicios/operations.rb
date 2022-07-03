print "Insira o primeiro número: "
number_1 = gets.chomp.to_i

print "Insira o segundo número: "
number_2 = gets.chomp.to_i

puts "As 4 operações basicas entre esses números são: "
puts "#{number_1} + #{number_2} = #{number_1+number_2}"
puts "#{number_1} - #{number_2} = #{number_1-number_2}"
puts "#{number_1} * #{number_2} = #{number_1*number_2}"
puts "#{number_1} / #{number_2} = #{number_1.to_f/number_2}"
