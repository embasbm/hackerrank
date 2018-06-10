#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the solve function below.
def solve(s, d, m)
  cont = 0
  s.each_with_index do |square, index|
    cont+=1 if s[index..index+m-1].sum == d
  end
  cont
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

s = gets.rstrip.split(' ').map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = solve s, d, m

fptr.write result
fptr.write "\n"

fptr.close()
