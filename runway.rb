class Runway
  attr_reader :cource, :surface_type, :position_x, :position_y, :altitude, :airplane, :airport
	
  def initialize(params)
    @cource       = params[:cource]
    @surface_type = params[:surface_type]
    @position_x   = params[:position_x]
    @position_y   = params[:position_y]
    @altitude     = params[:altitude]
    @airplane     = nil
    @airport      = params[:airport]
    params[:airport].add_runway(self)
  end

  def receive_airplane(airplane)
    if (@airplane) 
      puts "runway already busy" 
    elsif (airplane.airport == self.airport)
      puts airplane.name + " already landed at " + airplane.airport.code
    else 
      @airplane = airplane
      airplane.airport = self.airport
      airplane.airport.land(airplane)
      puts airplane.name + " landed at " + airplane.airport.code
    end
  end

  def depart_airplane(airplane)
    if (@airplane) 
      @airplane = nil
      airplane.airport.takeoff(airplane)
      puts airplane.name + " taked off from " + airplane.airport.code
      airplane.airport = nil
    else 
      puts "runway empty"
    end
  end

end
