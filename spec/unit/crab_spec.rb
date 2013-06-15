require 'crab'

describe Crab do
  let(:crab) { Crab.new }
  it 'has two antennae' do
    expect(crab.antennae.size).to be(2)
  end
end
