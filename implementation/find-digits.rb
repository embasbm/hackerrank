#!/bin/ruby

require 'json'
require 'stringio'

# Complete the findDigits function below.
def findDigits(n)
    n.to_s.each_char.reject {|x| x.to_i.zero?}.select {|x| n % x.to_i == 0 }.count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = findDigits n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
