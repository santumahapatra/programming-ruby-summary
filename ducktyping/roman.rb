class Roman
  def initialize(value)
    @value = value
  end
  def coerce(other)
    if Integer === other
      [ other, @value ]
    else
      [ Float(other), Float(@value) ]
    end
  end
end
