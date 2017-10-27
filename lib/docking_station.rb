require "./lib/bike"

class DockingStation
  attr_reader :bikes, :capacity, :broken_bikes

  DEFAULT_CAPACITY=20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes=[]
    @broken_bikes=[]
    @capacity = capacity
  end

  def release_bike
    raise "There are no bikes at this docking station. Sorry!" if empty?
    @bikes
  end

  def dock(bike,working=true)
    raise "This docking station is full, please try a different one!" if full?
    store(bike,working)
  end

  def store(bike,working)
    @bikes.push(bike)
    @broken_bikes.push(bike) if working==false
  end

  private

  def full?
    @bikes.count>=capacity
  end

  def empty?
    @bikes.count==0
  end

end
