require_relative "airplanecontainer"
require_relative "airplane"
require_relative "airport"
require_relative "runway"
require_relative "radar"

plane1 = Airplane.new(name: "Boeing 777", :weight => 134800, :height => 19)
plane2 = Airplane.new(:name => "Airbus A380", :weight => 571000, :height => 24)
plane1.altitude=(100)

domodedovo = Airport.new(:name => "domodedovo", :code => "DME")
radar = Radar.new(:name => "first")

radar.land(plane1)
radar.land(plane2)

run = Runway.new(:cource => 35, :surface_type => "beton", :position_x => 120, :position_y => 150, :altitude => 200, :airport => domodedovo)
run2 = Runway.new(:cource => 25, :surface_type => "beton", :position_x => 100, :position_y => 170, :altitude => 150, :airport => domodedovo)


domodedovo.free_runways { |r| puts "Runway #{r} is free" }
domodedovo.free_runways { |r| r.receive_airplane(plane1) }
domodedovo.free_runways { |r| r.receive_airplane(plane2) }

puts domodedovo.planes


run.depart_airplane(plane1)

puts domodedovo.airplanes_count { |a| a.name == "Boeing 777" }

puts plane1.enough_fuel?

radar.each_airplane_name do |a|
  puts "#{a} coming"
end

