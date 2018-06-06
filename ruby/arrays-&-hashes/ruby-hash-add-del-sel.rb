hackerrank = Hash.new(0)
hackerrank.store(543121, 543121)
hackerrank.store(100, 100)
hackerrank.keep_if { |k,v| v.is_a? Integer }
hackerrank.delete_if { |k,v| v%2 == 0 }
