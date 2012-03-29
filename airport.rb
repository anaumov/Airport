class Airport
  attr_reader :name, :code
  attr_accessor :runways
	
  def initialize(params)
    @name    = params[:name]
    @code    = params[:code]
    @runways = Array.new
  end
  
  def addrunway(runway)
    @runways.push(runway)
  end

  def free_runways
    self.runways.each{|a| yield a if a.airplane == nil }
  end
end
