class Car 
    attr_accessor :year, :color, :make, :model, :price

    def ask_car_question(feature)
        puts "What is the car's #{feature}?"
        gets.chomp
    end

    def initialize
        @year = ask_car_question("year")
        @make = ask_car_question("make")
        @model = ask_car_question("model")
        @color = ask_car_question("color")
        @price = ask_car_question("price")
    end

    def to_s
        puts "Car: #{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}"
    end

end