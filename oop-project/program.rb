require_relative 'vehicle.rb'
require_relative 'wheel.rb'
require_relative 'fuel.rb'
require_relative "seat.rb"

v1 = Vehicle.new(wheels_count: 3, fuel: 'diesel',seats_count:1 )
v1.info

v2 = Vehicle.new(wheels_count: 0, fuel: 'gas',seats_count:2)
v2.info

v3 = Vehicle.new(wheels_count: 0)
v3.info