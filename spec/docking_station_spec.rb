require "docking_station"

describe DockingStation do
  it 'responds to release_bike' do
    expect(release_bike(DockingStation)).to eq 'respond_to'
  end


end
