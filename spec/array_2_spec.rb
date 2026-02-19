RSpec.describe Array do
  subject(:sally) do
    ['first', 'second']
  end

  it 'has 1 element' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'sally is same as subject' do
    expect(sally).to eq(subject)
  end
end
