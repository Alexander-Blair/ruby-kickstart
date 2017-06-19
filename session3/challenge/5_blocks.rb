# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(arr, &block)
  n = -1
  r = 0
  len = arr[0].length
  increments = [1, len, -1, -len]
  loop do
    4.times do |index|
      repeat = [len - r, arr.length - r] * 2
      (repeat[index]).times do
        n += increments[index]
        block.call arr[n / len ][n % len] if n >= 0
      end
      return if len == r
      r += 1 if index.even?
    end
  end
end

#two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
#order = []
#spiral_access(two_d) { |i| order << i }
#print order
