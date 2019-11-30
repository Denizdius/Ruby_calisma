class Fuel
    attr_reader :type

    def initialize(fuel_type = '')
        if valid_fuel_type?(fuel_type)
            @type = fuel_type.capitalize
        else
            fuel_type == '' ? @type = nil : (raise InvalidFuelTypeError)
        end
    end

    private 
    
    def valid_fuel_type?(type)
        %w[diesel gas lpg electric hybrid].include? type.downcase
    end
end

class InvalidFuelTypeError < StandardError
    def message
        "Invalid fuel type. Check your enterings."
    end
end