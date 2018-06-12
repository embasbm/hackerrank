#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'

def solve(n, k, bill, b)
  did_not_eat = bill.reject.each_with_index {|i, x| x==k}.sum
  b_actual = did_not_eat / 2
  b_actual == b ? 'Bon Appetit' : b - b_actual
end


File.open(ENV['OUTPUT_PATH'], "w") do |io|
  st = gets.rstrip.split
  n = st[0].to_i
  k = st[1].to_i
  bill = gets.rstrip.split(' ').map(&:to_i)
  b = gets.to_i
  result = solve n, k, bill, b

  io.write result
  io.write "\n"
end
