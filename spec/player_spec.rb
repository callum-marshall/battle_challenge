require './player.rb'

describe Player do

  let(:callum) { Player.new("Callum") }
  let(:gui) { Player.new("Gui") }

describe '#name' do
  it 'give the class a method that returns its name' do
    expect(callum.name).to eq "Callum"
  end
end

describe '#hit_points' do
  it 'returns the hit points' do
    expect(callum.hp).to eq Player::DEFAULT_HP
  end
end

describe '#attack' do
  it "damages the player" do
    expect(gui).to receive(:receive_damage)
    callum.attack(gui)
  end
end

describe '#receive_damage' do
  it "reduces the player hit points" do
    expect { callum.receive_damage }.to change { callum.hp }.by(-10)
  end
end


end
