class Airplane
  
  attr_reader :weight, :width, :name
  attr_accessor :altitude, :airport

  def initialize(params)
    @weight   = params[:weight] || rand(500)
    @width    = params[:width]
    @name     = params[:name]
    @altitude = 0
    @fuel     = 500
    @airport  = nil
  end

  def enough_fuel?
    fuel > 100 ? true : false
  end

  def descend
    while self.altitude > 0  do
      sleep(1);
      self.altitude-=5
    end
  end 
 


  private

    def fuel
      @fuel  
    end

end
