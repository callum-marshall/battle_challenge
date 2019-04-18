require './player.rb'

describe Player do

  let(:bob) { Player.new("Bob") }

  it 'give the class a method that returns its name' do
    expect(bob.name).to eq "Bob"
  end
end
