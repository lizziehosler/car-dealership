class Car 
    attr_accessor :year, :color, :make, :model, :price

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

    def to_s
        "Car: #{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}"
    end

end