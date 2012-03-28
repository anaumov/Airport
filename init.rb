require_relative "airplane"
require_relative "airport"
require_relative "runaway"

airplane1 = Airplane.new
airplane2 = Airplane.new
puts airplane1.weight
puts airplane1.name
airplane1.altitude=(100)

puts airplane1.altitude

domodedovo = Airport.new("domodedovo", "DME")

run = Runaway.new(35, "beton", 120, 150, 200, domodedovo)
run2 = Runaway.new(33, "beton", 1200, 1500, 1200, domodedovo)

puts run.airport.name



run.receive_airplane(airplane1)
puts run.airplane

run.receive_airplane(airplane2)

run.depart_airplane(airplane1)
puts run.airplane

run.depart_airplane(airplane1)
puts run.airplane


run.receive_airplane(airplane2)
puts run.airplane
 
