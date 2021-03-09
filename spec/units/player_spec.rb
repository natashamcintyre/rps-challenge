require 'player'

describe Player do
  let(:name) { double "name" }
  subject { described_class.new(name) }
  it "returns the name of the player" do
    expect(subject.name).to be name
  end

  it "returns the score of the player, initially 0" do
    expect(subject.score).to be 0
  end

  describe '#point' do
    it "increases player score by 1" do
      expect { subject.point }.to change { subject.score }.by(1)
    end
  end

  describe '#image' do
    it "sets player image to rock" do
      subject.set_image("Rock")
      expect(subject.image).to eq "Rock"
    end
  end
end
