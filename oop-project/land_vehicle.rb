class LandVehicle < Vehicle
    @@count = 0

    def initialize(options = {})
        # @gear = Gear.new(options[:gear])
    
        super(options)

        # set_gear(options[:gear])
    end

    def self.count
        @@count
    end

    def info
        super
        puts "Ben bir kara aracıyım."
    end
end

