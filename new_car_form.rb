require_relative 'car'
require_relative 'car_lot'
require_relative 'truck'


class NewCarForm
    def initialize
        puts "Let's add a vehicle! Is it a truck or car?"
        @vehicle_answer = gets.chomp
        case @vehicle_answer
        when "car"
            Car.new
        when "truck"
            Truck.new
        end
    end
end

vehicle1 = NewCarForm.new

lot1 = CarLot.new
lot1.add_vehicle(vehicle1)
puts "First car in inventory:"
puts lot1.inventory[0]




