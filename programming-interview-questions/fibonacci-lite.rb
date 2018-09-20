def fibonacci_lite(n)
  return n if n == 1 || n == 0
  fibonacci_lite(n-1) + fibonacci_lite(n-2)
end

p fibonacci_lite(gets.to_i)
