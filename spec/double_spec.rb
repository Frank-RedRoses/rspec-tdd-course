RSpec.describe 'a randon double' do

  context 'passing methods and return values as double arguments' do
    it 'only allows defined method to be invoked' do
      stuntman = double("Mr Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
      expect(stuntman.fall_off_ladder).to eq('Ouch')
      expect(stuntman.light_on_fire).to eq(true)
    end
  end

  context 'passing method and values with allow and receive' do
    let(:stuntman) { double('Mr Danger') }
    it 'return nil when defined method is invoked' do
      allow(stuntman).to receive(:fall_off_ladder)
      expect(stuntman.fall_off_ladder).to be_nil
    end

    it 'return a customize value when defined method is invoked' do
      allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
      expect(stuntman.fall_off_ladder).to eq('Ouch')
    end
  end

  context 'accepts several methods in one line with receive_messages' do
    let(:stuntman) { double('Mr Danger') }

    it 'only allows several methods to be invoked' do
      stuntman = double("Mr Danger")
      allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
      expect(stuntman.fall_off_ladder).to eq('Ouch')
      expect(stuntman.light_on_fire).to eq(true)
    end
  end
end
