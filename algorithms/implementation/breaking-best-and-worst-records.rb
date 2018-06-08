#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the breakingRecords function below.
def breakingRecords(scores)
  highest_scores = []
  lowest_scores = []
  min = []
  max = []
  scores.each_with_index do |score, index|

    if index == 0
      highest_scores[index] = score
      lowest_scores[index] = score
      min[index] = 0
      max[index] = 0
    else
      if score > highest_scores.max
        highest_scores[index] = score
        lowest_scores[index] = lowest_scores[index-1]
        min[index] = min[index-1]
        max[index] = max[index-1] + 1
      elsif score < lowest_scores.min
        highest_scores[index] = lowest_scores[index-1]
        lowest_scores[index] = score
        min[index] = min[index-1] + 1
        max[index] = max[index-1]
      else
        highest_scores[index] = highest_scores[index-1]
        lowest_scores[index] = lowest_scores[index-1]
        min[index] = min[index-1]
        max[index] = max[index-1]
      end
    end
  end
  [max.last, min.last]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

scores = gets.rstrip.split(' ').map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()
