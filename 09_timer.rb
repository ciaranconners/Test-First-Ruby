class Timer
  
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600)/60
    seconds =  (@seconds % 60)
    [hours, minutes, seconds].map(&method(:padded)).join(":")
  end

  def padded(n)
      n < 10 ? "0" + n.to_s : n.to_s
  end

end