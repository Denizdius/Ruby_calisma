require_relative 'vehicle.rb'
require_relative 'wheel.rb'
require_relative 'fuel.rb'
require_relative "seat.rb"
require_relative "ac.rb"
require_relative "wheel_drive.rb"
require_relative "engine_cooling_system.rb"

v1 = Vehicle.new(wheels_count: 3, fuel: 'diesel',seats_count:1,acs_count:1,wheel_drive:'awd' )
v1.info

v2 = Vehicle.new(wheels_count: 0, fuel: 'gas',seats_count:2,acs_count:3,engine_cooling_system: 'air')
v2.info

v3 = Vehicle.new(wheels_count: 0,acs_count:5)
v3.info