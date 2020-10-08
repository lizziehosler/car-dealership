require_relative 'car_lot'
require_relative 'car'

module CarDealership
    class UsedCar < CarDealership::Car
        attr_accessor :year, :color, :make, :model, :price

        def initialize(year, color, make, model, price)
            @year = year
            @color = color
            @make = make
            @model = model
            @price = price
        end

    end
end