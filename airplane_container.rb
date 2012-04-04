module AirplaneContainer

    attr_accessor :max_palnes_num

    def land(plane)
      if (@planes.length + 1) > self.max_palnes_num 
        puts "too much planes"      
      else
        @planes.push(plane)
      end
    
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

