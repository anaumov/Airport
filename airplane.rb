class Airplane
  
  attr_reader :weight, :width, :name
  attr_accessor :altitude  

	def initialize
    @weight   = rand(2000)
    @width    = rand(30)
    @name     = "boeng777"
    @altitude = 0
  end

end

class Runaway
		attr_reader :cource, :surface_type, :position_x, :position_y, :altitude, :airplane
	
	def initialize(cource, surface_type, position_x, position_y, altitude)
		@cource       = cource
		@surface_type = surface_type
		@position_x   = position_x
		@position_y   = position_y
		@altitude     = altitude
		@airplane     = nil
	end

	def receive_airplane(airplane)
		if (@airplane) 
			puts "runaway already busy" 
		else 
			@airplane = airplane
		end
	end

	def depart_airplane(airplane)
		if (@airplane) 
			@airplane = nil
		else 
			puts "runaway empty"
		end	
	end

end

class Airport
	attr_reader :name, :code, :runaway
	
	def initialize(name, code, runaway)
		@name    = name
		@code    = code
		@runaway = runaway
	end

end
