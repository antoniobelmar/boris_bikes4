require "./lib/bike"

class DockingStation
  attr_reader :bike

  def release_bike
    raise "There are no bikes at this docking station. Sorry!" unless @bike
    @bike
  end

  def dock(bike)
      raise "This docking station is full, please try a different one!" unless @bike==nil
      @bike=bike
  end

end
