require "./lib/bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes=[]
  end

  def release_bike
    raise "There are no bikes at this docking station. Sorry!" unless @bikes.count>0
    @bikes
  end

  def dock(bike)
    if @bikes.count<20
      @bikes.push(bike)
    else
      raise "This docking station is full, please try a different one!"
    end
  end

end
