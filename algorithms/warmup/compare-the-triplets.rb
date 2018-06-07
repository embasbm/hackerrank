#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

def solve(a, b)
  count_a = 0
  count_b = 0
  (0...a.size).each do |i|
    if a[i] == b[i]
      next
    elsif a[i] < b[i]
      count_b+=1
    else
      count_a+=1
    end
  end
  [count_a, count_b]
end

fptr = File.open('./compare-the-triplets.txt' , 'w')

a = gets.rstrip.split(' ').map(&:to_i)

b = gets.rstrip.split(' ').map(&:to_i)

result = solve a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
