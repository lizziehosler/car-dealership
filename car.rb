class Car 
    attr_accessor :year, :color, :make, :model, :price
    
    def car_info
        "Year: #{@year} \nColor: #{@color} \nMake: #{@make} \nModel: #{@model} \nPrice: $#{@price} "
    end

end