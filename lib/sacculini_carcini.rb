class SacculiniCarcini
  attr_reader :abdomen, :thorax

  def initialize
    @abdomen = true
    @thorax  = true
  end

  def attach(host)
    return true if host.antennae?

    false
  end

  def shed
    @abdomen = false
    @thorax  = false
  end
end
