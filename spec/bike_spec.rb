require "bike"

describe Bike do
  let(:bike) {Bike.new}

  it 'responds to .working?' do
    expect(bike).to respond_to (:working?)
  end

  it "initializes new bike with one argument, status" do
    expect(Bike).to respond_to(:new).with(1).argument
  end

  it "should set a status of the argument passed in" do
    test_bike= Bike.new (false)
    expect(test_bike.status).to eq false
  end

  it "sets status as false when report broken is called on bike" do
    bike.report_broken
    expect(bike.status).to eq false
  end

  it "it ensures that .working returns status" do
    expect(bike.working?).to eq(bike.status)
  end

end
