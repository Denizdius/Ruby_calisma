class LandVehicle < Vehicle
    @@count = 0

    def initialize(options = {})
         @gear = Gear.new(options[:gear])
         default = {
            gear: ''
            side_mirors_count: 0
        }
        
    
        super(options)

         set_gear(options[:gear])
         set_side_mirors_count(option[:side_mirors_count))
            @@count += 1
    end

    def has_side_mirors?
        !@side_mirors.nil?
    end
    
    def side_mirors_count
        has_side_mirors? ? @side_mirors.count : 0
    end

    def gear
        @gear.type.nil? ? 'NA' : @gear.type
    end

    def self.count
        @@count
    end

    def info
        super
        puts "Ben bir kara aracıyım."
    end
end

private

def set_side_mirors(count)
    if count > 0
        side_mirors = Side_Mirors.new(count: count)
    else
        @side_mirors = nil
    end
end

def set_gear(type)
    @gear = Gear.new(type)
end

