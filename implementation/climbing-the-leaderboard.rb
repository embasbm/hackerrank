#!/bin/ruby
require 'benchmark'
require 'pry'
require 'json'
require 'stringio'

# Complete the climbingLeaderboard function below.
def climbingLeaderboard(scores, alice)
  result = []
  scores = scores.uniq.sort
  alice.each do |a|
      scores.each_with_index do |s,i|
          if s > a
              result.push(scores.length - i + 1)
              scores.shift(i)
              break
          elsif a >= s && i == scores.length - 1
              result.push(1)
              break
          end
      end
  end
  result
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

scores_count = gets.to_i

scores = gets.rstrip.split(' ').map(&:to_i)

alice_count = gets.to_i

alice = gets.rstrip.split(' ').map(&:to_i)

result = climbingLeaderboard scores, alice

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()


