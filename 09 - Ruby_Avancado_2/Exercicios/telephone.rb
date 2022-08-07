sample_text = "Olá, tudo bem? Meu whats app é (99) 7 4321-1234"

exists = Regexp.new('\(\d{2}\) \d \d{4}-\d{4}').match(sample_text)

if exists
    puts "O telefone é válido para a expressão (XX) X XXXX-XXXX"
end
