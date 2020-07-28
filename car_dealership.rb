require_relative 'car_lot'
require_relative 'menu'

lizzies_lot = CarLot.new
car1 = Car.new
lizzies_lot.add_car(car1)
Menu.start_menu(lizzies_lot)


#lizzies_lot.add_car(car1)
#lizzies_lot.add_car(car2)
#puts "First car in inventory:"
#puts lizzies_lot.inventory[0]