class SeaVehicle < Vehicle
    attr_accessor :id_number
    
    def initialize(options = {})
        necessaries = {
            wheels_count: 0,
            wheel_drive: ''
        }

        default = {
            sail: ''
        }

        default.merge(options).merge!(necessaries)

        @sail = Sail.new(count: options[:sail_count])


        super(options)
    end
    def has_sail?
        !@sail.count.zero?
    end

    
    def info
        super
        puts "Sail Count: #{@sail.count}"
        puts "Vehicle Type: Sea"
        puts "---------------------------"
    end
end

