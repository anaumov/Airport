require_relative "airplane"
require_relative "airport"
require_relative "runaway"

plane1 = Airplane.new
plane2 = Airplane.new
plane1.altitude=(100)


domodedovo = Airport.new("domodedovo", "DME")

run = Runway.new(35, "beton", 120, 150, 200, domodedovo)
run2 = Runway.new(33, "beton", 1200, 1500, 1200, domodedovo)

domodedovo.addrunway(run)
domodedovo.addrunway(run2)

domodedovo.free_runways { |r| puts "Runway #{r} is free" }
domodedovo.free_runways { |r| r.receive_airplane(plane1) }

