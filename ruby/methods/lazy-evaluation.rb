require 'pry'
require 'prime'


is_palindrome = -> (x) do
  x.to_s == x.to_s.reverse
end

n = gets.chomp.to_i

p 2.upto(Float::INFINITY).lazy.select {|n| is_palindrome.(n) && Prime.prime?(n) }.first(n)
