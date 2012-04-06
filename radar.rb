class Radar
  include AirplaneContainer::Manager
  include AirplaneContainer::Info

  attr_reader :name
  attr_accessor :planes

  def initialize(params)
    @name           = params[:name]
    @planes         = Array.new
    @max_palnes_num = params[:max_palnes_num]||= 100
  end

  def land(plane)
    #@planes.push(plane)
    Thread.new(plane) do |plane|
      while plane.altitude > 0 
       puts plane.name + " altitude is " + plane.altitude.to_s
       sleep(1)
      end        
    end
    
  end

end
