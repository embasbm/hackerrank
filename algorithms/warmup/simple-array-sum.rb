def simpleArraySum(ar)
  ar.sum
end

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

p result
