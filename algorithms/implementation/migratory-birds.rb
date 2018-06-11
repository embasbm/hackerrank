#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the migratoryBirds function below.
def migratoryBirds(ar)
  birds = ar.group_by {|v| v}
  most_repeated_birds = birds.sort_by{|key,value| value.length}
  most_repeated_birds.last.first
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = migratoryBirds ar

fptr.write result
fptr.write "\n"

fptr.close()
