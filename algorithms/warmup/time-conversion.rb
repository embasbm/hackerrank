#!/bin/ruby
require 'pry'
#
# Complete the timeConversion function below.
#
def timeConversion(s)
  meridiem = s.scan(/[A-Z]+/).first
  s.gsub!(/[A-Z]+/, '')
  hour_str = s.scan(/\d\d/).first
  return s if hour_str == '12' && meridiem == 'PM'
  hour_int = hour_str.to_i
  new_hour =
    if meridiem == 'PM'
      (hour_int + 12) % 24
    else
      (hour_int - 12) % 12
    end
  s.gsub(/^\d\d/, new_hour.to_s.rjust(2, '0'))
end

fp = File.open('./time-conversion.txt', 'w')

s = gets.to_s.rstrip

result = timeConversion s

fp.write result
fp.write "\n"

fp.close()
