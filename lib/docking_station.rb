require "./lib/bike"

class DockingStation
  attr_reader :bikes

  def release_bike
    raise "There are no bikes at this docking station. Sorry!" unless @bikes
    @bikes
  end

  def dock(bike)
      raise "This docking station is full, please try a different one!" unless @bikes==nil
      @bikes=bike
  end

end
