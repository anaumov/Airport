module AirplaneContainer
  
  module Manager
    attr_accessor :max_palnes_num
    
    def land(plane)
      if (@planes.length + 1) > self.max_palnes_num 
        raise "too much planes"      
      else
        @planes.push(plane)
      end
    
    end

    def takeoff(plane)
      @planes.delete(plane)
    end
  end
  
  module Info
    def airplanes_count
      @plane_count = 0
      self.planes.each {|plane| yield(plane) ? @plane_count+=1 : @plane_count }
      @plane_count 
    end

    def big_airplanes_count
      airplanes_count { |bigplane| (yield(bigplane) && bigplane.class.name == "BigAirplane") }
    end

    def each_airplane_name
      self.planes.each {|plane| yield(plane.name)}
    end

  end
end

