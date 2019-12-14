class Gear
    attr_reader :type

    def initialize(gear_type = '')
        if valid_gear_type?(gear_type)
            @type = gear_type.capitalize
        else
            gear_type == '' ? @type = nil : (raise InvalidGearTypeError)
        end
    end

    private 
    
    def valid_gear_type?(type)
        %w[automatic half_automatic manuel].include? type.downcase
    end
end

class InvalidGearTypeError < StandardError
    def message
        "Invalid gear type. Check your enterings."
    end
end