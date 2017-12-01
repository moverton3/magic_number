# 4 IS THE MAGIC NUMBER
require 'numbers_in_words'

def numbers
  puts "Welcome to '4 is the magic number!'"
  puts "Input any positive number to play:"
    number = gets.chomp.to_i
    @new_number = NumbersInWords.in_words(number).length
  puts "#{number} is #{NumbersInWords.in_words(@new_number)}"
    if @new_number == 4
      puts "Donzo!"
    else
      repeat
    end
end

def repeat
    repeat_num = NumbersInWords.in_words(@new_number).length
  puts "#{@new_number} is #{NumbersInWords.in_words(repeat_num)}"
    if repeat_num == 4
    puts "Boom! Done."
    else
      @new_number = NumbersInWords.in_words(repeat_num).length
      repeat
    end
end
numbers
