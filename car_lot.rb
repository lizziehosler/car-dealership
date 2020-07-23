require_relative 'car'

class CarLot
    attr_accessor :inventory

    def initialize
        @inventory = []
    end

    def add_vehicle(vehicle)
        @inventory.push(vehicle)

        puts "Inventory:"
        @inventory.each do |vehicle|
            puts vehicle
        end
    end

end