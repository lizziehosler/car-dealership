require_relative 'car'
require_relative 'car_lot'

module CarDealership
    class AddCar
        attr_reader :car

        def ask_question(feature)
            puts "What is the car's #{feature}?"
            gets.chomp.capitalize
        end

        def initialize
            @car = Car.new
            @car.year = ask_question("year")
            @car.make = ask_question("make")
            @car.model = ask_question("model")
            @car.color = ask_question("color")
            @car.price = ask_question("price")
        end

    end
end
