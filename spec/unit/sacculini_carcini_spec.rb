require 'crab'
require 'sacculini_carcini'

describe SacculiniCarcini do
  let(:sacculini_carcini) { SacculiniCarcini.new }
  let(:crab)              { Crab.new }

  it 'attaches to a crab' do
    expect(sacculini_carcini.attach(crab)).to be_true
  end

  it 'sheds its abdomen and thorax' do
    expect(sacculini_carcini.abdomen).to be_true
    expect(sacculini_carcini.thorax).to  be_true

    sacculini_carcini.shed

    expect(sacculini_carcini.abdomen).to be_false
    expect(sacculini_carcini.thorax).to  be_false
  end
end
