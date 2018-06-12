#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  b = ar.group_by {|x| x}
  c = b.select {|k,v| v.count / 2 >= 1}
  pairs = 0
  c.each {|k,v| pairs+=v.size/2}
  pairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
