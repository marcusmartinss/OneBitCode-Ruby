=begin 
def compare(a, b)
    a > b
end

# O último valor da função será retornado, quando é chamado
# retorna o valor da comparação, nesse caso

a = 6
b = 2

result = compare(a, b)
# 'result' pega o boolean resultante da comparação

puts "O resultado da comparação é #{result}"
=end

def retorno
    return 115
    # "Hello"
    12
end

# Quando o programa encontra o 'return' dentro de um método
# ele retorna aquele valor na hora e para de executar

puts retorno