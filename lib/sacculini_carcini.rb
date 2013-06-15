class SacculiniCarcini
  attr_reader :abdomen, :thorax, :host

  def initialize
    @abdomen = true
    @thorax  = true
  end

  def attach(host)
    if host.antennae?
      return @host = host
    end

    false
  end

  def shed
    @abdomen = false
    @thorax  = false
  end
end
