#!/bin/ruby

#
# Complete the gradingStudents function below.
#
def gradingStudents(grades)
  new_grades = []
  grades.each do |g|
    next_multiple_of_5 =
      if g%5 == 0
        g+5
      else
        (5 - g%5) + g
      end

    if g >= 38 && next_multiple_of_5 - g < 3
      new_grades << next_multiple_of_5
    else
      new_grades << g
    end
  end
  new_grades
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

grades = Array.new(n)

n.times do |grades_itr|
    grades_item = gets.to_i
    grades[grades_itr] = grades_item
end

result = gradingStudents grades

fp.write result.join "\n"
fp.write "\n"

fp.close()
