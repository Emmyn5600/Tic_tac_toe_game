#!/usr/bin/env ruby
# puts 'Hello World!'

puts "\nWelcome to the Ruby's Tic Tac Toe game"

puts "\nEnter your player 1 name"
player1 = gets.chomp.capitalize

puts "\nEnter your player 2 name"
player2 = gets.chomp.capitalize

puts "\n#{player1} will play with x and #{player2} will play with o"

puts "\nLet's start the game"
puts "\nChoose the letters between 1 and 9 to place your mark on the board"

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def display_board(board)
  puts "\n #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)

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
