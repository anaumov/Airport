class Runway
	attr_reader :cource, :surface_type, :position_x, :position_y, :altitude, :airplane, :airport
	
	def initialize(cource, surface_type, position_x, position_y, altitude, airport)
		@cource       = cource
		@surface_type = surface_type
		@position_x   = position_x
		@position_y   = position_y
		@altitude     = altitude
		@airplane     = nil
		@airport      = airport
	end

	def receive_airplane(airplane)
		if (@airplane) 
			puts "runway already busy" 
		else 
			@airplane = airplane
      airplane.airport = self.airport
		end
	end

	def depart_airplane(airplane)
		if (@airplane) 
			@airplane = nil
      airplane.airport = nil
		else 
			puts "runway empty"
		end
	end

end
