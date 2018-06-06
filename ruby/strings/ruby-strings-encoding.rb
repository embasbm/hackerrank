require 'pry'

def transcode(str)
  str.force_encoding(Encoding::UTF_8)
end

p transcode("R\xC3\xA9sum\xC3\xA9")
