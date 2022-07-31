capitalized = -> (name) {
    nameC = name.capitalize
    puts "O nome #{name} foi alterado para #{nameC}"
}

def capitalize_name(someLambda, name)
    puts someLambda.call(name)
end

capitalize_name(capitalized, "joão")
capitalize_name(capitalized, "maria")
