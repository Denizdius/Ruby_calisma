class Vehicle
    def initialize(wheels_count: 0, fuel: '')
        set_wheels(wheels_count)
        set_fuel(fuel)
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
        puts "---------------------------"
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
end