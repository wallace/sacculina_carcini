require 'crab'

describe Crab do
  let(:crab) { Crab.new }
  it 'does not have externa by default' do
    expect { crab.externa? }.to raise_error(NoMethodError)
  end

  it 'has a payload' do
    expect(crab.payload).to eq({})
  end
end
