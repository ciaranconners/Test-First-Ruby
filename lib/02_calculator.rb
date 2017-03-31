def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	arr.inject(0, :+)
end

def multiply(*nums)
  nums.inject(:*)
end

def power(a, b)
	a**b 
end

def factorial(n)
	if n == 0
		return 1
	else
		return Array(1..n).inject(:*)
	end
end
