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

  def migrate_to_gut
    # find heart of host and hang out just below it
  end
end
