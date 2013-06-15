class Crab
  attr_accessor :antennae

  def initialize
    @antennae = %w(left right)
  end

  def antennae?
    @antennae.size > 0
  end
end
