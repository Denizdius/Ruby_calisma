class Gear
    attr_reader :type

    def initialize(gear_type = '')
        set_gear(gear_type)
    end

    private 
    
    def valid_gear_type?(type)
        %w[automatic half\ automatic manuel].include? type.downcase
    end

    def set_gear(type)
        if valid_gear_type?(type)
            @type = type.capitalize
        else
            type == '' ? @type = nil : (raise InvalidGearTypeError)
        end
    end
end

class InvalidGearTypeError < StandardError
    def message
        "Invalid gear type. Check your enterings."
    end
end