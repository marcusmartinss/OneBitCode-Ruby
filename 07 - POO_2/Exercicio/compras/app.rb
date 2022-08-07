require_relative 'produto'
require_relative 'mercado'

guaranaJesus = Produto.new
guaranaJesus.nome = 'Guarana Jesus'
guaranaJesus.preco = '8.50'

mercadinhoBigBom = Mercado.new(guaranaJesus.nome, guaranaJesus.preco).comprar