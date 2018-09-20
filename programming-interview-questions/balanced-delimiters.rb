require 'pry'
def parse_delimiters(delimiters)
  my_array = []
  delimiters.each_char do |c|
    case c
    when '('
      key = 'open-parenthesis'
    when ')'
      key = 'close-parenthesis'
    when '['
      key = 'open-square'
    when ']'
      key = 'close-square'
    when '{'
      key = 'open-curly'
    when '}'
      key = 'close-curly'
    else
      key = 'error'
    end
    my_array << key
  end
  my_array
end

def match?(a, b)
  a.split('-').last == b.split('-').last
rescue
    return false
end

def balanced?(delimiters)
  delimiters_copy = []

  delimiters.each do |c|

    if c.include?('open')
      delimiters_copy << c
    else
      if match?(delimiters_copy.last, c)
        delimiters_copy.pop
      else
        return false
      end
    end
  end

  delimiters_copy.empty? ? 'True' : 'False'
end

delimiters = gets.rstrip
delimiters = parse_delimiters(delimiters)

p balanced?(delimiters)
