class SacculinaCarcini
  attr_reader :abdomen, :thorax, :host

  WEEK_IN_SECONDS = 7 * 24 * 60 * 60
  TIME_FROM_INFECTION_TO_EXTERNA = 2.5 * WEEK_IN_SECONDS

  def initialize
    @abdomen = true
    @thorax  = true
  end

  def attach(host)
    if host.antennae?
      @time_since_infection = 0
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

  def tick(time_increments = 0)
    while time_increments > 0 do
      if @host &&
        @time_since_infection >= TIME_FROM_INFECTION_TO_EXTERNA
        @host.instance_eval do
          def externa?
            true
          end
        end
      end
      time_increments -= 1
      @time_since_infection += 1
    end
  end
end
