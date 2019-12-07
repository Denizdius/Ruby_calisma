class Vehicle
    def initialize(wheels_count: 0, fuel: '', seats_count:0,acs_count:0,wheel_drive:'',engine_cooling_system:'')
        set_wheels(wheels_count)
        set_fuel(fuel)
        set_seats(seats_count)
        set_acs(acs_count)
        set_wheel_drive(wheel_drive)
        set_engine_cooling_system(engine_cooling_system)
        # @engine = Engine.new(type: "unspecified")
    end

    def has_wheels?
        !@wheels.nil?
    end
    
    def wheels_count
        has_wheels? ? @wheels.count : 0
    end

    def fuel
        @fuel.type.nil? ? 'NA' : @fuel.type
    end

    def info
        puts "---------------------------"
        puts "Wheels: #{wheels_count}"
        puts "Fuel: #{fuel}"
        puts "Seats: #{seats_count}"
        puts "Acs: #{acs_count}"
        puts "Wheel Drive System : #{wheel_drive}"
        puts "---------------------------"
    end
    def has_seats?
        !@seats.nil?
    end
    
    def seats_count
        has_seats? ? @seats.count : 0
    end
    def has_acs?
        !@acs.nil?
    end
    
    def acs_count
        has_acs? ? @acs.count : 0
    end

    def wheel_drive
        @wheel_drive.type.nil? ? 'NA' : @wheel_drive.type
    end

    def engine_cooling_system
        engine_cooling_system.type.nil? 'NA':engine_cooling_system.type
    end

        
    private

    def set_wheels(count)
        if count > 0
            @wheels = Wheel.new(count: count)
        else
            @wheels = nil
        end
    end

    def set_fuel(type)
        @fuel = Fuel.new(type)
    end

    def set_seats(count)
        if count > 0
            @seats = Seat.new(count: count)
        else
            @seats = nil
        end
    end
    def set_acs(count)
        if count > 0
            @acs = Ac.new(count: count)
        else
            @acs = nil
        end
    end
    def set_wheel_drive(type)
        @wheel_drive = Wheel_drive.new(type)
    end
    def set_engine_cooling_system(type)
        @engine_cooling_system = Engine_cooling_system.new
    end

end