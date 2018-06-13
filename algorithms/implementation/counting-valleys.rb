#!/bin/ruby

require 'pry'
require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
  level = valleys = 0
  s.each_char do |step|
    valleys +=1 if level==0 && step =='D'
    level = step == 'D' ? level-1 : level+1
  end
  valleys
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

fptr.write result
fptr.write "\n"

fptr.close()
