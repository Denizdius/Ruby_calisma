class LandVehicle < Vehicle
    @@count = 0

    def initialize(options = {})
        default = {
            gear: 'automatic',
            side_mirors_count: 0
        }

        options = default.merge(options)
        
        @gear = Gear.new(options[:gear])
        @side_mirors = Side_Mirors.new(count: options[:side_mirors_count])
    
        super(options)
        
        @@count += 1
    end

    def has_side_mirors?
        !@side_mirors.count.zero?
    end

    def gear
        @gear.type.nil? ? 'NA' : @gear.type
    end

    def self.count
        @@count
    end

    def info
        super
        puts "Gear Type: #{@gear.type}"
        puts "Side Mirrors: #{@side_mirors.count}"
        puts "Vehicle Type: Land"
        puts "---------------------------"
    end
end
