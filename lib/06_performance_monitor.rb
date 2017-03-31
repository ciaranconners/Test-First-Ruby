def measure(n=1)
  start_time = Time.now
  if n == 1
    yield
  else
    n.times do 
      yield
    end
    return ((Time.now - start_time) / n)
  end
  (Time.now - start_time).round
end
