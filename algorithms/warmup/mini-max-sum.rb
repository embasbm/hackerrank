#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
  my_hash = Hash.new(0)
  (0...arr.size).each do |i|
    my_hash[i] = arr.reject.each_with_index {|_, index| index == i}.sum
  end
  print "#{my_hash.min_by {|k,v| v}.last} #{my_hash.max_by {|k,v| v}.last}\n"
end

arr = gets.rstrip.split(' ').map(&:to_i)

miniMaxSum arr
