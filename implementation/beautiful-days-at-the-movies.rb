#!/bin/ruby

require 'json'
require 'stringio'

# Complete the beautifulDays function below.
def beautifulDays(i, j, k)
    i.upto(j).select {|n| ((n - n.to_s.reverse.to_i) / k.to_f).floor == ((n - n.to_s.reverse.to_i) / k.to_f) }.count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ijk = gets.rstrip.split

i = ijk[0].to_i

j = ijk[1].to_i

k = ijk[2].to_i

result = beautifulDays i, j, k

fptr.write result
fptr.write "\n"

fptr.close()
