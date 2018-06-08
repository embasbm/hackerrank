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
      min[index]            = score > highest_scores.max ? min[index-1] : score < lowest_scores.min ? min[index-1] + 1 : min[index-1]
      max[index]            = score > highest_scores.max ? max[index-1] + 1 : score < lowest_scores.min ? max[index-1] : max[index-1]
      highest_scores[index] = score > highest_scores.max ? score : score < lowest_scores.min ? lowest_scores[index-1] : highest_scores[index-1]
      lowest_scores[index]  = score > highest_scores.max ? lowest_scores[index-1] : (score < lowest_scores.min ? score : lowest_scores[index-1])
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
