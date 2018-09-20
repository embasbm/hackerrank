require 'pry'
def factorial(n)
  return 1 if n <= 0
  (1..n).inject(:*)

end

n = gets&.rstrip.to_i
p factorial(n)
