#!/usr/bin/env ruby

require_relative "board.rb"
require_relative "display.rb"

display = Display.new 
puts display.display_name_prompt(1)
player1 = gets.chomp.capitalize
puts display.display_name_prompt(2)

puts "\n#{player1} will play with x and #{player2} will play with o"
puts "\nLet's start the game"
puts "\nChoose the letters between 1 and 9 to place your mark on the board"

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
show_board = Board.new 
show_board.display_board(board)

puts "\n#{player1} Enter a number between 1 and 9"
user_input1 = gets.chomp

case user_input1.to_i
when 1 then puts 'You are the winner!'
when 2 then puts 'It is a tie!'
end

display_board(board)
puts "\n#{player2} Enter a number between 1 and 9"
user_input2 = gets.chomp

case user_input2.to_i
when 1 then puts 'You are the winner!'
when 2 then puts 'It is a tie!'
end
