RSpec.describe 'Array' do

  it 'should start off empty' do
    puts subject.class
    expect(subject.length).to eq(0)
    subject.push('An element')
    expect(subject.length).to eq(1)
  end
end
