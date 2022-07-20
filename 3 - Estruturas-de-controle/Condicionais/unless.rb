product_status = 'closed'

unless product_status == 'open' # O unless é como um if,
    check_change = 'can'        # mas invertido, pode ser
else                            # escrito também como 
    check_change = 'can not'    # if not condicao.
end

puts "You #{check_change} change the product"