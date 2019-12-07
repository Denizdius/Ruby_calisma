 class Engine_cooling_system
        attr_reader :type
    
        def initialize(engine_cooling_system_type = '')
            if valid_fuel_type?(engine_cooling_system_type)
                @type = engine_cooling_system_type.capitalize
            else
                engine_cooling_system_type == '' ? @type = nil : (raise InvalidEnginecoolingsystemTypeError)
            end
        end
    
        private 
        
        def valid_engine_cooling_system_type?(type)
            %w[air liquid ].include? type.downcase
        end
    end
    
    class InvalidEnginecoolingsystemTypeError < StandardError
        def message
            "Invalid engine cooling system type. Check your enterings."
        end
    end