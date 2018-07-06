#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'

# Complete the pickingNumbers function below.
def pickingNumbers(a)
  my_h = Hash.new(0)
  a.each do |elem|
    my_h[elem] = a.select {|x| (elem-x).abs < 2}
  end
  my_h.max_by {|i,v| v.size}[1].size - 1
end


fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

a = gets.rstrip.split(' ').map(&:to_i)

result = pickingNumbers a

fptr.write result
fptr.write "\n"

fptr.close()
