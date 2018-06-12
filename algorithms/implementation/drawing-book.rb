#!/bin/ruby
require 'pry'
#
# Complete the pageCount function below.
#
def pageCount(n, p)
  from_beginning = from_end = 0

  (0..n).to_a.each_slice(2).to_a.each do |pages|
    pages.include?(p) ? break : from_beginning += 1
  end

  (0..n).to_a.each_slice(2).to_a.reverse.each do |pages|
    pages.include?(p) ? break : from_end += 1
  end

  from_beginning < from_end ? from_beginning : from_end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
