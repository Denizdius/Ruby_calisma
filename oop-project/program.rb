require_relative 'libraries.rb'

gallery_denisse = Gallery.new("Deniz Karabacak")
gallery_denisse.add_vehicles(
    LandVehicle.new(
        wheels_count: 3, 
        fuel: 'diesel', 
        seats_count: 1,
        acs_count:1,
        wheel_drive:'awd'),
    LandVehicle.new(
        wheels_count: 0, 
        fuel: 'gas', 
        seats_count:2, 
        acs_count:3, 
        engine_cooling_system: 'air'),
    LandVehicle.new(
        wheels_count: 0, 
        acs_count:5),
    LandVehicle.new(wheels_count: 5),
    SeaVehicle.new(sail_count: 3),
    AirVehicle.new(
        wings: 3, 
        air_engine: 'jet engine')
)

gallery_denisse.vehicles.each do |lv|
    lv.info
end

gallery_denisse.remove_vehicle(3)
gallery_denisse.remove_vehicle(4)
gallery_denisse.remove_vehicle(5)

puts "-------------------------------"
puts "-------------------------------"
gallery_denisse.vehicles.each do |lv|
    lv.info
end

puts "-------------------------------"
puts "-------------------------------"
puts "-------------------------------"
puts "-------------------------------"

gallery_denisse.find_vehicle(2).info

puts "Total #{gallery_denisse.vehicles.count} vehicles owned."