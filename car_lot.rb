require_relative 'car'
require_relative 'used_car'
require_relative 'add_car'

class CarLot
    attr_accessor :inventory

    def initialize
        @inventory = [
            UsedCar.new(2012, "Black", "Ford", "Escape", 10000),
            UsedCar.new(2006, "Silver", "Honda", "Civic", 5000),
            UsedCar.new(2008, "White", "Kia", "Sportage", 7000),
            UsedCar.new(2016, "Blue", "Subaru", "Outback", 20000)
        ]
    end

    def list_inventory
        puts "\nInventory:"

        @inventory.each do |car|
            puts "\nCar ID: #{car.object_id} "
                puts "----------"
                puts car.car_info
            puts ""
        end
    end

    def add_to_lot(car)
        @inventory.push(car)
        puts "New car added!"
        puts car.car_info
    end

end