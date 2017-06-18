# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    #print_song
    end
  end

  def print_song
    @bottles.times do |index|
      print_verse(@bottles - index)
    end
  end

  def print_verse(n)
    puts "#{convert_n(n)} #{bottles(n)} of beer on the wall,"
    puts "#{convert_n(n)} #{bottles(n)} of beer,"
    puts "Take one down, pass it around,"
    puts "#{convert_n(n - 1)} #{bottles(n - 1)} of beer on the wall."

  end

  def bottles(n)
    if n == 1
      return 'bottle'
    else
      return 'bottles'
    end
  end

  def convert_n(num)
    if num >= 20
      if num < 30
        new_num = 'twenty'
      elsif num < 40
        new_num = 'thirty'
      elsif num < 50
        new_num = 'forty'
      elsif num < 60
        new_num = 'fifty'
      elsif num < 70
        new_num = 'sixty'
      elsif num < 80
        new_num = 'seventy'
      elsif num < 90
        new_num = 'eighty'
      else
        new_num = 'ninety'
      end
      num = num.to_s[1].to_i
      new_num << '-' if num != 0
    elsif num >= 10 && num < 20
      new_num = 'ten' if num == 10
      new_num = 'eleven' if num == 11
      new_num = 'twelve' if num == 12
      new_num = 'thirteen' if num == 13
      new_num = 'fourteen' if num == 14
      new_num = 'fifteen' if num == 15
      new_num = 'sixteen' if num == 16
      new_num = 'seventeen' if num == 17
      new_num = 'eighteen' if num == 18
      new_num = 'nineteen' if num == 19
    elsif num == 0
      new_num = 'zero'
    else
      new_num = ''
    end

    new_num << 'one' if num == 1
    new_num << 'two' if num == 2
    new_num << 'three' if num == 3
    new_num << 'four' if num == 4
    new_num << 'five' if num == 5
    new_num << 'six' if num == 6
    new_num << 'seven' if num == 7
    new_num << 'eight' if num == 8
    new_num << 'nine' if num == 9

    new_num.capitalize
  end

end
