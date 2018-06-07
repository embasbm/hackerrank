#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  positive = []
  negative = []
  zeros = []

  arr.each do |i|
    if i > 0
      positive << i
    elsif i < 0
      negative << i
    else
      zeros << i
    end
  end

  p positive.count/arr.count.to_f
  p negative.count/arr.count.to_f
  p zeros.count/arr.count.to_f
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
