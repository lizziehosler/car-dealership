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

        # made a sell/delete car method
        def sell_car
            # car inventory has zero cards will display no cars for sale
            if @inventory.size <= 0
                puts "No cars for sale"
            else
                # car inventory has at least 1 car display an easily viewable format of the vehicles in the inventory
                # .each_with_index lets us create a number list/index the cars basically the i+1 is because we first position
                # always starts with 0, so first car will be #1 in the list, then 2, etc...
                puts "Which car do you want to sell?"
                @inventory.each_with_index do |car, i|
                    puts "#{i + 1}. #{car.year} #{car.make} #{car.model} #{car.color}"
                end
                # get the resonse from the user
                input = gets.chomp.to_i
                # the response is not a number in the list or the # 0 since technically that first car in the list is in position 0, we let the user know the car
                # does not exist and return them to the main menu
                puts input
                if input > @inventory.size || input <= 0
                    puts "That car does not exist"
                    puts "You've been returned to the main menu"
                    return
                end
            end

            # remember indexes of arrays always start with 0, but we added +1 to the index so our list started with 1
            # set car_to_delete to be users input -1 to get the actual cars place in the array
            car_to_delete = @inventory[input - 1]
            #after the car is deleted the info down here won't be available since car is gone, so lets set it now
            # so after deletion we can give a message that the car has sold for x price and what car it was
            info = "#{car_to_delete.year} #{car_to_delete.color} #{car_to_delete.make} #{car_to_delete.model}"
            price = "$#{car_to_delete.price}"

            @inventory.delete(car_to_delete)
            puts "The following car has been sold for #{price} \n #{info} \nYou have been returned to the main menu!"
        end


    end
end