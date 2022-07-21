aulas = {
    'Aula 1' => 'liberada',
    'Aula 2' => 'liberada',
    'Aula 3' => 'liberada',
    'Aula 4' => 'liberada',
    'Aula 5' => 'em breve'
} 

# São passados dois campos, e o método infere que o
# primeiro parâmetro é a chave e o segundo o valor
aulas.each do |key, value|
    puts "#{key} #{value}"
end