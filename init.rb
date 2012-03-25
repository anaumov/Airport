require_relative "airplane"
airplane1 = Airplane.new
puts airplane1.weight
puts airplane1.name
airplane1.altitude=(100)

puts airplane1.altitude


run = Runaway.new(35, "beton", 120, 150, 200)
run2 = Runaway.new(33, "beton", 1200, 1500, 1200)

puts run

domodedovo = Airport.new("domodedovo", "DME", [run, run2])
puts domodedovo.runaway
