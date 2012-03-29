class Airport
  attr_reader :name, :code, :planes
  attr_accessor :runways
	
  def initialize(params)
    @name    = params[:name]
    @code    = params[:code]
    @runways = Array.new
    @planes  = Array.new
  end
  
  def add_runway(runway)
    @runways.push(runway)
  end
  
  def landing(plane)
    @planes.push(plane)
  end

  def takeoff(plane)
    @planes.delete(plane)
  end

  def free_runways
    self.runways.each{|a| yield a if a.airplane == nil }
  end
end
