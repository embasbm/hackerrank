#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
  cont = 0
  resp = 'NO'
  loop do
    next_stop_1 = x1+v1*cont
    next_stop_2 = x2+v2*cont

    if cont > 10000 || next_stop_1 == next_stop_2
      resp = 'YES' if next_stop_1 == next_stop_2
      break
    end
    cont+=1
  end
  p resp
end

fptr = File.open('./kangaroo.txt', 'w')

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"

fptr.close()
