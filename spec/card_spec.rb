class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
=begin
  # Reducing Duplication
  # before hook
  before do
    @card = Card.new('Ace', 'Spades')
  end

  # helper method
  def card
    Card.new('Ace', 'Spades')
  end
=end

  # let method
  let(:card) { Card.new('Ace', 'Spades')}
  # let!(:x) { 1 + 1 }
  # let(:y) { x + 10 }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} "\
    "but I got #{card.suit} instead!"
  end
end
