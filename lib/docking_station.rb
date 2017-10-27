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
    raise "Sorry, there are only broken bikes left!" if @bikes.count==0
    @bikes.pop
  end

  def dock(bike)
    raise "This docking station is full, please try a different one!" if full?
    store(bike)
  end

  def store(bike)
    bike.working? ? @bikes.push(bike) : @broken_bikes.push(bike)
  end

  private

  def full?
    (@bikes.count + @broken_bikes.count)>=capacity
  end

  def empty?
    (@bikes.count + @broken_bikes.count)==0
  end

end
