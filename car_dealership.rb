require_relative 'car_lot'
require_relative 'car'
require_relative 'add_car'
require_relative 'used_car'
require_relative 'delete_car'

lizzies_lot = CarLot.new
#car1 = Car.new
#lizzies_lot.add_car(car1)


loop do 
    puts "\nLet's get started. Would you like to:
        1. Add a car
        2. View inventory
        3. Remove a car
        ('quit' to exit)"
    answer = gets.chomp.downcase

    case answer
    when "1"
        new_car = AddCar.new
        car = new_car.car
        lizzies_lot.add_to_lot(car)
    when "2"
        lizzies_lot.list_inventory
    when "3"
        puts "This option is not yet available."
        #puts "Please indicate which car you would like to remove:"
        #lizzies_lot.list_inventory
        #delete_car = DeleteCar.new
    when "quit", "exit"
        break
    else  
        puts "Please enter a number or 'quit'"
    end 
end
#lizzies_lot.add_car(car1)
#lizzies_lot.add_car(car2)
#puts "First car in inventory:"
#puts lizzies_lot.inventory[0]