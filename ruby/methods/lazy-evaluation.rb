require 'pry'

def prime(n)
  (2..n/2).none?{|i| n % i == 0}
end

def palindrome(n)
  n.to_s == n.to_s.reverse
end

solution = -> (n) do
  2.upto(Float::INFINITY).lazy.select { |e| prime(e) && palindrome(e) }.first(n)
end

a = gets.chomp
p solution.(a.to_i)
