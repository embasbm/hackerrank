require 'pry'
def mask_article(str, arr)
  arr.each do |occurrence|
    str.gsub!(occurrence, strike(occurrence))
  end
  str
end

def strike(str)
  "<strike>#{str}</strike>"
end

p strike("Meow!")
p strike("Foolan Barik")
p mask_article("Hello World! This is crap!", ["crap"])
