class RPNCalculator

  attr_accessor :value

  def initialize
    @stack = []
    @value = 0
  end

  def push(n)
    @stack << n
  end

  def plus
    if @stack.count < 2
      self.fail_informatively
    else
      @stack << @stack.pop + @stack.pop
      @value = @stack[-1]
    end
  end
    
  def minus
    if @stack.count < 2
      self.fail_informatively
    else
      num1 = @stack.pop
      num2 = @stack.pop
      @stack << num2 - num1
      @value = @stack[-1]
    end
  end

    def times
      if @stack.count < 2
        self.fail_informatively
      else
        @stack << @stack.pop * @stack.pop
        @value = @stack[-1]
      end
    end

    def divide
      if @stack.count < 2
        self.fail_informatively
      else
        num1 = @stack.pop
        num2 = @stack.pop
        @stack << num2 / num1.to_f
        @value = @stack[-1]
      end
    end

    def fail_informatively
      raise "calculator is empty"
    end

    def tokens(string)
      chars = string.split(" ")
      chars.map!  {|char| char == "+" || char == "-" || char == "*" || char == "/" ?  char.to_sym : char.to_i}
      chars
    end

    def evaluate(string)
      tokens(string).each do |el|
          if el == :+
            self.plus
          elsif el == :-
            self.minus
          elsif el == :/
            self.divide
          elsif el == :*
            self.times
          else
            self.push(el)
          end
        end
        self.value
      end   
end