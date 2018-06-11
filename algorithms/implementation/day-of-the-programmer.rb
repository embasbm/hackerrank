#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the solve function below.
def solve(year)
  feb_days =
    if year > 1919 # => Gregorian calendar
      if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
        29
      else
        28
      end
    elsif year == 1918
      15
    else # => Julian calendar
      if year % 4 == 0
        29
      else
        28
      end
    end

  year_days = {
    1 => 31,
    2 => feb_days,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31,
  }
  cont = 0
  final_month = 0
  final_day = 0
  year_days.each do |month, days|
    cont+=days
    if cont > 256
      cont-=days
      final_month = month
      final_day = 256 - cont
      break
    end
  end
  "#{'%02d' % final_day}.#{"%02d" % final_month}.#{year}"
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

year = gets.to_i

result = solve year

fptr.write result
fptr.write "\n"

fptr.close()
