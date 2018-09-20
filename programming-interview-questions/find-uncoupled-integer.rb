require 'pry'
def find_uncoupled_integer(list)
  list.group_by {|v| v}.select {|k,v| v.count == 1}.keys.first
end

mn = gets.rstrip.split(',').map(&:to_i)
p find_uncoupled_integer(mn)
