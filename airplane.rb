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
		attr_reader :cource, :surface_type, :position_x, :position_y, :altitude
	
	def initialize(cource, surface_type, position_x, position_y, altitude)
		@cource       = cource
		@surface_type = surface_type
		@position_x   = position_x
		@position_y   = position_y
		@altitude     = altitude
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
