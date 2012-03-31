module AirplaneContainer
  def land(plane)
    @planes.push(plane)
  end

  def takeoff(plane)
    @planes.delete(plane)
  end

  def airplanes_count
    self.planes.length  
  end

  def each_airplane_name
    self.planes.each{|p| yield p.name}
  end

end

