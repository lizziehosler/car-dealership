require_relative 'Car'

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