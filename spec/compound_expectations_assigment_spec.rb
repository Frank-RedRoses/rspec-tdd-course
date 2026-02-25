RSpec.describe 'compound expectations assigment' do
  describe 'firetruck' do
    it 'should start with fire and end with truck' do
      expect('firetruck').to start_with('fire').and end_with('truck')
    end
    it { is_expected.to start_with('fire') and end_with('truck') }
  end

  describe 20 do
    it 'is even and responds to times method' do
      expect(20).to be_even.and respond_to(:times)
    end

    it { is_expected.to be_even and respond_to(:times)}
  end

  describe [4, 8, 15, 16, 23, 42] do
    it 'includes value and starts with' do
      expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with(4, 8, 15)
    end

    it { is_expected.to include(42) and start_with(4, 8, 15) }
  end
end
