class Airplane
  
  attr_reader :weight, :width, :name
  attr_accessor :altitude, :airport

  def initialize(params)
    @weight   = params[:weight]
    @width    = params[:width]
    @name     = params[:name]
    @altitude = 0
    @airport  = nil
  end

end
