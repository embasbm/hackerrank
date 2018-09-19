def mth_to_last(m, *list)
  return 'NIL'.to_sym if m>list.count
  list.reverse[m-1]
end

m = gets.to_i
list = gets.rstrip.split(' ').map(&:to_i)

p mth_to_last(m, list)
