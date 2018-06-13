#!/bin/ruby
require 'pry'
#
# Complete the getMoneySpent function below.
#
def getMoneySpent(keyboards, drives, b)
  prices = Hash.new(0)
  keyboards.sort.reverse.each do |most_expensive_keyboard|
    drives.sort.reverse.each do |most_expensive_drive|
      prices[most_expensive_keyboard+most_expensive_drive] = [most_expensive_keyboard, most_expensive_drive]
    end
  end

  prices.keys.sort.reverse.each do |value|
    return value if value <= b
  end
  -1
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

bnm = gets.rstrip.split

b = bnm[0].to_i

n = bnm[1].to_i

m = bnm[2].to_i

keyboards = gets.rstrip.split(' ').map(&:to_i)

drives = gets.rstrip.split(' ').map(&:to_i)

#
# The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
#

moneySpent = getMoneySpent keyboards, drives, b

fptr.write moneySpent
fptr.write "\n"

fptr.close()
