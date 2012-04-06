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

end
