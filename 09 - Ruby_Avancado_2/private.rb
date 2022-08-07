class Foo
    def call_private
        bar
        # Via self NÃO funcionaria
        # self.bar
    end

    private # protege métodos de serem
            # chamados direto na instancia
        def bar
            puts "private method"
        end
end

foo = Foo.new

# foo.call_private

foo.bar
# Retorna um erro, pois somente a própria
# classe pode chamar bar dentro do
# método público "call_private"