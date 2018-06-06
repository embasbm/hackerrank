def count_multibyte_char(str)
  str.each_char.select { |c| c.bytes.count > 1 }.count
end


p count_multibyte_char('¥1000')
