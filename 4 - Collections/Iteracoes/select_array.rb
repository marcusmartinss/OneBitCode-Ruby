array = [1, 2, 3, 4, 5, 6]

# Select seleciona elementos que satisfaçam a condição do
# seu interior e passam para um outro array
selection = array.select do |a|
    a >= 4
end

puts selection