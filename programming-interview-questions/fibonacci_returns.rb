require 'pry'
def fibonacci_lite(n)
  fibs = [0,1]
  (2..n+1).map {|_x| fibs << fibs[-1] + fibs[-2]}
  fibs[n]
end

loop do
  n = gets&.rstrip
  break if n.empty?
  p fibonacci_lite(n.to_i)
end
