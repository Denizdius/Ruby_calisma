# wheels_count
# engine_power

# Soyut
# Blueprint
class Vehicle
    # Encapsulation (Sarmalama)
    # write only
    # attr_writer :wheels_count

    # read only
    # attr_reader :wheels_count

    # read and write
    # attr_accessor :wheels_count
    
    # Properties and Methods


    # def wheels_count=(count)
    #     # Instance variable
    #     @wheels_count = count if count > 0
    # end

    # def wheels_count
    #     "Bu araçta #{@wheels_count} adet tekerlek bulunmaktadır." 
    # end

    # Constructor
    def initialize(wheels_count:, engine:)
        # Ternary operator
        @wheels_count = wheels_count > 0 ? wheels_count : 4
        @engine = Engine.new(type: "unspecified")
    end

    def print_information
        puts "Object ID: #{self.object_id}"
        puts "Wheels Count: #{@wheels_count}"
    end

    def engine(type:, cylinder:)
        @engine = new Engine(type, c)
    end
end

class Engine
    def initialize(type:, cylinder:)

    end
end

class LandVehicles:Vehicle
end

class Automobile:LandVehicles
end

class Chopper:AirVehicles
end

class Engine
    @
end

class DieselEngine:Engine

end


# Object creation
v1 = Vehicle.new(-3)
pp v1
v1.print_information

v2 = Vehicle.new(5)
pp v2
v2.print_information
