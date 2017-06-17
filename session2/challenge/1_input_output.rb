# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  print "Enter two integers separated with a space: "
  numbers = gets.chomp.split( )
  numbers.each_index { |i| numbers[i] = numbers[i].to_i }
  puts (numbers[0] + numbers[1]).to_s
  puts (numbers[0] - numbers[1]).to_s
  puts (numbers[0] * numbers[1]).to_s
end
