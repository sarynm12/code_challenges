def to_time(seconds)
  hours = seconds / 3600
  minutes = (seconds / 60) % 60
  "#{hours} hour(s) and #{minutes} minute(s)"
end

# Complete the function that takes a sequence of numbers as single parameter. Your function must return the sum of the even values of this sequence.
#
# Only numbers without decimals like 4 or 4.0 can be even.
#
# The input is a sequence of numbers: integers and/or floats.

def sum_even_numbers(seq)
  seq.select{|num| num % 2 == 0}.sum
end
