class SacculiniCarcini

  def attach(host)
    return true if host.antennae?

    false
  end
end
