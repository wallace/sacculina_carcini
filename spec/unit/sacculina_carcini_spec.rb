require 'crab'
require 'sacculina_carcini'

describe SacculinaCarcini do
  let(:sacculina_carcini) { SacculinaCarcini.new }
  let(:crab)              { Crab.new }

  it 'attaches to a crab' do
    expect(sacculina_carcini.attach(crab)).to be_true
  end

  it 'sheds its abdomen and thorax' do
    expect(sacculina_carcini.abdomen).to be_true
    expect(sacculina_carcini.thorax).to  be_true

    sacculina_carcini.shed

    expect(sacculina_carcini.abdomen).to be_false
    expect(sacculina_carcini.thorax).to  be_false
  end
end
