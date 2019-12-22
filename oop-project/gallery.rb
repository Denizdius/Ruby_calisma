class Gallery
    @@current_id = 1
    attr_reader :vehicles
    
    def initialize(owner)
        @owner = owner
        @vehicles = []
    end

    def add_vehicles(*vehicles)
        vehicles.map! do |v| 
            v.id_number = @@current_id 
            @current_id += 1
        end
       @vehicles << vehicles
       @vehicles.flatten!
    end

    def remove_vehicle()
    
    end

    def land_vehicles
        return @vehicles.select {|v| v.is_a? LandVehicle}
    end

    def sea_vehicles
        return @vehicles.select {|v| v.is_a? SeaVehicle}
    end

    def air_vehicles
        puts "Deniz will code"
    end
end