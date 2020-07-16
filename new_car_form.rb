puts "Let's add a car!"

class Car 
    attr_accessor :year, :color, :make, :model, :price
    def to_s
        "#{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}"
    end

    def ask_question(value)
        puts "What is the car's #{value}?"
        gets.chomp
    end

    def initialize
        @year = ask_question("year")
        @make = ask_question("make")
        @model = ask_question("model")
        @color = ask_question("color")
        @price = ask_question("price")
    end
   
end

form1 = Car.new
puts form1


