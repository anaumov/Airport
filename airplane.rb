class Airplane
  
  attr_reader :weight, :width, :name
  attr_accessor :altitude  

	def initialize
    @weight   = rand(2000)
    @width    = rand(30)
    @name     = "boeng777"
    @altitude = 0
  end

end
