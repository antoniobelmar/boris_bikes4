require "docking_station"

describe DockingStation do
  let(:station) {DockingStation.new}

  describe "dock" do

    it "makes docking possible" do
      expect(station).to respond_to(:dock).with(1).argument
    end

    it "obtain error when trying to dock a bike in a full docking station" do
      new_station = DockingStation.new (0)
      bike = Bike.new
      expect{new_station.dock(bike)}.to raise_error("This docking station is full, please try a different one!")
    end

    it "allows to dock 20 bikes to an empty docking station" do
      station.capacity.times {station.dock(Bike.new)}
      expect(station.bikes.count).to eq(20)
    end

  end

  describe "release_bike" do

    it 'responds to release_bike' do
      expect(station).to respond_to(:release_bike)
    end

    it "ensures release_bike gets user new bike when there are available bikes" do
      bike=Bike.new
      station.dock(bike)
      expect(station.release_bike).to be_an_instance_of(Bike)
    end

    it "expects docking station to not release bikes if there are none" do
      expect{station.release_bike}.to raise_error("There are no bikes at this docking station. Sorry!")
    end

    it "expects docking station to not release broken bikes" do
      bike=Bike.new
      bike.report_broken
      station.dock(bike)
      expect{station.release_bike}.to raise_error("Sorry, there are only broken bikes left!")
    end

  end

  describe "working?" do

    it "makes sure the bike released is in working condition" do
      bike=Bike.new
      station.dock(bike)
      expect(station.release_bike.working?).to eq true
    end

  end

  describe "bikes" do

    it "stores and shows the docked bikes" do
      bike=Bike.new
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

    it "gives a default value to bikes of an empty array when initializing an instance of the DockingStation class" do
      expect(station.bikes.empty?).to eq true
    end

  end

  describe "capacity" do

    it "a new instance of DockingStation should respond to an argument" do
      expect(DockingStation).to respond_to(:new).with(1).argument
    end

    it "should set a capacity of the argument passed in" do
      test_station = DockingStation.new (50)
      expect(test_station.capacity).to eq(50)
    end

  end

  describe "store" do

    it "stores bikes that are broken in bikes variable" do
      bike=Bike.new
      station.dock(bike)
      expect(station.bikes).to include(bike)
    end

  end

end
