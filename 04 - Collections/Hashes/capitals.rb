capitais = Hash.new # Cria um hash vazio
    # Também pode ser criado com:
    # capitais = {}

# Um Hash também pode ser iniciado com
# vários pares de chave-valor
capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo' }

# puts "#{capitais}\n"

# Para adicionar um novo valor ao Hash
capitais[:minas_gerais] = 'Belo Horizonte'

puts "#{capitais}\n"

# Para exibir as chaves do Hash
# puts capitais.keys

# Para exibir os valores dentro do Hash
# puts capitais.values

# Para excluir um elemento é passada sua chave
# capitais.delete(:acre)

# puts capitais

# Para acessar o valor pela chave do elemento
# puts capitais[:minas_gerais]

# Para retornar o tamanho do hash
# puts capitais.size

# Para retornar se o hash é vazio ou não
# puts capitais.empty?
