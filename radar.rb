require_relative "airplanecontainer"
class Radar
  include AirplaneContainer

  attr_reader :name
  attr_accessor :planes

  def initialize(params)
    @name    = params[:name]
    @planes  = Array.new
  end

end
