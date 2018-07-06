#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

def similarities_lambda(x, y)
  return 0 if x.size != y.size
  similarities = 0
  x.flatten!
  y.flatten!
  x.each_with_index { |elem, index| similarities+=1 if elem == y[index] }
  similarities
end

# Complete the formingMagicSquare function below.
def formingMagicSquare(s)

  n = s.size
  magic_constant = n * (n**2+1)/2
  diffs = Hash.new(0)

  (n-1).downto(0) do |y|
    (n-1).downto(0) do |x|
      next if y ==x && n/2 == y
    end
  end

  my_matrix = Array.new(3) { |i| Array.new(3)  }
  0.upto(n*n) { |n|  }
  binding.pry
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = Array.new(3)

3.times do |i|
    s[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = formingMagicSquare s

fptr.write result
fptr.write "\n"

fptr.close()
