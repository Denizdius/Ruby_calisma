class Gallery
    attr_reader :vehicles
    
    @@current_id = 1
    
    def initialize(owner)
        @owner = owner
        @vehicles = []
    end

    def add_vehicles(*vehicles)
        vehicles.map! do |v| 
            v.id_number = @@current_id 
            @@current_id += 1
            v
        end
       @vehicles << vehicles
       @vehicles.flatten!
    end

    def find_vehicle(vehicle_id)
        @vehicles.select {|v| v.id_number == vehicle_id}.first
    end


    def remove_vehicle(vehicle_id)
        @vehicles.delete_if {|v| v.id_number == vehicle_id}
        puts "Vehicle(#{vehicle_id}) was deleted!"
    end

    def land_vehicles
        return @vehicles.select {|v| v.is_a? LandVehicle}
    end

    def sea_vehicles
        return @vehicles.select {|v| v.is_a? SeaVehicle}
    end

    def air_vehicles
        return @vehicles.select {|v| v.is_a? AirVehicle}
    end
end