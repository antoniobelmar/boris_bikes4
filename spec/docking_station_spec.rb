require "docking_station"


describe DockingStation do
  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it "ensures release_bike gets user new bike" do
    station=DockingStation.new
    expect(station.release_bike).to be_an_instance_of(Bike) unless station.bikes.empty?
  end
  it "makes sure the bike works" do
    station=DockingStation.new
    expect(station.release_bike.working?).to eq true unless station.bikes.empty?
  end
  it "makes docking possible" do
    station=DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument
  end
  it "stores the docked bikes" do
    station=DockingStation.new
    bike=station.release_bike unless station.bikes.empty?
    expect(station.dock(bike)).to eq (bike)
  end
  it "shows the docked bikes" do
    station=DockingStation.new
    bike = station.release_bike unless station.bikes.empty?
    station.dock(bike)
    expect(station.bikes).to eq (bike)
  end
  it "expects docking station to not release bikes if there are none" do
    expect{DockingStation.new.release_bike}.to raise_error("There are no bikes at this docking station. Sorry!")
  end
  it "only allows for docking once the docking station is empty" do
    station=DockingStation.new
    bike=station.release_bike unless station.bikes.empty?
    expect{station.dock(bike)}.to raise_error("This docking station is full, please try a different one!") if station.bikes.count>=20
  end
  it "gives a default value to bikes of an empty array when initializing an instance of the DockingStation class" do
    expect(DockingStation.new.bikes.empty?).to eq true
  end
end
