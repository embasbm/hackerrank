#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'

# Complete the utopianTree function below.
def utopianTree(n)
  height = []
  height[0] = 1
  1.upto(n) do |x|
    if x.even?
      height[x] = height[x-1] + 1
    else
      height[x] = height[x-1] * 2
    end
  end

  p height[n]
  height[n]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = utopianTree n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
