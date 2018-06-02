require 'pry'
def sum_terms(n)
  (0..n).inject do |sum, n|
    binding.pry
    sum + (n**2 + 1)
  end
end

p sum_terms(10)
