require 'pry'

def serial_average(str)
  first = str[4..8].to_f
  last = str[10..-1].to_f
  "#{str[0..3]}#{((first+last)/2).round(2)}"
end
