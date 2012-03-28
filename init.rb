require_relative "airplane"
require_relative "airport"
require_relative "runaway"

airplane1 = Airplane.new
airplane2 = Airplane.new
airplane1.altitude=(100)


domodedovo = Airport.new("domodedovo", "DME")

run = Runway.new(35, "beton", 120, 150, 200, domodedovo)
run2 = Runway.new(33, "beton", 1200, 1500, 1200, domodedovo)

run.receive_airplane(airplane1)
puts run.airplane
puts "Flight " + airplane1.name + " landed at " + airplane1.airport.code

run.depart_airplane(airplane1)
puts airplane1.airport


 
