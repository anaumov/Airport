module AirplaneContainer


    def land(plane)
      @planes.push(plane)
    end

    def takeoff(plane)
      @planes.delete(plane)
    end

    def airplanes_count
      @plane_count = 0
      self.planes.each {|plane| yield(plane) ? @plane_count+=1 : @plane_count }
      @plane_count 
    end

    def each_airplane_name
      self.planes.each {|plane| yield(plane.name)}
    end

end

