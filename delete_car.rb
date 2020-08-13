require_relative 'car_lot'
require_relative 'car'

class DeleteCar

    def initialize
        car_id = gets.chomp
        car_index = @inventory.index(car_id)

        if car_index
            @inventory.delete_at(car_index)
            puts "Car #{car.object_id} removed "
        else
            puts "Car not found."
        end
    end

end
