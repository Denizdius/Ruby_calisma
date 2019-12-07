class SeaVehicle < Vehicle
    @@count = 0

    def initialize(options = {})
        necessaries = {
            wheels_count: 0,
            wheel_drive: ''
        }

        default = {
            sail: ''
        }

        default.merge(options).merge!(necessaries)
        super(options)

        # set_sail(options[:sail])
    end

    def self.count
        @@count
    end

    def info
        super
        puts "Ben bir su aracıyım."
    end
end

