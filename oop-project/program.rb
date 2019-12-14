require_relative 'libraries.rb'

v1 = Vehicle.new(wheels_count: 3, fuel: 'diesel', seats_count:1, acs_count:1, wheel_drive:'awd' )
v1.info

v2 = Vehicle.new(wheels_count: 0, fuel: 'gas', seats_count:2, acs_count:3, engine_cooling_system: 'air')
v2.info

v3 = Vehicle.new(wheels_count: 0, acs_count:5)
v3.info

v4 = LandVehicle.new(wheels_count: 5)
v4.info

v5 = SeaVehicle.new(sail_count:3)
v5.info
puts "Total #{Vehicle.count} vehicles owned."