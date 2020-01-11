class AirVehicle < Vehicle
    def initialize(options = {})
        necessaries = {
            wheel_drive: ''
        }

        default = {
            fuel: "gas"
            engine_cooling_system: "air"
            wings:''
            air_engine_type:''
        }

        default.merge(options).merge!(necessaries)

        @wings = Wings.new(count: options[:wings_count])
        @air_engine_type = Air_Engine.new(options[:air_engine])


        super(options)
    end
    def has_wings?
        !@wings.count.zero?
    end

    def air_engine
        @air_engine.type.nil? ? 'NA' : @air_engine.type
    end
    
    def info
        super
        puts "Wings Count: #{@wings.count}"
        puts "Air_Engine: #{air_engine}"
        puts "Vehicle Type: Air"
        puts "---------------------------"
    end
end

