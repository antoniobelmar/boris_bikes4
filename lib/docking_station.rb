require "./lib/bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes=[]
  end

  def release_bike
    raise "There are no bikes at this docking station. Sorry!" if empty?
    @bikes
  end

  def dock(bike)
    raise "This docking station is full, please try a different one!" if full?
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.count>=20
  end

  def empty?
    @bikes.count==0
  end

end
