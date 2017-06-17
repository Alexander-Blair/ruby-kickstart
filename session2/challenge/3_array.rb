# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    arr = ""
    self.each_char.with_index { |char, i| arr << char if i.even? }
    arr
  end
end
