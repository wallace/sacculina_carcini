require 'crab'
require 'sacculini_carcini'

describe SacculiniCarcini do
  let(:sacculini_carcini) { SacculiniCarcini.new }
  let(:crab)              { Crab.new }

  it 'attaches to a crab' do
    expect(sacculini_carcini.attach(crab)).to be_true
  end
end
