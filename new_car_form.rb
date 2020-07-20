puts "Let's add a car!"

class CarLot
    attr_accessor :inventory 
    def initialize
        @inventory = []
    end

    def add_car(car)
        @inventory.push(car)

        puts "Inventory:"

        @inventory.each do |car|
            puts car
        end
    end

end

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

car1 = Car.new
car2 = Car.new

lot1 = CarLot.new
lot1.add_car(car1)
lot1.add_car(car2)
puts "First car in inventory:"
puts lot1.inventory[0]







