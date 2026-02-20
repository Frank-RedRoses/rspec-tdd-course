RSpec.describe Hash do
  # let(:my_hash) { {} }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
  end

  it 'should increase its length by 1' do
    subject[:some_key] = "Some value"
    expect(subject.length).to eq(1)
  end

  it 'should be isolated between example' do
    expect(subject.length).to eq(0)
  end
end
