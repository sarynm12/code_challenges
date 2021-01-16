# Given a deeply nested array, yyour goal is to recreate this functionality by writing a recursive function to accomplish this same thing. For example:
#
#  array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
# => [1, 2, 3, [[4], 5], [[[6]]]]
# ruby_flattener(array_of_ints)
# => [1, 2, 3, 4, 5, 6]
def flatten(ints, arr=[])
  ints.each do |int|
    if int.class != Array
      arr << int
    else
      flatten(int, arr)
    end
  end
  arr
end 

# Our sequence given was supposed to contain all of the integers from 0 to 9 (in no particular order), but one of them seems to be missing.
#
# Write a function that accepts a sequence of unique integers between 0 and 9 (inclusive), and returns the missing element.
def get_missing_element(seq)
  numbers = (0..9).to_a
  result = (numbers - seq).join.to_i
end
# Complete the function that takes a sequence of numbers as single parameter. Your function must return the sum of the even values of this sequence.
#
# Only numbers without decimals like 4 or 4.0 can be even.
#
# The input is a sequence of numbers: integers and/or floats.

def sum_even_numbers(seq)
  seq.select{|num| num % 2 == 0}.sum
end

# return the two oldest/oldest ages within the array of ages passed in.
def two_oldest_ages(ages)
  ages.sort.last(2)
end

# In this Kata, you will be given an array of unique elements, and your task is to rearrange the values so that the first max value is followed by the first minimum, followed by second max value then second min value, etc.
def solve(arr)
  arr = arr.sort
  result = []
  while arr.size > 0
    result << arr.pop
    result << arr.shift
  end

  result.compact
end

def to_time(seconds)
  hours = seconds / 3600
  minutes = (seconds / 60) % 60
  "#{hours} hour(s) and #{minutes} minute(s)"
end
