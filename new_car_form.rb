require_relative 'car'
require_relative 'car_lot'

puts "Let's add a car!"

car1 = Car.new
car2 = Car.new

lot1 = CarLot.new
lot1.add_car(car1)
lot1.add_car(car2)
puts "First car in inventory:"
puts lot1.inventory[0]







