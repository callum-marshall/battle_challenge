require './player.rb'

describe Player do

  it 'give the class a method that returns its name' do
    player = Player.new("Bob")
    expect(player.name).to eq "Bob"
  end
end
