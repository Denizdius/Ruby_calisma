class AirVehicle < Vehicle
    attr_accessor :id_number

    def initialize(options = {}) 
        default = {
            fuel: "gas",
            engine_cooling_system: "air",
            wings_count: 0,
            air_engine:''
        }

        options = default.merge(options)

        @wings = Wings.new(options[:wings_count])
        @air_engine = Air_Engine.new(options[:air_engine])


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
        puts "Air_Engine: #{@air_engine.type}"
        puts "Vehicle Type: Air"
        puts "---------------------------"
    end
end

