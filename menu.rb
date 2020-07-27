require_relative 'car'
require_relative 'car_lot'

module Menu
    attr_reader :start_menu
    def self.start_menu(lot)
        puts "Let's get started. Would you like to:
            1. Add a car
            2. View inventory"
        @answer = gets.chomp

        case @answer
        when "1"
            lot.add_car(@answer)
        when "2"
            lot.list_inventory
        else  
            puts "Please select option 1 or 2."
        end
    end
end