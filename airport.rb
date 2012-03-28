class Airport
	attr_reader :name, :code
  attr_accessor :runways
	
	def initialize(name, code)
		@name    = name
		@code    = code
    @runways = Array.new
	end
  
  def addrunway(runway)
    @runways.push(runway)
  end

  def free_runways(plane)
    self.runways.each{|a| yield a if a.airplane == nil }
  end
end
