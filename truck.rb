class Truck
    attr_accessor :year, :make, :model, :color, :price, :engine_type, :transmission, :towing_capacity, :bed_length

    def ask_truck_question(feature)
        puts "What is the truck's #{feature}?"
        gets.chomp
    end

    def initialize
        @year = ask_truck_question("year")
        @make = ask_truck_question("make")
        @model = ask_truck_question("model")
        @color = ask_truck_question("color")
        @price = ask_truck_question("price")
        @engine_type = ask_truck_question("engine type")
        @transmission = ask_truck_question("transmission")
        @towing_capacity = ask_truck_question("towing capacity")
        @bed_length = ask_truck_question("bed length")
    end

    def to_s
        "Truck: #{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}.
        It has a(n) #{@transmission} #{@engine_type} engine that can haul #{towing_capacity} pounds.
        It is equipped with a truck bed of #{bed_length} inches in length."
    end
end

 
