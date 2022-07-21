input = []

puts 'Insira um número'
input.push( gets.chomp.to_i )

puts 'Insira outro número'
input.push( gets.chomp.to_i )

puts 'Insira mais um número'
input.push( gets.chomp.to_i )

squareOf = []

squareOf = input.map do |value|
    value * value
end

i = 0

squareOf.each do |value|
    puts "#{input[i]} elevado ao quadrado é #{value}"
    i = i + 1
end
