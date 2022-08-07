class Car

    def get_km (sample_text)
        find_km(sample_text)
    end

    private

        def find_km(text)
            regex_template = %r{\d\dkm\/h}
            found = regex_template.match(text)
            if found
                puts "Foi encontrado o padrão XXkm/h"
            else
                puts "Não foi encontrado o padrão"
            end
        end
end

fusca_amarelo = Car.new

fusca_amarelo.get_km("Um fusca de cor amarela viaja a 80km/h")
