require 'pry'

def process_text(str)
  str.collect {|e| e.strip.chomp }.join(' ')
end

p process_text(["Hi, \n", " Are you having fun?    "])
