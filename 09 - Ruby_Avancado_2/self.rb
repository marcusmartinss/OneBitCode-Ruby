=begin

class Foo
    def bar
        puts self
    end
end


foo = Foo.new

puts foo
foo.bar
# É retornada a instancia

=end

=begin

class Foo
    def self.bar
        puts self
    end
end
    
Foo.bar
# É retornado o nome do objeto

=end

class Pen
    attr_accessor :color
    
    def pen_color
        puts "The color is " + self.color
    end
end
    
pen = Pen.new
pen.color = "blue"
pen.pen_color
