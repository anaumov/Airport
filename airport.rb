class Airport
  include AirplaneContainer::Manager
  include AirplaneContainer::Info

  attr_reader :name, :code, :planes
  attr_accessor :runways
	
  def initialize(params)
    @name           = params[:name]
    @code           = params[:code]
    @runways        = Array.new
    @planes         = Array.new
    @max_palnes_num = params[:max_palnes_num]||= 10
  end
  
  def add_runway(runway)
    @runways.push(runway)
  end
  
  def free_runways
    self.runways.each {|a| yield a if a.airplane == nil }
  end
end
