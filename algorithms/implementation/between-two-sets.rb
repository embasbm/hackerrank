#!/bin/ruby
require 'pry'
#
# Complete the getTotalX function below.
#
def factors(n)
  return [n] if n == 1
  2.upto(n).select {|x| n%x == 0}
end

def getTotalX(a, b)

  factors_b = []
  b.collect { |elem| factors_b << factors(elem) }
  factors_b = factors_b.reduce(:&)

  factors_a = []
  a.collect { |elem| factors_a << factors(elem) }
  factors_a = factors_a.reduce(:&)

  between_numbers = factors_b.select { |x| a.all? { |elem| x % elem == 0 }}

  between_numbers += factors_b if factors_b.size == 1 && factors_b.first == 1
  between_numbers += factors_a if factors_a.size == 1 && factors_a.first == 1

  p between_numbers.count
end
fp = File.open(ENV['OUTPUT_PATH'], 'w')

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

b = gets.rstrip.split(' ').map(&:to_i)

total = getTotalX a, b

fp.write total
fp.write "\n"

fp.close()
