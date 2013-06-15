require 'crab'

describe Crab do
  let(:crab) { Crab.new }
  it 'has two antennae' do
    expect(crab.antennae.size).to be(2)
  end

  it 'does not have externa by default' do
    expect { crab.externa? }.to raise_error(NoMethodError)
  end
end
