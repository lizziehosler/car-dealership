require_relative 'car'
require_relative 'used_car'
require_relative 'add_car'

module CarDealership
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

            @inventory.each_with_index do |car, i|
                puts "\nCar ID: #{i + 1} "
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

        def sell_car
            if @inventory.size <= 0
                puts "No cars for sale"
            else
                puts "Which car do you want to sell?"
                @inventory.each_with_index do |car, i|
                    puts "#{i + 1}. #{car.year} #{car.make} #{car.model} #{car.color}"
                end
                input = gets.chomp.to_i
                puts input
                if input > @inventory.size || input <= 0
                    puts "That car does not exist"
                    puts "You've been returned to the main menu"
                    return
                end
            end
            car_to_delete = @inventory[input - 1]
            info = "#{car_to_delete.year} #{car_to_delete.color} #{car_to_delete.make} #{car_to_delete.model}"
            price = "$#{car_to_delete.price}"

            @inventory.delete(car_to_delete)
            puts "The following car has been sold for #{price} \n #{info} \nYou have been returned to the main menu!"
        end


    end
end