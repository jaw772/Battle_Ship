require './lib/ship'

RSpec.describe Ship do
  it "exists" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser).to be_instance_of(Ship)
  end

  it "has a name and health" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.name).to eq "Cruiser"
    expect(cruiser.health).to eq 3
  end

  it "is alive" do
    cruiser = Ship.new("Cruiser", 3)
    expect(cruiser.sunk?).to be false
  end

  it "takes hits" do
    cruiser = Ship.new("Cruiser", 3)
    cruiser.hit
    expect(cruiser.health).to eq 2
    cruiser.hit
    expect(cruiser.health).to eq 1
  end

  it "can be sunk" do
    cruiser = Ship.new("Cruiser", 3)
    3.times {cruiser.hit }
    expect(cruiser.health).to eq 0
    expect(cruiser.sunk?).to be true
  end
end
