class Deck
  def self.build
    # This code implementation is irrelevant.
    # Only the idea of a possible return value is needed.
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are define on a class' do
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.start).to eq(['Ace', 'Queen'])
  end
end
