hash = {
    'A' => 10,
    'B' => 30,
    'C' => 20,
    'D' => 25,
    'E' => 15
}

greatest_key = ''
greatest_value = 0

hash.each do |key, value|
    if value > greatest_value
        greatest_value = value
        greatest_key = key
    end
end

puts "A chave do maior elemento é #{greatest_key} e seu valor é #{greatest_value}"
