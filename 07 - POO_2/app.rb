# require './animal/animal.rb'
require_relative './Animal/animal'
require_relative './Animal/dog'

puts '--Animal--'

animal = Animal.new
animal.pular

puts "\n--Cachorro--"
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
