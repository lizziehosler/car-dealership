require_relative 'car'
require_relative 'menu'

class CarLot
    attr_accessor :inventory 
    def initialize
        @inventory = []
    end

    def add_car(car)
        car = Car.new
        @inventory.push(car)
    end

    def list_inventory
        puts "Inventory:"

        @inventory.each do |car|
            puts car
        end
    end

end