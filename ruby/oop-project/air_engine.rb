class Air_Engine
    attr_reader :type

    def initialize(air_engine_type = '')
        if valid_air_engine_type?(air_engine_type)
            @type = air_engine_type.capitalize
        else
            air_engine_type == '' ? @type = nil : (raise InvalidAirEngineTypeError)
        end
    end

    private 
    
    def valid_air_engine_type?(type)
        %w[jet\ engine propeller\ engine wind\ based ].include? type.downcase
    end
end

class InvalidAirEngineTypeError < StandardError
    def message
        "Invalid air engine type. Check your enterings."
    end
end