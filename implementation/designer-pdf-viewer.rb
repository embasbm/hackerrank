#!/bin/ruby
require 'pry'
require 'json'
require 'stringio'

# Complete the designerPdfViewer function below.
def designerPdfViewer(h, word)
  standar_length = ('a'..'z').to_a
  max = 0
  word.each_char do |c|
    max = h[standar_length.index(c)] if h[standar_length.index(c)] > max
  end
  max * word.size
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

h = gets.rstrip.split(' ').map(&:to_i)

word = gets.to_s.rstrip

result = designerPdfViewer h, word

fptr.write result
fptr.write "\n"

fptr.close()
