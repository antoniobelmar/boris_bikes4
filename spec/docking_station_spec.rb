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
end
