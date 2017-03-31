class Temperature
  
  def initialize(options)
    @scale = options.keys[0]
    @temperature = options.values[0]
  end

   def in_fahrenheit
    if @scale == :f
      return @temperature
    elsif @scale == :c
      return ctof(@temperature)
      @scale = :f
    end
  end

  def in_celsius
    if @scale == :c
      return @temperature
    elsif @scale == :f
      return ftoc(@temperature)
      @scale = :c
    end
  end

  def self.from_celsius(n)
    options = {:c => n}
    Temperature.new(options)
  end

  def self.from_fahrenheit(n)
    options = {:f => n}
    Temperature.new(options)
  end

end

class Celsius < Temperature
  
  def initialize(c)
    @scale = :c
    @temperature = c
    super({@scale => @temperature})
  end

end

class Fahrenheit < Temperature

  def initialize(f)
    @scale = :f
    @temperature = f
    super({@scale => @temperature})
  end

end

def ftoc(fahrenheit)
  celsius = (fahrenheit - 32) / 1.8
  celsius.ceil
end

def ctof(celsius)
  fahrenheit = (celsius * 1.8) + 32
  fahrenheit
end
