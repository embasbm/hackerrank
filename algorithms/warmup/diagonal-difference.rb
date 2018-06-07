#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the diagonalDifference function below.
def diagonalDifference(a)
  diagonal_1 = []
  diagonal_2 = []
  (0...a.size).each do |x|
    (0...a.size).each do |y|
      if x == y
        diagonal_1 << a[x][y]
      end

      if x + y == a.size - 1
        diagonal_2 << a[x][a.size-1-x]
      end
    end
  end
  (diagonal_1.sum - diagonal_2.sum).abs
end

fptr = File.open('./diagonal-difference.txt', 'w')

n = gets.to_i

a = Array.new(n)

n.times do |i|
    a[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonalDifference a

fptr.write result
fptr.write "\n"

fptr.close()
