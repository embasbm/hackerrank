#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  1.upto(n) do |i|
    print "#{' '*(n-i)}#{'#'*i}\n"
  end
end

n = gets.to_i

staircase n
