require 'pry'
def fizzbuzz_classic(m)
  0.upto(m) do |n|
    if n % 3 == 0 && n % 5 == 0
      p 'FizzBuzz'
    elsif n % 3 == 0
      p 'Fizz'
    elsif n % 5 == 0
      p 'Buzz'
    else
      p n
    end
  end

end

n = gets&.rstrip.to_i
fizzbuzz_classic(n)
