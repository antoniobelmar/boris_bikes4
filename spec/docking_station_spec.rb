require "docking_station"


describe DockingStation do
  it 'responds to release_bike' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
  it "ensures release_bike gets user new bike" do
    expect(DockingStation.new.release_bike).to be_an_instance_of(Bike)
  end
  it "makes sure the bike works" do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  it "makes docking possible" do
    station=DockingStation.new
    expect(station).to respond_to(:dock).with(1).argument
  end
  it "stores the docked bikes" do
    station=DockingStation.new
    bike = station.release_bike
    station.dock(bike)
    expect(Docking_station.new).to sho
  end

end
