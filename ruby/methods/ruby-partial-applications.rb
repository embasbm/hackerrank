require 'pry'

combination = -> (n) do
  -> (k) do
    if k==1
      n
    elsif n >= k && k >= 0
      divisor = (1..n).inject(:*)
      a = (1..k).inject(:*)
      b = n-k
      c = (1..b).inject(:*)
      dividendo = a * b
      divisor / dividendo
    else
      0
    end
  end
end

doubler = combination.(5)

puts doubler.(1)
